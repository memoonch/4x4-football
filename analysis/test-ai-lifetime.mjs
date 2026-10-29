import assert from 'node:assert/strict';
import {readFileSync} from 'node:fs';
import vm from 'node:vm';

// Execute the original and rebuilt AS3 method bodies after removing local type annotations.
// This compares actual AI decisions while counting retained animation objects.
function body(source,name){
  const at=source.indexOf(`function ${name}(`);assert.ok(at>=0,name);
  const start=source.indexOf('{',at);let depth=1,end=start+1;
  for(;depth;end++){if(source[end]==='{')depth++;if(source[end]==='}')depth--;}
  return source.slice(start+1,end-1).replace(/(var\s+\w+)\s*:\s*[\w.*]+/g,'$1');
}
function compile(code){
  let markers=0,tweens=0,seed=17;
  const math=Object.create(Math);math.random=()=>((seed=(seed*16807)%2147483647)/2147483647);
  const context=vm.createContext({Math:math,controlpoint:class{constructor(){markers++;}},
    Tween:class{constructor(){tweens++;}addEventListener(){}},
    None:{easeNone(){}},TweenEvent:{MOTION_FINISH:'finish'}});
  return {run:vm.runInContext(`(function(){${code}})`,context),counts:()=>({markers,tweens})};
}
const original=readFileSync('decompiled/scripts/BoxCar.as','utf8');
const rebuilt=readFileSync('analysis/long-match-check/scripts/BoxCar.as','utf8');
const before=compile(body(original,'computePath')),after=compile(body(rebuilt,'computePath'));
function car(){return {x:12,y:30,rotation:50,reverse:false,reverseCount:0,stuck:0,stuckAccum:0,
  carSpeed:4,prediction:1,wheels:false,PATH:[1,2,3],pathIndex:0,
  chaseObject:{x:100,y:50},goalObject:{x:400,y:150},border:{x:-500,y:-500,width:1000,height:1000},
  chasePoint:{x:0,y:0},parent:{addChild(){}},tweens:[],onMotionFinish(){},
  dist:(a,b)=>Math.hypot(a.x-b.x,a.y-b.y),rad2deg:a=>a*180/Math.PI,
  angle:(a,b)=>Math.atan2(a.y-b.y,a.x-b.x),diffangle(a,b){let v=(a-b)%360;return v>180?v-360:v<-180?v+360:v;}};}
const a=car(),b=car();
for(let i=0;i<45000;i++){
  for(const c of [a,b]){c.x=Math.sin(i*.02)*220;c.rotation=(i*7)%360;c.carSpeed=i%160<60?0:5;}
  before.run.call(a);after.run.call(b);
  for(const key of ['left','right','up','down','reverse','reverseCount','stuck','stuckAccum','pathIndex'])
    assert.equal(b[key],a[key],`${key} at update ${i}`);
}
assert.deepEqual(after.counts(),{markers:0,tweens:0});assert.equal(b.tweens.length,0);
assert.ok(a.tweens.length>10000);
const destroy=body(rebuilt,'destroy');assert.match(destroy,/motorsound\.stop\(\)/);
console.log(`PASS: 45,000 AI updates (30 minutes at 25 Hz), identical decisions; original retained ${a.tweens.length} tweens, rebuilt retained zero and created no display markers. Engine cleanup is present in the rebuilt SWF.`);

const clean=vm.runInNewContext(`(function(list){${body(rebuilt,'cleanFinishedTweens')}})`);
const uiTweens=[];
for(let match=0;match<200;match++){
  uiTweens.push({isPlaying:false},{isPlaying:true});clean(uiTweens);
  assert.equal(uiTweens.length,1);uiTweens[0].isPlaying=false;
}
clean(uiTweens);assert.equal(uiTweens.length,0);
const race=readFileSync('analysis/long-match-check/scripts/race.as','utf8');
let crowdLoops=0,kickoffs=0,removals=0;
const countdown=vm.runInNewContext(`(function(){${body(race,'predFrame')}})`,{
  TextureMaterial:{physicsReady:()=>true},stage:{removeEventListener(){removals++;}},
  Event:{ENTER_FRAME:'frame'},SoundTransform:class{},jeering:class{play(){crowdLoops++;}}});
for(let match=0;match<200;match++){
  const world={WOCARS:{},tempCount:2,continueGame(){kickoffs++;}};
  for(let frame=0;frame<3;frame++)countdown.call(world);
}
assert.equal(crowdLoops,200);assert.equal(kickoffs,200);assert.equal(removals,200);
let engineStops=0,skidStops=0,destroyed=0;
const dispose=vm.runInNewContext(`(function(){${destroy.replace('super.destroy()','this.destroyBody()')}})`,{Event:{SOUND_COMPLETE:'complete'}});
for(let match=0;match<200;match++)for(let car=0;car<4;car++){
  dispose.call({motorsound:{stop(){engineStops++;}},skidfx:{removeEventListener(){},stop(){skidStops++;}},
    soundfx:{stop(){}},destroyBody(){destroyed++;}});
}
assert.equal(engineStops,800);assert.equal(skidStops,800);assert.equal(destroyed,800);
console.log('PASS: 200 simulated match lifecycles; UI tween storage stays bounded, one crowd loop starts per countdown, and all 800 car engine/skid channels are stopped on destruction.');
