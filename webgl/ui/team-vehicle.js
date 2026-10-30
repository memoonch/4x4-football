import * as THREE from '/vendor/three/build/three.module.js';
const colors=[65535,16776960,16777215,16777215,255,0,255,255,16742144,255,65280,16742144,16711680,16711680,16711680,255];
export function teamVehicle(host){
 const renderer=new THREE.WebGLRenderer({alpha:true,antialias:true});
 // Keep GPU resolution independent of the responsive CSS display size.
 renderer.setClearColor(0,0);renderer.setPixelRatio(1);renderer.setSize(640,640,false);
 const canvas=renderer.domElement;canvas.className='team-vehicle';canvas.setAttribute('aria-label','Selected team vehicle');host.prepend(canvas);
 const scene=new THREE.Scene(),camera=new THREE.OrthographicCamera(-1,1,1,-1,.1,10);camera.position.z=1;
 const uniforms={image:{value:null},paint:{value:new THREE.Vector3(0,1,1)}};
 const material=new THREE.ShaderMaterial({transparent:true,uniforms,
 vertexShader:'varying vec2 tex; void main(){tex=uv;gl_Position=projectionMatrix*modelViewMatrix*vec4(position,1.0);}',
 fragmentShader:`uniform sampler2D image;uniform vec3 paint;varying vec2 tex;
 void main(){vec4 c=texture2D(image,tex);float py=1.0-tex.y;
 float lo=min(c.r,min(c.g,c.b)),hi=max(c.r,max(c.g,c.b));
 float mask=(py<=.57 && !(py>.46 && tex.x>.16 && tex.x<.84) && hi-lo<=35.0/255.0)?clamp((lo-65.0/255.0)/(100.0/255.0),0.0,1.0):0.0;
 c.rgb*=vec3(1.0)-mask*.8*(vec3(1.0)-paint);gl_FragColor=c;}`});
 scene.add(new THREE.Mesh(new THREE.PlaneGeometry(2,2),material));
 let ready=false;
 const draw=()=>{if(ready)renderer.render(scene,camera);};
 new THREE.TextureLoader().load('/webgl/ui/vehicle-hd.png',texture=>{
  // Shader intentionally reproduces the UI sprite's sRGB tint operation.
  uniforms.image.value=texture;ready=true;draw();
 },undefined,error=>console.error('Team vehicle artwork failed',error));
 canvas.addEventListener('webglcontextlost',e=>{e.preventDefault();ready=false;});
 canvas.addEventListener('webglcontextrestored',()=>{ready=true;draw();});
 return index=>{const color=colors[index]??65535;uniforms.paint.value.set((color>>16&255)/255,(color>>8&255)/255,(color&255)/255);draw();};
}
