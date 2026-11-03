const fs=require('node:fs/promises'),path=require('node:path');
const sharp=require('C:/Users/Alpha/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules/sharp');
const base=path.resolve('release/4x4-football-website');
async function files(dir){let out=[];for(const e of await fs.readdir(dir,{withFileTypes:true})){const p=path.join(dir,e.name);out.push(...(e.isDirectory()?await files(p):[p]));}return out;}
(async()=>{
 const replacements=new Map();
 for(const relative of ['webgl/menu-reference.png','webgl/ui/team-tunnel.png','webgl/ui/match-tunnel.png']){
  const target=relative.replace('.png','.webp');
  await sharp(path.join(base,relative)).resize({width:1600,withoutEnlargement:true}).webp({quality:88,effort:6}).toFile(path.join(base,target));
  replacements.set('/'+relative,'/'+target);
 }
 for(const relative of ['webgl/ui/vehicle-hd.png','webgl/ui/champion-trophy-v4.png']){
  const target=relative.replace('.png','.webp');
  await sharp(path.join(base,relative)).resize({width:1000,withoutEnlargement:true}).webp({quality:93,alphaQuality:100,effort:6}).toFile(path.join(base,target));
  replacements.set('/'+relative,'/'+target);
 }
 await sharp(path.join(base,'webgl/ui/boot-logo.svg'),{density:144}).resize({width:1000}).webp({quality:94,alphaQuality:100,effort:6}).toFile(path.join(base,'webgl/ui/boot-logo.webp'));
 replacements.set('/webgl/ui/boot-logo.svg','/webgl/ui/boot-logo.webp');
 const code=[path.join(base,'index.html'),...(await files(path.join(base,'webgl'))).filter(p=>/\.(js|css)$/.test(p))];
 let combined='';
 for(const file of code){let s=await fs.readFile(file,'utf8');for(const [from,to]of replacements)s=s.split(from).join(to);await fs.writeFile(file,s);combined+=s;}
 // Keep PNG loaders inside the compiled SWF compatible. Browser UI uses WebP.
 const flashAssets=['webgl/menu-reference.png','webgl/ui/team-tunnel.png'];
 for(const relative of flashAssets){const buffer=await sharp(path.join(base,relative)).resize({width:1200,withoutEnlargement:true}).png({compressionLevel:9,palette:true,colours:256,dither:.5}).toBuffer();await fs.writeFile(path.join(base,relative),buffer);}
 const keep=new Set(flashAssets);
 for(const match of combined.matchAll(/\/(webgl\/[^"'`\s)<>?]+)/g)){if(!match[1].includes('${'))keep.add(match[1]);}
 for(const p of await files(path.join(base,'webgl'))){
  const relative=path.relative(base,p).split(path.sep).join('/');
  if(/\.(js|css|json)$/.test(p)||relative.startsWith('webgl/ui/flags/')||relative.startsWith('webgl/ui/fonts/')||relative.startsWith('webgl/ui/audio/'))continue;
  if(!keep.has(relative))await fs.unlink(p);
 }
 console.log('Optimized UI images, logo and legacy loader PNGs; removed unused release artwork.');
})();
