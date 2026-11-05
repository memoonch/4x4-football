import {teams} from './teams.js';
export const roundNames=['ROUND OF 16','QUARTERFINALS','SEMIFINALS','FINAL'];
export function tournamentView(packet){
 if(!packet || !['cup','match'].includes(packet.kind) || !Number.isInteger(packet.round) || packet.round<0 || packet.round>3)throw new Error('Invalid tournament screen');
 const rounds=Array.from({length:4},(_,r)=>Array.from({length:16>>r},(_,i)=>{
  const entry=packet.rounds?.[r]?.[i];
  if(!entry || !Number.isInteger(entry.team) || !teams[entry.team])return null;
  return {team:entry.team,name:teams[entry.team][0],code:teams[entry.team][1],score:Number.isInteger(entry.score)&&entry.score>=0?entry.score:null};
 }));
 const matches=rounds.map((entries,r)=>Array.from({length:entries.length/2},(_,i)=>{
  const pair=entries.slice(i*2,i*2+2);
  const complete=pair.every(entry=>entry?.score!==null && entry?.score!==undefined);
  return {pair,complete,upcoming:r===packet.round&&i===0&&!complete};
 }));
 return {kind:packet.kind,round:packet.round,player:packet.player,rounds,matches,next:rounds[packet.round].slice(0,2)};
}
