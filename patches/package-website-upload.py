"""Create a Stunt Pilot-style index.html + game-files upload folder."""
from pathlib import Path
import shutil, json, re, zipfile

root=Path(__file__).resolve().parent.parent
source=root/'release/4x4-football-website'
target=root/'release/website-upload'
assert target.resolve().is_relative_to((root/'release').resolve())
if target.exists(): shutil.rmtree(target)
assets=target/'game-files'
assets.mkdir(parents=True)
for folder in ['build','webgl','vendor','decompiled']:
    shutil.copytree(source/folder,assets/folder)
page=(source/'index.html').read_text(encoding='utf-8')
for folder in ['build','webgl','vendor','decompiled']:
    page=page.replace('./'+folder+'/', './game-files/'+folder+'/')
page=page.replace("new URL('.',location.href).href+'$1'", "new URL('./game-files/',location.href).href+'$1'")
(target/'index.html').write_text(page,encoding='utf-8')
for file in (assets/'webgl').rglob('*.js'):
    text=file.read_text(encoding='utf-8')
    # Document-relative resources move under game-files. Module-relative imports
    # already resolve inside the relocated tree and must remain unchanged.
    text=re.sub(r"(['\"`])\./((?:webgl|vendor|build|decompiled)/)",r'\1./game-files/\2',text)
    file.write_text(text,encoding='utf-8')
manifest=assets/'webgl/assets.json'
manifest.write_text(json.dumps({key:value.replace('./decompiled/','./game-files/decompiled/') for key,value in json.loads(manifest.read_text()).items()},indent=2),encoding='utf-8')
(assets/'UPLOAD-INSTRUCTIONS.txt').write_text('''4x4 Football — website upload

Upload index.html and the game-files folder together, keeping their structure.
Open the HTTPS URL to index.html. Subfolder hosting is supported.
This is a static HTML game build; no Node/Python server is required online.
For iframe embedding use the hosted index.html URL, width 960 and height 540.
If the iframe is sandboxed it needs allow-scripts and allow-same-origin.
JavaScript and WebAssembly must be allowed by the host. Serve .js as
text/javascript and .wasm as application/wasm.

Do not double-click index.html using file://. For local testing, serve this folder
over HTTP, for example: python -m http.server 8083
Then open http://localhost:8083/index.html .

Included: current WebGL game, optimized artwork, UI and third-party licenses.
Production U-key preview is disabled. F11 toggles fullscreen where supported.
''',encoding='utf-8')
archive=root/'release/4x4-football-website-upload.zip'
with zipfile.ZipFile(archive,'w',zipfile.ZIP_DEFLATED) as package:
    for file in target.rglob('*'):
        if file.is_file(): package.write(file,file.relative_to(target))
print(f'Created {target}\nZIP: {archive} ({archive.stat().st_size/1048576:.1f} MB)')
