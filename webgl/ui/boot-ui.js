const boot=document.querySelector('#boot-ui')||document.createElement('section');boot.id='boot-ui';boot.setAttribute('aria-label','Loading 4x4 Football');if(!boot.firstElementChild)boot.innerHTML=`<div class="boot-card"><img class="boot-logo" src="/webgl/ui/boot-logo.svg?v=clean-edge-2" alt="4x4 Football"><div class="boot-track" role="progressbar" aria-label="Loading game" aria-valuemin="0" aria-valuemax="100"><i></i></div><strong class="boot-status">LOADING GAME</strong></div>`;if(!boot.isConnected)document.querySelector('#game').append(boot);
const bar=boot.querySelector('.boot-track'),fill=bar.querySelector('i'),status=boot.querySelector('.boot-status');
let starting=false;
const intro=new Audio('/webgl/ui/audio/fog-intro.mp3');
intro.preload='auto';intro.loop=false;
const logo=boot.querySelector('.boot-logo');
logo.style.opacity='0';
let introAnimated=false;
function thumpLogo(){
 if(introAnimated)return;
 introAnimated=true;logo.style.opacity='1';
 if(matchMedia('(prefers-reduced-motion: reduce)').matches)return;
 logo.animate([
  {opacity:0,transform:'translateY(-70px) scale(1.45)',filter:'blur(5px) drop-shadow(0 8px 15px #0008)',offset:0},
  {opacity:1,transform:'translateY(5px) scale(.94)',filter:'blur(0) drop-shadow(0 0 24px #d6ff9277)',offset:.55},
  {opacity:1,transform:'translateY(-3px) scale(1.025)',offset:.76},
  {opacity:1,transform:'translateY(0) scale(1)',filter:'drop-shadow(0 8px 15px #0008)',offset:1}
 ],{duration:650,easing:'cubic-bezier(.16,.8,.3,1)',fill:'both'});
}
// Automatic attempt only; never replay on clicks or key presses.
intro.addEventListener('playing',thumpLogo,{once:true});
logo.decode().catch(()=>{}).then(()=>intro.play()).catch(error=>{
 thumpLogo();
 if(error.name!=='NotAllowedError')console.warn('Preloader audio unavailable',error);
});
window.soccerBoot={update(percent){const value=Math.max(0,Math.min(100,Math.round(percent)));bar.setAttribute('aria-valuenow',value);fill.style.width=`${value}%`;status.textContent=value===100?'STARTING GAME':`LOADING GAME · ${value}%`;if(value===100&&!starting){starting=true;setTimeout(()=>{try{document.querySelector('ruffle-player').ruffle().callExternalInterface('soccerBootContinue');}catch(error){starting=false;console.error('Automatic start failed',error);}},0);}return true;},hide(){boot.hidden=true;}};

