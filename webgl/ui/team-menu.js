import {teams} from './teams.js';
const menu=document.createElement('section');menu.id='team-menu';menu.hidden=true;menu.setAttribute('aria-label','Select your team');
menu.innerHTML=`<h2 class="team-heading">SELECT YOUR TEAM</h2><span class="team-kicker">4X4 / FOOTBALL</span><div class="team-grid" role="group" aria-label="Countries"></div><section class="team-profile"><p class="team-eyebrow">VEHICLE PROFILE</p><h3 class="team-name" aria-live="polite">Argentina</h3>${[['Speed',3],['Acceleration',2],['Handling',3]].map(([label,value])=>`<div class="stat-row"><div class="stat-label"><span>${label}</span><small>${value} / 3</small></div><div class="stat-track"><div class="stat-fill" style="width:${value/3*100}%"></div></div></div>`).join('')}<p class="team-note">Original vehicle ratings · same setup for every team.</p></section><div class="vehicle-caption">4X4 SUV / MATCH READY</div><button class="team-nav team-back">← BACK TO MENU</button><button class="team-more">Play more driving games</button><button class="team-nav team-confirm">CONFIRM TEAM →</button>`;
document.querySelector('#game').append(menu);
const grid=menu.querySelector('.team-grid');
function selected(index){
 menu.querySelector('.team-name').textContent=teams[index][0];
 [...grid.children].forEach((button,i)=>button.setAttribute('aria-pressed',String(i===index)));
}
function action(name,index=0){
 try{return document.querySelector('ruffle-player').ruffle().callExternalInterface('soccerTeamAction',name,index)===true;}
 catch(error){console.error('Team menu action failed',error);return false;}
}
for(const [index,[name,code]] of teams.entries()){
 const button=document.createElement('button');button.className='flag-card';button.type='button';button.setAttribute('aria-label',name);button.setAttribute('aria-pressed','false');
 button.innerHTML=`<img src="/webgl/ui/flags/${code}.svg" alt="" draggable="false"><span>${name}</span>`;
 button.addEventListener('click',()=>{if(action('select',index))selected(index);});grid.append(button);
}
for(const [selector,name] of [['.team-back','back'],['.team-confirm','confirm'],['.team-more','more']]){
 menu.querySelector(selector).addEventListener('click',()=>{if(action(name)&&name!=='more')menu.hidden=true;});
}
window.soccerTeams={show(index=0){selected(index);menu.hidden=false;return true;}};
