import {roundNames,tournamentView} from './tournament-data.js';
import {teamVehicle} from './team-vehicle.js';
const root=document.createElement('section');root.id='tournament-menu';root.hidden=true;
root.innerHTML='<div class="tournament-content"></div><nav class="tournament-nav"><button data-action="back" class="broadcast-button back">← BACK TO MENU</button><button data-action="more" class="tournament-more">Play more driving games</button><button data-action="next" class="broadcast-button next">NEXT MATCH →</button></nav>';
document.querySelector('#game').append(root);
const content=root.querySelector('.tournament-content');
const vehicleTints=[teamVehicle(root),teamVehicle(root)];
root.querySelectorAll('.team-vehicle').forEach((canvas,i)=>{
 canvas.classList.add(`preview-car-${1-i}`);canvas.hidden=true;canvas.style.display='none';
});
const asset=new Image();asset.src='/webgl/ui/match-tunnel.png';
let current=null;
function row(entry,player,winner=false){
 if(!entry)return '<div class="bracket-team undecided"><span class="tbd-mark">—</span><span>TBD</span><b>–</b></div>';
 return `<div class="bracket-team ${entry.team===player?'player-team':''} ${winner?'winner':''}"><img src="/webgl/ui/flags/${entry.code}.svg" alt=""><span>${entry.name}</span><b>${entry.score??'–'}</b></div>`;
}
function cup(view){
 let connections='';
 for(let r=0;r<3;r++){
  const n=8>>r,from=r*26+22,to=(r+1)*26,mid=(from+to)/2;
  for(let i=0;i<n;i++){
   const y=(i+.5)*100/n,nextY=(Math.floor(i/2)+.5)*100/(n/2);
   connections+=`<path d="M ${from} ${y} H ${mid} V ${nextY} H ${to}"/>`;
  }
 }
 const columns=view.matches.map((matches,r)=>`<section class="bracket-column" aria-label="${roundNames[r]}" style="left:${r*26}%"><h3 class="${view.round===r?'current-round':''}">${roundNames[r]}</h3>${matches.map((match,i)=>`<article class="bracket-match ${match.upcoming?'upcoming':''}" style="top:${(i+.5)*100/matches.length}%" aria-label="${match.pair.map(entry=>entry?.name??'TBD').join(' versus ')}${match.upcoming?', upcoming match':''}">${match.pair.map((entry,index)=>row(entry,view.player,match.complete&&entry.score>match.pair[1-index].score)).join('')}</article>`).join('')}</section>`).join('');
 const opponents=view.next.map(entry=>entry?.name??'TBD').join(' vs ');
 return `<header class="tournament-heading"><p>INTERNATIONAL CUP</p><h2>ROAD TO THE FINAL</h2><span class="round-badge">${roundNames[view.round]}</span></header><div class="bracket"><svg class="bracket-lines" viewBox="0 0 100 100" preserveAspectRatio="none" aria-hidden="true">${connections}</svg>${columns}</div><div class="bracket-legend"><span><i></i> YOUR TEAM</span><span class="upcoming-copy">UP NEXT · ${opponents}</span></div>`;
}
function match(view){
 return `<header class="tournament-heading match-heading"><p>INTERNATIONAL CUP / ${roundNames[view.round]}</p><h2>NEXT MATCH</h2></header>${view.next.map((entry,index)=>`<section class="match-team match-team-${index}"><p class="match-side">${index===0?'YOUR TEAM':'OPPONENT'}</p><div class="match-identity"><img src="/webgl/ui/flags/${entry.code}.svg" alt=""><h3>${entry.name}</h3></div><span class="match-team-rule"></span></section>`).join('')}<div class="match-vs" aria-label="versus">VS</div><p class="match-stage-label">${roundNames[view.round]}</p>`;
}
root.querySelectorAll('[data-action]').forEach(button=>button.addEventListener('click',async()=>{
 if(!current)return;
 const action=button.dataset.action;
 button.disabled=true;
 const startingMatch=action==='next'&&current.kind==='match'&&!!window.soccerBridge;
 if(startingMatch){
  window.soccerBridge.loading(true);
  // Let the cover paint before native match setup blocks the browser thread.
  await new Promise(resolve=>requestAnimationFrame(()=>setTimeout(resolve,0)));
 }
 try{
  const ok=document.querySelector('ruffle-player').ruffle().callExternalInterface('soccerTournamentAction',action);
  if(ok!==true){if(startingMatch)window.soccerBridge.loading(false);console.warn('Tournament action was not accepted:',action);}
 }catch(error){if(startingMatch)window.soccerBridge.loading(false);console.error('Tournament action failed:',error);}
 finally{button.disabled=false;}
}));
window.soccerTournament={
 show(packet){
  try{
   const view=tournamentView(packet);
   if(view.kind==='match'&&view.next.some(entry=>!entry))return false;
   content.innerHTML=view.kind==='cup'?cup(view):match(view);
   current=view;root.dataset.screen=view.kind;
   root.querySelectorAll('.team-vehicle').forEach(canvas=>{
    canvas.hidden=view.kind!=='match';canvas.style.display=view.kind==='match'?'block':'none';
   });
   if(view.kind==='match')view.next.forEach((entry,i)=>vehicleTints[i](entry.team));
   root.setAttribute('aria-label',view.kind==='cup'?'International cup chart':'Next match');
   root.querySelector('.next').textContent=view.kind==='cup'?'NEXT MATCH →':'START MATCH →';
   root.querySelector('.next').disabled=false;root.hidden=false;return true;
  }catch(error){console.error('Tournament UI failed:',error);return false;}
 },
 hide(){root.hidden=true;current=null;}
};


