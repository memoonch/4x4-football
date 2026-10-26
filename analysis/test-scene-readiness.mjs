import assert from 'node:assert/strict';
import {readFile} from 'node:fs/promises';
import vm from 'node:vm';

// Exercise the actual renderer's asynchronous scene protocol without a GPU.
let frame,resolveTexture,loads=0,draws=0,uploads=0,geometries=0,materialCount=0,disposedGeometry=0;
const snapshots=[];
const textures=[];
class Transform {
  fromArray(value){this.values=[...value];return this;} set(){return this;} lerp(){return this;} slerp(){return this;}
  makeScale(){return this;} multiply(){return this;} decompose(){return this;}
}
class Group {
  constructor(){this.children=[];this.position=new Transform();this.rotation=new Transform();this.scale=new Transform();}
  add(child){this.children.push(child);} traverse(fn){fn(this);for(const child of this.children)child.traverse(fn);}
}
class Mesh extends Group {constructor(geometry,material){super();this.geometry=geometry;this.material=material;}}
class Geometry {constructor(){geometries++;} setAttribute(){} computeBoundingSphere(){} dispose(){disposedGeometry++;}}
class Material {constructor(options){materialCount++;Object.assign(this,options);this.userData={};} dispose(){}}
class Camera extends Group {constructor(){super();this.quaternion=new Transform();} updateProjectionMatrix(){}}
const renderer={domElement:{},capabilities:{getMaxAnisotropy:()=>8},info:{render:{calls:1,triangles:1}},
  setSize(){},setPixelRatio(){},setClearColor(){},initTexture(){uploads++;},
  render(scene){
    scene.traverse(object=>{if(object.material)assert.ok(object.material.map,'A textured mesh was drawn white');});
    snapshots.push(scene.children[0]);draws++;
  }};
const THREE={WebGLRenderer:class {constructor(){return renderer;}},Scene:Group,Group,Mesh,
  PerspectiveCamera:Camera,Matrix4:Transform,Vector3:Transform,Quaternion:Transform,
  BufferGeometry:Geometry,Float32BufferAttribute:class {},MeshBasicMaterial:Material,
  TextureLoader:class {loadAsync(){loads++;return new Promise(resolve=>{resolveTexture=resolve;});}},
  MathUtils:{radToDeg:x=>x*180/Math.PI}};
const elements=new Map();
const created=[];
const element=()=>{const node={append(){},prepend(){},hidden:false};created.push(node);return node;};
const context=vm.createContext({THREE,console:{log:console.log,error(){}},performance,devicePixelRatio:1,window:{},
  document:{querySelector(selector){if(!elements.has(selector))elements.set(selector,element());return elements.get(selector);},createElement:element},
  fetch:async()=>({json:async()=>({ballTexture:'/original.png'})}),requestAnimationFrame:callback=>{frame=callback;}});
const source=(await readFile(new URL('../webgl/renderer.js',import.meta.url),'utf8')).replace(/^import [^\n]*\n/,'');
await vm.runInContext(`(async()=>{${source}})()`,context);
const receive=context.window.soccerBridge.receive;
const screen=created.find(node=>node.id==='game-loading');
assert.ok(screen,'Simple loading screen must exist');
assert.equal(screen.hidden,true);
context.window.soccerBridge.loading(true);
assert.equal(screen.hidden,false,'AS loading gate shows the overlay');
const camera={matrix:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],fov:1,near:.1,far:20000};
const definition={id:1,imageClass:'ballTexture',width:4,height:4};
const node={id:1,parent:0,parts:[{material:1,position:[0,0,0,1,0,0,0,1,0],uv:[0,0,1,0,0,1]}]};
const update={id:1,state:[0,0,0,0,0,0,1,1,1,true,1]};
const packet=(reset,complete,nodes=[],materials=[])=>({reset,complete,nodes,materials,updates:[update],camera,sceneKey:'stadium1:argentina:mexico'});
let clock=performance.now()+1000;
const tick=()=>frame(clock+=40);
const flush=()=>new Promise(resolve=>setImmediate(resolve));
assert.equal(receive(packet(true,false,[node],[definition])),1,'Initial export keeps the original renderer active');
tick();assert.equal(draws,0,'Incomplete native geometry must not be presented');
assert.equal(receive(packet(false,true)),1);tick();assert.equal(draws,0,'Original renderer remains until native textures are ready');
const texture={dispose(){this.disposed=true;}};textures.push(texture);resolveTexture(texture);await flush();
assert.equal(receive(packet(false,true)),1,'Keep Flash visible until the first native frame is actually drawn');
tick();assert.equal(draws,1);assert.equal(uploads,1);
assert.equal(receive(packet(false,true)),2,'Presented native frame permits handoff');
assert.equal(screen.hidden,false,'GPU readiness alone must not hide the screen before gameplay resumes');
context.window.soccerBridge.loading(false);assert.equal(screen.hidden,true);
const retained=snapshots.at(-1),before={geometries,materialCount,uploads,loads};
const resetPacket={...packet(false,true),reuse:true,snap:true,
  updates:[{id:1,state:[100,200,0,0,0,0,1,1,1,true,1]}]};
assert.equal(receive(resetPacket),2,'A matching goal reset stays ready immediately');
tick();assert.equal(snapshots.at(-1),retained,'Goal reset must retain the exact GPU scene object');
assert.deepEqual(retained.position.values.slice(0,2),[100,200],'Positions must snap to kickoff, without interpolation from the goal');
assert.deepEqual({geometries,materialCount,uploads,loads},before,'Goal reset must allocate or upload nothing');
assert.equal(disposedGeometry,0);assert.equal(texture.disposed,undefined);
for(let goal=0;goal<50;goal++){
  assert.equal(receive(resetPacket),2);tick();
  assert.equal(snapshots.at(-1),retained);
}
assert.deepEqual({geometries,materialCount,uploads,loads},before,'Repeated goals must not grow GPU resources');
assert.equal(receive({...resetPacket,sceneKey:'stadium1:argentina:france'}),0,'A different team pairing cannot reuse stale materials');
assert.equal(receive({...packet(true,true,[node],[definition]),sceneKey:'stadium1:argentina:france'}),1);
await flush();tick();assert.equal(geometries,before.geometries+1,'New match must build its new scene');
assert.equal(disposedGeometry,1);assert.equal(loads,1,'Original texture remains cached across matches');
assert.equal(screen.hidden,true,'Retained resets do not add unnecessary loading screens');
console.log('PASS: original-renderer startup handoff; transform-only goal reset retains exact GPU objects, snaps positions, uploads nothing; new team scene rebuilds; loading screen remains until the AS kickoff gate releases it.');
