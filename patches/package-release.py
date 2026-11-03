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
archive = root/'release/4x4-football-website.zip'
with zipfile.ZipFile(archive, 'w', zipfile.ZIP_DEFLATED) as package:
    for path in output.rglob('*'):
        if path.is_file(): package.write(path, path.relative_to(output))
print(f'Created {archive} ({archive.stat().st_size/1048576:.1f} MB)')
