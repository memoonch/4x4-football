import http from 'node:http';
import {createReadStream} from 'node:fs';
import {stat} from 'node:fs/promises';
import path from 'node:path';
import {fileURLToPath} from 'node:url';

const root = path.dirname(fileURLToPath(import.meta.url));
const types = {'.html':'text/html; charset=utf-8','.js':'text/javascript',
  '.wasm':'application/wasm','.swf':'application/x-shockwave-flash','.json':'application/json',
  '.png':'image/png','.jpg':'image/jpeg'};
http.createServer(async (req,res) => {
  try {
    const pathname = decodeURIComponent(new URL(req.url,'http://localhost').pathname);
    const relative = pathname === '/' ? 'index.html' : pathname.slice(1);
    if (!(relative === 'index.html' || relative === '4x4 soccer.swf' || relative === 'build/4x4-soccer.swf' || relative === 'build/4x4-soccer-bridge.swf' || relative.startsWith('vendor/ruffle/') || relative.startsWith('vendor/ruffle-gpu/') || relative.startsWith('vendor/three/build/') || relative.startsWith('webgl/') || relative.startsWith('decompiled/images/'))) {
      res.writeHead(404).end(); return;
    }
    const file = path.resolve(root,relative);
    if (!file.startsWith(root + path.sep)) {res.writeHead(403).end(); return;}
    const info = await stat(file);
    if (!info.isFile()) {res.writeHead(404).end(); return;}
    res.writeHead(200,{'Content-Type':types[path.extname(file)] || 'application/octet-stream',
      'Content-Length':info.size,'Cache-Control':'no-cache'});
    createReadStream(file).pipe(res);
  } catch {res.writeHead(404).end();}
}).listen(8080,'127.0.0.1',() => console.log('4x4 Soccer: http://127.0.0.1:8080'));
