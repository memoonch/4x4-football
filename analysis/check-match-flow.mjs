import assert from 'node:assert/strict';
import {chromium} from 'file:///C:/Users/Alpha/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules/playwright/index.mjs';
const browser=await chromium.launch({headless:true,channel:'msedge'});
const page=await browser.newPage({viewport:{width:1280,height:900}});
const errors=[];const nativeErrors=new Set();page.on('pageerror',e=>errors.push(e.message));
page.on('console',m=>{if(/Error #|AVM2|panicked|Match.*failed/i.test(m.text())&&!nativeErrors.has(m.text())){nativeErrors.add(m.text());console.log(m.type(),m.text().slice(0,1200));}});
try{
 await page.goto('http://127.0.0.1:8080/?engine=webgl');
 await page.locator('#boot-ui button').waitFor({state:'visible',timeout:45000});
 await page.screenshot({path:'analysis/ui-boot-check.png'});
 await page.locator('#boot-ui button').click();
 await page.locator('#boot-ui').waitFor({state:'hidden',timeout:20000});
 await page.waitForTimeout(2000);
 await page.screenshot({path:'analysis/ui-live-check.png'});
 await page.mouse.click(420,525);await page.waitForTimeout(1500);
 if(!await page.locator('#team-menu').isVisible()){await page.mouse.click(420,525);await page.waitForTimeout(1500);}
 assert(await page.locator('#team-menu').isVisible(),'New Game opens team selection');
 await page.locator('#team-menu .team-confirm').click();await page.waitForTimeout(1000);
 await page.locator('#tournament-menu [data-action="next"]').click();await page.waitForTimeout(1000);
 await page.locator('#tournament-menu [data-action="next"]').click();
 await page.waitForFunction(()=>!document.querySelector('#match-ui').hidden&&document.querySelector('#match-ui').dataset.screen==='hud',{},{timeout:60000});
 await page.waitForTimeout(10000);
 await page.screenshot({path:'analysis/ui-hud-check.png'});
 console.log('HUD',await page.locator('#match-ui').innerText());
 await page.locator('#match-ui [data-action="pause"]').click();
 await page.waitForFunction(()=>document.querySelector('#match-ui').dataset.screen==='pause');
 await page.screenshot({path:'analysis/ui-pause-check.png'});
 const clock=await page.locator('.live-score .clock').textContent();await page.waitForTimeout(1600);
 assert.equal(await page.locator('.live-score .clock').textContent(),clock,'Pause freezes clock');
 await page.locator('#match-ui [data-action="resume"]').click();
 await page.waitForFunction(()=>document.querySelector('#match-ui').dataset.screen==='hud');
 await page.waitForTimeout(1800);assert.notEqual(await page.locator('.live-score .clock').textContent(),clock,'Resume advances clock');
 await page.locator('#match-ui [data-action="mute"]').click();await page.waitForTimeout(300);
 const muted=await page.locator('#match-ui [data-action="mute"]').getAttribute('aria-pressed');
 await page.locator('#match-ui [data-action="mute"]').click();await page.waitForTimeout(300);
 assert.notEqual(await page.locator('#match-ui [data-action="mute"]').getAttribute('aria-pressed'),muted,'Sound toggle');
 await page.locator('#match-ui [data-action="pause"]').click();await page.waitForTimeout(400);
 await page.locator('#match-ui [data-action="retry"]').click();await page.waitForTimeout(5000);
 await page.screenshot({path:'analysis/ui-restart-check.png'});
 assert.equal(await page.locator('#match-ui').getAttribute('data-screen'),'hud','Restart returns to match');
 console.log('PASS: boot, team, bracket, match, HUD, pause clock, resume, sound toggle, restart',errors);
 console.log('Waiting for real halftime');
 await page.waitForFunction(()=>document.querySelector('#match-ui').dataset.screen==='result',{}, {timeout:180000});
 await page.waitForTimeout(1500);await page.screenshot({path:'analysis/ui-halftime-check.png'});
 console.log('RESULT',await page.locator('#match-ui').innerText());
 assert.equal(await page.locator('#match-title').textContent(),'HALF TIME');
 await page.locator('#match-ui [data-action="next"]').click();await page.waitForTimeout(7000);
 assert.equal(await page.locator('#match-ui').getAttribute('data-screen'),'hud');
 console.log('PASS: real halftime -> second half');
 await page.locator('#match-ui [data-action="pause"]').click();await page.waitForTimeout(500);
 await page.locator('#match-ui [data-action="back"]').click();await page.waitForTimeout(1500);
 assert(await page.locator('#match-ui').isHidden(),'Back to menu hides match UI');
 console.log('PASS: back to menu');
}finally{await page.screenshot({path:'analysis/ui-last-check.png'});await browser.close();}


