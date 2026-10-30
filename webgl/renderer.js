import * as THREE from '/vendor/three/build/three.module.js';

const host = document.querySelector('#game');
const renderer = new THREE.WebGLRenderer({alpha:true,antialias:true,powerPreference:'high-performance'});
renderer.setSize(670,450);renderer.setPixelRatio(Math.min(Math.max(devicePixelRatio,1.5),2));
renderer.setClearColor(0x000000,0);
renderer.outputColorSpace = THREE.SRGBColorSpace;
renderer.domElement.id='world-webgl';host.prepend(renderer.domElement);
let scene=new THREE.Scene(), camera=new THREE.PerspectiveCamera(), nodes=new Map(), materials=new Map();
let previousCamera=null,currentCamera=null,receivedAt=0,simulationInterval=40,sourceFrames=0;
let active=false,menuOpen=true,lastDraw=0,draws=0,windowStart=performance.now(),intervals=[],lastPresented=0;
const targetFps=30, correction=new THREE.Matrix4().makeScale(1,-1,-1);
const currentCameraMatrix=new THREE.Matrix4(),previousCameraMatrix=new THREE.Matrix4();
const cameraPosition=new THREE.Vector3(),cameraQuaternion=new THREE.Quaternion(),cameraScale=new THREE.Vector3();
const loader=new THREE.TextureLoader();
const assets=await fetch('/webgl/assets.json').then(r=>r.json());
const meter=document.createElement('div');meter.id='webgl-fps';meter.hidden=true;meter.textContent='WebGL: waiting for game…';host.append(meter);
const diagnostics=document.createElement('pre');diagnostics.id='webgl-diagnostics';document.querySelector('details').append(diagnostics);
let lastUpdateCount=0,dynamicCount=0,renderTime=0;
let generation=0,presentedGeneration=-1,pendingTextures=0,sceneComplete=false,sceneKey=null,reusedScenes=0;
const loadingScreen=document.createElement('div');loadingScreen.id='game-loading';
loadingScreen.hidden=true;
loadingScreen.innerHTML='<div role="status" aria-live="polite"><span class="loading-spinner" aria-hidden="true"></span><strong>Loading Match…</strong><span>Preparing models and textures</span></div>';
host.append(loadingScreen);
const textureCache=new Map(),textureBudget=64*1024*1024;
function trimTextureCache(){
  let bytes=0;for(const entry of textureCache.values())bytes+=entry.bytes;
  for(const [key,entry] of textureCache){
    if(bytes<=textureBudget)break;
    if(entry.refs===0&&entry.texture){entry.texture.dispose();textureCache.delete(key);bytes-=entry.bytes;}
  }
}
function updateReadiness(){
  const wasActive=active;
  active=sceneComplete&&pendingTextures===0&&currentCamera!==null;
  meter.hidden=menuOpen||!active;
  if(active&&!wasActive){windowStart=performance.now();draws=sourceFrames=0;intervals=[];lastPresented=0;lastDraw=0;}
  if(!active)meter.textContent='Renderer: original';
}
function reset(){
  scene.traverse(o=>o.geometry?.dispose());
  for(const material of materials.values()){
    const entry=textureCache.get(material.userData.textureKey);if(entry)entry.refs--;
    material.dispose();
  }
  nodes.clear();materials.clear();scene=new THREE.Scene();previousCamera=null;currentCamera=null;
  active=false;
  generation++;pendingTextures=0;sceneComplete=false;trimTextureCache();
  receivedAt=0;lastDraw=0;lastPresented=0;draws=sourceFrames=0;intervals=[];windowStart=performance.now();
}
async function textureFor(def){
  let texture;
  if(def.pixels){
    const compressed=Uint8Array.from(atob(def.pixels),c=>c.charCodeAt(0));
    const raw=new Uint8Array(await new Response(new Blob([compressed]).stream().pipeThrough(new DecompressionStream('deflate'))).arrayBuffer());
    const rgba=new Uint8Array(raw.length);
    for(let i=0;i<raw.length;i+=4){rgba[i]=raw[i+1];rgba[i+1]=raw[i+2];rgba[i+2]=raw[i+3];rgba[i+3]=raw[i];}
    texture=new THREE.DataTexture(rgba,def.width,def.height);texture.needsUpdate=true;
  } else {
    const url=assets[def.imageClass];
    if(!url)throw new Error(`Missing original texture: ${def.imageClass}`);
    texture=await loader.loadAsync(url);
  }
  texture.flipY=false;texture.colorSpace=THREE.SRGBColorSpace;
  texture.anisotropy=Math.min(8,renderer.capabilities.getMaxAnisotropy());
  texture.magFilter=THREE.LinearFilter;texture.minFilter=THREE.LinearMipmapLinearFilter;texture.generateMipmaps=true;
  texture.wrapS=texture.wrapT=def.repeat?THREE.RepeatWrapping:THREE.ClampToEdgeWrapping;
  texture.needsUpdate=true;return texture;
}
function cachedTexture(def){
  const key=def.pixels?JSON.stringify([def.imageClass,def.width,def.height,!!def.repeat,def.pixels]):JSON.stringify([def.imageClass,!!def.repeat]);
  let entry=textureCache.get(key);
  if(!entry){
    entry={refs:0,bytes:(def.width||1)*(def.height||1)*4*4/3,texture:null,promise:null};
    entry.promise=textureFor(def).then(texture=>{
      entry.texture=texture;
      entry.bytes=(texture.image?.width||def.width||1)*(texture.image?.height||def.height||1)*4*4/3;
      renderer.initTexture(texture);trimTextureCache();return texture;
    });
    textureCache.set(key,entry);
  }else{textureCache.delete(key);textureCache.set(key,entry);}
  return {key,entry};
}
// Warm the original world textures while the player is still in the menus.
for(const imageClass of ['skyboxLEFT','skyboxRIGHT','skyboxBACK','skyboxFRONT','skyboxBOTTOM','skyboxTOP',
  'ballTexture','soccer_fieldTexture','concrete','fence1','Blok1Texture','tree','crowd','senka','senka4Ball','netTexture']){
  if(assets[imageClass])cachedTexture({imageClass,repeat:false}).entry.promise.catch(()=>{});
}
function makeMaterial(def){
  const shadow=/senka|shadow/i.test(def.imageClass||'');
  const material=new THREE.MeshBasicMaterial({color:def.color??0xffffff,side:THREE.DoubleSide,
    transparent:shadow||(def.alpha!==undefined&&def.alpha<1),opacity:def.alpha??1,
    depthTest:true,depthWrite:!shadow,alphaTest:shadow?0.001:0.05});
  materials.set(def.id,material);
  if(def.imageClass){
    const {key,entry}=cachedTexture(def);
    entry.refs++;material.userData.textureKey=key;
    const owner=generation;pendingTextures++;
    entry.promise.then(texture=>{
      if(owner!==generation||materials.get(def.id)!==material)return;
      material.map=texture;material.needsUpdate=true;
      pendingTextures--;updateReadiness();
    }).catch(error=>{
      document.querySelector('#status').textContent=error.message;console.error(error);
    });
  }
}
function stateToTransform(object,state){
  object.position.fromArray(state);object.rotation.set(state[3],state[4],state[5],'ZYX');
  object.scale.set(state[6],state[7],state[8]);object.visible=state[9];
}
window.soccerBridge={
  menu(visible){menuOpen=visible;meter.hidden=visible||!active;},
  loading(visible){loadingScreen.hidden=!visible;},
  reportError(message){document.querySelector('#status').textContent='WebGL bridge: '+message;},
  receive(packet){
    try{
      const now=performance.now();
      if(packet.reuse&&(!active||packet.sceneKey!==sceneKey))throw new Error('Retained scene does not match the game');
      if(packet.reset){reset();sceneKey=packet.sceneKey;}
      if(packet.reuse)reusedScenes++;
      if(!packet.reset&&nodes.size===0)throw new Error('Scene upload did not complete; retrying initialization');
      // Unchanged objects must settle at the latest snapshot rather than replaying their last movement.
      for(const node of nodes.values())node.previous=node.current;
      for(const def of packet.materials)makeMaterial(def);
      for(const def of packet.nodes){
        const object=new THREE.Group();object.name=def.name||'';
        for(const part of def.parts){
          const geometry=new THREE.BufferGeometry();
          geometry.setAttribute('position',new THREE.Float32BufferAttribute(part.position,3));
          geometry.setAttribute('uv',new THREE.Float32BufferAttribute(part.uv,2));
          geometry.computeBoundingSphere();
          const material=materials.get(part.material)||new THREE.MeshBasicMaterial({color:0x888888,side:THREE.DoubleSide});
          if(/carBody|Wheel/.test(object.name)&&!material.userData.carFinish){
            material.userData.carFinish=true;
            material.onBeforeCompile=shader=>{
              shader.fragmentShader=shader.fragmentShader.replace('#include <map_fragment>',`#include <map_fragment>
                float carLuma=dot(diffuseColor.rgb,vec3(.2126,.7152,.0722));
                diffuseColor.rgb=mix(vec3(carLuma),diffuseColor.rgb,1.12);
                diffuseColor.rgb=clamp((diffuseColor.rgb-vec3(.18))*1.08+vec3(.18),0.0,1.0);
              `);
            };
            material.customProgramCacheKey=()=> 'car-finish-v1';material.needsUpdate=true;
          }
          const mesh=new THREE.Mesh(geometry,material);object.add(mesh);
        }
        (nodes.get(def.parent)?.object||scene).add(object);
        nodes.set(def.id,{object,previous:null,current:null,interpolated:null});
      }
      for(const update of packet.updates){
        const node=nodes.get(update.id);if(!node)continue;
        node.previous=packet.snap?update.state:(node.current||update.state);node.current=update.state;
        if(!node.interpolated)node.interpolated=update.state.slice();
      }
      previousCamera=packet.snap?packet.camera:(currentCamera||packet.camera);currentCamera=packet.camera;
      if(receivedAt)simulationInterval=Math.max(20,Math.min(100,now-receivedAt));
      receivedAt=now;sourceFrames++;
      sceneComplete=packet.complete===true;updateReadiness();
      lastUpdateCount=packet.updates.length;
      dynamicCount=packet.dynamic??nodes.size;
      // Keep Flash visible until a fully textured native frame has actually been drawn.
      return active&&presentedGeneration===generation?2:1;
    }catch(error){document.querySelector('#status').textContent='WebGL bridge: '+error.message;console.error(error);return 0;}
  }
};
function render(now){
  requestAnimationFrame(render);
  if(!active||now-lastDraw<1000/targetFps-0.5)return;
  const period=1000/targetFps;
  // Advance a deadline explicitly: modulo on an early (rounded) rAF timestamp can replay a slot.
  lastDraw+=period*Math.max(1,Math.floor((now-lastDraw+0.5)/period));
  const t=Math.min(1,(now-receivedAt)/simulationInterval);
  for(const node of nodes.values()){
    if(!node.current)continue;
    // One simulation snapshot of latency allows smooth, speed-preserving display interpolation.
    const state=node.interpolated;
    for(let i=0;i<9;i++){
      let delta=node.current[i]-node.previous[i];
      if(i>=3&&i<=5)delta=Math.atan2(Math.sin(delta),Math.cos(delta));
      state[i]=node.previous[i]+delta*t;
    }
    state[9]=node.current[9];
    stateToTransform(node.object,state);
  }
  const c=currentCamera,p=previousCamera;
  const cm=currentCameraMatrix.fromArray(c.matrix).multiply(correction);
  const pm=previousCameraMatrix.fromArray(p.matrix).multiply(correction);
  pm.decompose(camera.position,camera.quaternion,camera.scale);
  cm.decompose(cameraPosition,cameraQuaternion,cameraScale);
  camera.position.lerp(cameraPosition,t);camera.quaternion.slerp(cameraQuaternion,t);
  camera.fov=THREE.MathUtils.radToDeg(2*Math.atan(Math.tan(c.fov/2)*450/Math.hypot(670,450)));
  camera.aspect=670/450;camera.near=c.near;camera.far=c.far;camera.updateProjectionMatrix();
  const renderStarted=performance.now();
  renderer.render(scene,camera);renderTime+=performance.now()-renderStarted;draws++;
  presentedGeneration=generation;
  if(lastPresented)intervals.push(now-lastPresented);lastPresented=now;
  const elapsed=now-windowStart;
  if(elapsed>=1000){
    intervals.sort((a,b)=>a-b);
    meter.textContent=`WebGL: ${(draws*1000/elapsed).toFixed(1)} / ${targetFps} fps\nSimulation: ${(sourceFrames*1000/elapsed).toFixed(1)} / 25 · p95 ${(intervals[Math.ceil(intervals.length*.95)-1]||0).toFixed(0)} ms`;
    diagnostics.textContent=`Native WebGL · ${nodes.size} objects · ${materials.size} materials\n${renderer.info.render.calls} draws · ${renderer.info.render.triangles} triangles\nCPU render submission: ${(renderTime/Math.max(1,draws)).toFixed(2)} ms/frame\n${dynamicCount} dynamic objects tracked · latest snapshot: ${lastUpdateCount} changed\nGPU resources: ${renderer.info.memory?.geometries??'?'} geometries · ${renderer.info.memory?.textures??'?'} textures\nRetained scene resets: ${reusedScenes}`;
    draws=sourceFrames=0;renderTime=0;intervals=[];windowStart=now;
  }
}
requestAnimationFrame(render);
