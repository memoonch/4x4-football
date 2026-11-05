"""Create a static website package; run from the repository root."""
from pathlib import Path
import json, re, shutil, zipfile, subprocess

root = Path(__file__).resolve().parent.parent
output = root / 'release' / '4x4-football-website'
assert output.resolve().is_relative_to((root/'release').resolve())
if output.exists(): shutil.rmtree(output)
output.mkdir(parents=True, exist_ok=True)

def copy(relative):
    source = root / relative
    target = output / relative
    target.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(source, target)

files = ['index.html', 'build/4x4-soccer-bridge.swf', 'build/4x4-soccer.swf']
files += [str(p.relative_to(root)) for p in (root/'webgl').rglob('*') if p.is_file()]
files += [str(p.relative_to(root)) for p in (root/'vendor/ruffle-gpu').iterdir()
          if p.suffix in ('.js', '.wasm') or p.name.startswith('LICENSE')]
files += ['vendor/three/build/three.module.js', 'vendor/three/build/three.core.js', 'vendor/three/LICENSE']
files += [value.lstrip('/') for value in json.loads((root/'webgl/assets.json').read_text()).values()]
for relative in sorted(set(files)):
    copy(relative)

page = (output/'index.html').read_text(encoding='utf-8-sig')
page = page.replace('<title>4x4 Soccer — Local Player</title>', '<title>4x4 Football</title>')
page = page.replace("get('engine') === 'webgl'", "get('engine') !== 'legacy'")
# Only the two supported production engines are packaged.
page = page.replace("new URLSearchParams(location.search).has('original')", 'false')
(output/'index.html').write_text(page, encoding='utf-8')
match = output/'webgl/ui/match-ui.js'
source = match.read_text(encoding='utf-8-sig')
source = source.split('// Temporary visual test shortcut;')[0]
match.write_text(source, encoding='utf-8')
subprocess.run(['C:/Users/Alpha/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/bin/node.exe',
                str(root/'patches/optimize-release.cjs')], cwd=root, check=True)

instructions = '''4x4 Football — website build

Upload the CONTENTS of this folder to your website document root. Open index.html
over HTTPS. WebGL is the default; ?engine=legacy selects the Ruffle-only fallback.
This build uses root-relative asset paths, including inside the SWF. It must be
hosted at the domain root (or a dedicated subdomain), not an arbitrary subfolder.
No Node server or build tools are required on the website.

Serve .js as text/javascript, .wasm as application/wasm, .json as application/json,
.css as text/css, .svg as image/svg+xml, .webp as image/webp and .ttf as font/ttf.
Keep all folders intact. UI artwork is optimized; original gameplay textures retained.
If embedding, point an iframe at the hosted index.html and allow fullscreen and
autoplay. Suggested iframe size: 960 x 540. Layout shrinks for smaller viewports.

Includes the current three-stage player handling preset and Space handbrake.
U-key championship preview is disabled. FPS starts hidden; Tab toggles it.
Third-party runtime/font licenses are included. Original game ownership is unchanged.

Validation: package files and JavaScript syntax checked. Full match playtesting
and deployment on your hosting provider are still required before publishing.
'''
(output/'UPLOAD.txt').write_text(instructions, encoding='utf-8')

# Verify that every explicit root asset in our HTML/CSS/JS exists in the package.
missing = set()
for path in [output/'index.html', *(output/'webgl').rglob('*.js'), *(output/'webgl').rglob('*.css')]:
    for asset in re.findall(r'''["'\(](/(?:webgl|vendor|build|decompiled)/[^"'\)\s`<>]+)''', path.read_text(encoding='utf-8-sig')):
        if '${' in asset: continue
        if not (output/asset.split('?')[0].lstrip('/')).exists(): missing.add(asset)
if missing: raise RuntimeError('Missing assets: '+str(sorted(missing)))
# Make the release relocatable, including when embedded in a website subfolder.
import posixpath
for path in [output/'index.html', *(output/'webgl').rglob('*.js'), *(output/'webgl').rglob('*.css')]:
    source=path.read_text(encoding='utf-8-sig')
    if path.suffix=='.css':
        parent=path.relative_to(output).parent.as_posix()
        source=re.sub(r'/((?:webgl|vendor)/[^\s\)\'"?]+)',lambda m:posixpath.relpath(m[1],parent),source)
    else:
        # Static ES imports resolve against the module, while loaders/HTML use the page.
        parent=path.relative_to(output).parent.as_posix()
        source=re.sub(r"(from\s+['\"])/((?:webgl|vendor)/[^'\"]+)",lambda m:m[1]+posixpath.relpath(m[2],parent),source)
        source=re.sub(r"(['\"`])/((?:webgl|vendor|build|decompiled)/)",r'\1./\2',source)
    if path.name=='index.html':
        source=source.replace("await player.ruffle().load({", "await player.ruffle().load({urlRewriteRules:[[new RegExp('^https?://[^/]+/(webgl/.*)$'),new URL('.',location.href).href+'$1']],")
        source=source.replace("status.textContent = 'Player failed to load: ' + error.message;", "const failure=document.createElement('div');failure.setAttribute('role','alert');failure.style.cssText='position:absolute;inset:0;z-index:100;background:#141a18;color:white;padding:32px;font:16px Arial';failure.textContent='Game could not load: '+error.message+'. Check that all game folders were uploaded and JavaScript/WebAssembly files are served correctly.';shell.append(failure);")
    path.write_text(source,encoding='utf-8')
assets_file=output/'webgl/assets.json'
assets_file.write_text(json.dumps({key:'./'+value.lstrip('/') for key,value in json.loads(assets_file.read_text()).items()},indent=2),encoding='utf-8')
readme=output/'UPLOAD.txt'
readme.write_text('''4x4 Football — portable HTML build

Extract this ZIP and upload ALL contents together. Open index.html via your
website URL, e.g. https://example.com/games/4x4-football/index.html .
Root and subfolder hosting are supported. No Node server is needed online.
Do not upload the ZIP without extracting unless your host extracts game ZIPs.
Do not open through file://; browser modules and WebAssembly need HTTP/HTTPS.
For local testing: python -m http.server 8081 from this folder, then open
http://localhost:8081/index.html .

Keep build/, webgl/, vendor/ and decompiled/ beside index.html.
Serve JS as text/javascript and WASM as application/wasm. Allow scripts,
WebAssembly, WebGL and same-origin assets. An iframe needs allow-scripts and
allow-same-origin if sandboxed. Autoplay sound depends on browser permissions.
WebGL is default; the legacy fallback is ?engine=legacy.
All included third-party licenses remain in their corresponding folders.
''',encoding='utf-8')
archive = root/'release/4x4-football-website.zip'
(output/'start-game.py').write_text('''from http.server import ThreadingHTTPServer, SimpleHTTPRequestHandler
from pathlib import Path
import functools, threading, webbrowser

folder = str(Path(__file__).resolve().parent)
handler = functools.partial(SimpleHTTPRequestHandler, directory=folder)
server = ThreadingHTTPServer(("127.0.0.1", 0), handler)
url = "http://127.0.0.1:%s/index.html" % server.server_port
print("4x4 Football: " + url)
print("Keep this window open while playing. Close it to stop the local server.")
threading.Timer(0.5, lambda: webbrowser.open(url)).start()
try:
    server.serve_forever()
except KeyboardInterrupt:
    pass
finally:
    server.server_close()
''',encoding='utf-8')
(output/'PLAY-LOCAL.cmd').write_text('@echo off\ncd /d "%~dp0"\npython start-game.py\nif errorlevel 1 (\n echo Python 3 is required for local testing. On a website, open the hosted index.html URL instead.\n pause\n)\n',encoding='utf-8')
with (output/'UPLOAD.txt').open('a',encoding='utf-8') as guide:
    guide.write('\nWindows local play: double-click PLAY-LOCAL.cmd (requires Python 3).\nThe launcher opens the game using HTTP automatically. Keep its window open.\n')
with zipfile.ZipFile(archive, 'w', zipfile.ZIP_DEFLATED) as package:
    for path in output.rglob('*'):
        if path.is_file(): package.write(path, path.relative_to(output))
print(f'Created {archive} ({archive.stat().st_size/1048576:.1f} MB)')
