import assert from 'node:assert/strict';
import {chromium} from 'file:///C:/Users/Alpha/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules/playwright/index.mjs';
const browser=await chromium.launch({headless:true,channel:'msedge'});
try{
 for(const scenario of ['loss','draw','win']){
  const page=await browser.newPage({viewport:{width:1280,height:900}});const errors=[];
  page.on('pageerror',e=>errors.push(e.message));
  page.on('console',m=>{if(/Error #/.test(m.text())&&!m.text().includes('FogDevSocial')){if(!errors.includes(m.text()))errors.push(m.text());}});
  await page.route('**/build/4x4-soccer-bridge.swf',route=>route.fulfill({path:`analysis/ui-fixture-${scenario}.swf`,contentType:'application/x-shockwave-flash'}));
  await page.goto('http://127.0.0.1:8080/?engine=webgl');
  await page.locator('#boot-ui button').waitFor({state:'visible',timeout:45000});await page.locator('#boot-ui button').click();
  await page.locator('#boot-ui').waitFor({state:'hidden',timeout:15000});await page.waitForTimeout(1500);
  await page.mouse.click(420,525);await page.waitForTimeout(750);if(!await page.locator('#team-menu').isVisible())await page.mouse.click(420,525);
  await page.locator('#team-menu .team-confirm').click();
  const rounds=scenario==='win'?4:1;
  for(let round=0;round<rounds;round++){
   await page.locator('#tournament-menu [data-action="next"]').click();await page.waitForTimeout(500);
   await page.locator('#tournament-menu [data-action="next"]').click();
   await page.waitForFunction(()=>document.querySelector('#match-title').textContent==='HALF TIME'&&!document.querySelector('.match-dialog').hidden,{}, {timeout:60000});
   await page.waitForTimeout(700);await page.locator('#match-ui [data-action="next"]').click();
   const title=scenario==='win'?'VICTORY':scenario==='loss'?'YOU LOST':'EXTRA TIME';
   await page.waitForFunction(t=>document.querySelector('#match-title').textContent===t&&!document.querySelector('.match-dialog').hidden,title,{timeout:60000});
   await page.waitForTimeout(1200);await page.screenshot({path:`analysis/ui-${scenario}-check.png`});
   console.log(scenario,round,await page.locator('#match-ui').innerText());
   if(scenario==='loss'){
    assert(await page.locator('#match-ui [data-action="retry"]').isVisible());assert(await page.locator('#match-ui [data-action="back"]').isVisible());assert(await page.locator('#match-ui [data-action="next"]').isHidden());
    await page.locator('#match-ui [data-action="retry"]').click();await page.waitForFunction(()=>document.querySelector('#match-ui').dataset.screen==='hud');console.log('PASS loss retry');
   }else{
    assert(await page.locator('#match-ui [data-action="retry"]').isHidden());await page.locator('#match-ui [data-action="next"]').click();
    if(scenario==='draw'){await page.waitForFunction(()=>document.querySelector('#match-ui').dataset.screen==='hud');console.log('PASS extra time continuation');}
   }
  }
  if(scenario==='win'){
   await page.waitForFunction(()=>document.querySelector('#match-ui').dataset.screen==='final',{}, {timeout:15000});await page.waitForTimeout(1500);
   await page.screenshot({path:'analysis/ui-champion-check.png'});
   console.log('CHAMPION',await page.locator('#match-ui').innerText());
   await page.locator('#fullscreen').click();await page.waitForTimeout(700);await page.screenshot({path:'analysis/ui-champion-fullscreen.png'});
   await page.locator('#match-ui [data-action="back"]').click();await page.waitForTimeout(1000);assert(await page.locator('#match-ui').isHidden());
   console.log('PASS championship and back');
  }
  assert.deepEqual(errors,[],`${scenario}: no game runtime errors`);await page.close();
 }
 console.log('PASS all native result states (accelerated test copies only)');
}finally{await browser.close();}
