import {teams} from './teams.js';
const root=document.createElement('section');root.id='match-ui';root.hidden=true;root.setAttribute('aria-label','Match interface');
root.innerHTML=`<div class="live-hud"><div class="live-score"><span class="home"></span><strong class="score"></strong><span class="away"></span><small class="period"></small><small class="clock"></small></div><div class="live-actions"><button data-action="pause" aria-label="Pause game">Ⅱ</button><button data-action="mute" aria-label="Mute sound"><svg viewBox="0 0 24 24" aria-hidden="true"><path d="M3 9h4l5-4v14l-5-4H3z"/><path class="sound-waves" d="M16 8q5 4 0 8M19 4q9 8 0 16"/></svg></button></div><div class="drive-help">WASD / ARROWS · DRIVE</div><div class="pitch-map" aria-label="Live pitch minimap"><svg viewBox="0 0 160 100" role="img"><title>Live positions: green your team, orange opponents, white ball</title><rect class="pitch-surface" x="0" y="0" width="160" height="100" rx="3"/><g class="pitch-lines"><path d="M8 8H152V92H8Z M80 8V92 M8 28H30V72H8 M152 28H130V72H152 M8 39H18V61H8 M152 39H142V61H152"/><circle cx="80" cy="50" r="13"/></g><g class="pitch-dots"></g></svg><span><i></i> YOUR TEAM <i></i> OPPONENT</span></div></div><div class="event-banner" hidden><span class="banner-label"></span><span class="kickoff-progress" hidden><i></i></span></div><div class="match-dialog" hidden role="dialog" aria-modal="true" aria-labelledby="match-title"><div class="dialog-panel"><p class="eyebrow">4X4 FOOTBALL / INTERNATIONAL CUP</p><h2 id="match-title"></h2><div class="result-teams"></div><p class="result-totals"></p><nav><button data-action="resume" class="primary">RESUME MATCH →</button><button data-action="next" class="primary">CONTINUE →</button><button data-action="retry">RESTART MATCH</button><button data-action="back">BACK TO MENU</button></nav><button data-action="more" class="more">Play more driving games</button></div></div>`;
document.querySelector('#game').append(root);
const $=s=>root.querySelector(s), nodes=Object.fromEntries(['.live-hud','.home','.away','.score','.clock','.event-banner','.match-dialog','h2','.result-teams','.result-totals','.pitch-dots'].map(s=>[s,$(s)]));
let last={},dialogKey='',goalSide='home';const dots=[];
function team(id){const t=teams[id];return t?{name:t[0],code:t[1]}:{name:'TEAM',code:'ar'};}
function badge(id){const t=team(id);return `<img src="/webgl/ui/flags/${t.code}.svg" alt=""><span>${t.name}</span>`;}
root.addEventListener('click',e=>{
 const button=e.target.closest('[data-action]');if(!button||button.disabled)return;
 button.disabled=true;
 try{document.querySelector('ruffle-player').ruffle().callExternalInterface('soccerMatchAction',button.dataset.action);document.querySelector('ruffle-player').focus();}
 catch(error){console.error('Match action failed',error);}
 finally{button.disabled=false;}
});
function renderMap(points){
 while(dots.length<points.length){const dot=document.createElementNS('http://www.w3.org/2000/svg','circle');nodes['.pitch-dots'].append(dot);dots.push(dot);}
 dots.forEach((dot,i)=>{const point=points[i];dot.style.display=point?'':'none';if(!point)return;
  dot.setAttribute('cx',8+Math.min(100,Math.max(0,point.x))*1.44);dot.setAttribute('cy',8+Math.min(100,Math.max(0,point.y))*.84);
  dot.setAttribute('r',point.driver?'3.5':point.side===2?'2.4':'2.8');dot.setAttribute('fill',point.side===2?'#fff':point.side===0?'#00ff66':'#ff650a');dot.setAttribute('stroke',point.driver?'#fff':'#111');
 });
}
window.soccerMatch={ready(){window.soccerBoot?.hide();return true;},update(p){
 root.hidden=!p.hud&&!p.kind&&!p.banner;root.dataset.screen=p.kind||'hud';root.dataset.result=p.title;
 nodes['.live-hud'].hidden=!p.hud||!!p.kind;
 if(p.home!==last.home)nodes['.home'].innerHTML=badge(p.home);
 if(p.away!==last.away)nodes['.away'].innerHTML=badge(p.away);
 if(p.score0!==last.score0||p.score1!==last.score1)nodes['.score'].textContent=`${p.score0} — ${p.score1}`;
 if(p.time!==last.time)nodes['.clock'].textContent=p.time;
 if(p.period!==last.period) $('.live-score .period').textContent=(p.period||'').replace('FIRST HALF','1ST HALF').replace('SECOND HALF','2ND HALF');
 const mute=$('[data-action="mute"]');mute.setAttribute('aria-label',p.muted?'Unmute sound':'Mute sound');mute.setAttribute('aria-pressed',String(p.muted));
 // Keep the scoring side throughout the goal animation, including kickoff score resets.
 if(p.home===last.home && p.away===last.away && !p.kind){
  if(Number(p.score1)>Number(last.score1))goalSide='away';
  else if(Number(p.score0)>Number(last.score0))goalSide='home';
 }
 root.dataset.bannerTone=p.banner==='FULL TIME'||(p.banner==='GOAL!'&&goalSide==='away')?'negative':'positive';
 const banner=p.banner||p.countdown||'';nodes['.event-banner'].hidden=!banner||!!p.kind; $('.banner-label').textContent=banner==='FULL TIME'?'DEFEAT':banner;
 $('.kickoff-progress').hidden=!p.countdown||!!p.banner;
 $('.kickoff-progress i').style.width=`${Math.max(0,Math.min(1,p.countdownProgress||0))*100}%`;
 if(banner&&banner!==(last.banner||last.countdown||'')&&!matchMedia('(prefers-reduced-motion: reduce)').matches)nodes['.event-banner'].animate([{opacity:0,transform:'scale(.94)'},{opacity:1,transform:'scale(1)'}],{duration:180,easing:'ease-out'});
 nodes['.match-dialog'].hidden=!p.kind;
 const key=JSON.stringify([p.kind,p.title,p.home,p.away,p.score0,p.score1,p.totals,p.next,p.retry,p.back]);
 if(p.kind&&key!==dialogKey){
  nodes.h2.textContent=p.title;
  nodes['.result-teams'].hidden=p.kind==='pause';
  nodes['.result-teams'].innerHTML=p.kind==='final'?`<div class="champion-team">${badge(p.home)}</div><span class="champion-star" aria-hidden="true">★</span>`:`<div>${badge(p.home)}</div><strong>${p.score0} <i>:</i> ${p.score1}</strong><div>${badge(p.away)}</div>`;
  nodes['.result-totals'].textContent=p.kind==='pause'?'Take a breather. The match is paused.':p.totals||(p.title==='HALF TIME'?'GET READY FOR THE SECOND HALF':p.title==='EXTRA TIME'?'ALL SQUARE / THE MATCH CONTINUES':p.title==='VICTORY'?'ONE STEP CLOSER TO THE CUP':'REGROUP AND GO AGAIN');
  for(const action of ['next','retry','back'])$(`[data-action="${action}"]`).hidden=!p[action];
  $('[data-action="resume"]').hidden=p.kind!=='pause';
  $('[data-action="next"]').textContent=p.title==='HALF TIME'?'SECOND HALF →':p.title==='EXTRA TIME'?'PLAY EXTRA TIME →':'CONTINUE →';
  dialogKey=key;
 }
 if(p.hud&&!p.kind)renderMap(p.map||[]);
 last=p;return true;
}};





