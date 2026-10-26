# 4x4 Soccer revival

The original `4x4 soccer.swf` is preserved unchanged.

## Run in a browser

With Node.js installed, run `node server.mjs` from this folder, then open
http://127.0.0.1:8080 in your browser. Click the game to enable sound and keyboard
input. The server listens only on this computer.

The browser player uses the pinned upstream Ruffle CI build in
`vendor/ruffle-gpu`. It does not need a Flash browser plugin or a CDN.
Ruffle emulates the original game; this is not a JavaScript source port.

## Recovered material

`decompiled/` contains JPEXS FFDec 26.3.0 exports: 795 ActionScript files,
72 images, 161 vector shapes, 25 sounds, 5 fonts, 7 binary assets, text and
symbol mappings. `race.as` contains the main game flow; rendering uses
Alternativa3D and physics uses Box2D/Alchemy. Decompiled sources are recovered
output, not a verified rebuildable original source project.

The SWF targets Flash 10, at 670 × 450 and 25 fps. Legacy FOG online services
may fail; the desktop runtime logged a null reference in `FogDevSocial.response`.
External website opening and JavaScript access are disabled in the local player.

## 3D rendering fix

The released Ruffle runtime ignored this game's UVT texture coordinates.
The initial workaround drew thousands of separate bitmap-filled triangles;
that restored textures but was slow. It is no longer active.

The active runtime comes from upstream Ruffle PR #24254 (native UVT triangles),
commit `44d50cde4a845637140662e96358b4161b83d8f3`, successful Test Web run
`32509154047`, artifact `9456506345`. This is a development build, not a stable
release. The downloaded archive's SHA-256 matched GitHub's published digest:
`72636d0b1dd8f0636a00e1058c1d005cf40a6a85c703e3ced511aea689df9258`.
See `analysis/gpu-runtime-artifact.json` and
https://github.com/ruffle-rs/ruffle/pull/24254.

The default SWF uses the original textured-triangle calls, an FPS/p95 frame
interval overlay below the FOG logo, and a 15-second timeout on the obsolete
FOG preloader dependency. The HTML player selects the game's built-in distance
sorting (`type=1`) for the wider scene, and medium anti-aliasing. Each car uses
the original ConflictContainer internally so its body, wheels and shadow sort
correctly. A two-operand bytecode patch changes only that constructor choice;
the main game class is not recompiled. This corrects the missing-looking car
panels caused by the previous all-distance-sorting optimization, at some FPS
cost. Physical collisions, the 25 fps target, physics stepping and match timing
are unchanged.

If three consecutive FPS samples fall below 24, the counter switches the stage
to low anti-aliasing once, to avoid oscillating quality. It marks this as
`[low AA]`. This changes edge smoothing, not the simulation clock or textures.

Rebuild with `powershell -File patches/build.ps1` (requires Java and FFDec).
`patches/TextureMaterial.as` and `patches/FogDevPreloader.as` are the replacement
sources. `patches/CarSortingPatch.java` applies the guarded constructor patch
using the installed FFDec library. It asserts exactly two instructions change,
unchanged method length, and at most six changed byte positions. The unmodified
decompilation remains in `decompiled/`. Use `/?original` to compare the original
SWF or `/?renderer=webgpu` / `/?renderer=canvas` for backend diagnostics.
The tested default is `wgpu-webgl`; WebGPU was slower and Canvas failed to
render the match in the tested released runtime.

The FPS counter measures Flash ENTER_FRAME events, not browser refresh rate.
The memory line measures browser JavaScript heap only, excluding WASM/GPU
allocations. Graphics diagnostics report the actual selected backend/adapter.
Both vendored runtime JS files have a small diagnostics hook that exposes the
renderer debug string as a DOM attribute; rendering logic is unchanged.

Verified in the in-app browser: team selection, match startup, car and ball
textures, field markings, stadium/crowd, driving, close and wide camera views,
pause and restart. Other browsers and a complete tournament remain untested.
Before: `analysis/browser-game.png`. After: `analysis/rendering-fixed.png` and
`analysis/rendering-fixed-wide.png`.

The reconstructed Adobe Animate project is
`editable/4x4 soccer/4x4 soccer.xfl`; its full rebuild is unverified.

An experimental native Three.js/WebGL renderer is available at
`http://127.0.0.1:8080/?engine=webgl`. It targets 30 display fps, interpolating
the original 25 fps simulation snapshots. The default page still uses the
stable renderer. Rebuild the separate bridge SWF with
`powershell -ExecutionPolicy Bypass -File patches/build-bridge.ps1`.
See `analysis/webgl-bridge-notes.md` for the implementation and validation status.
Matching goal/halftime resets retain the native GPU scene and send transforms
only. A simple loading screen covers initial preparation; physics and kickoff
wait until a complete WebGL frame is ready, and loading time is excluded from
the match clock. Run `node analysis/test-scene-readiness.mjs` for the
startup handoff and repeated-reset resource regression checks.
