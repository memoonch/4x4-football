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

Player steering now eases toward the held direction and returns gradually to
center on release. At the original 25 Hz simulation rate, the response reaches
about 90% in 120 ms when turning and 120 ms when centering. Computer steering,
acceleration, maximum steering strength and physics stepping retain their original
settings. The steering source is `patches/BoxCar.as`; both build scripts include it.

Long-session cleanup removes the AI's hidden per-step marker/tween allocation,
stops car engine audio during world destruction, prunes finished UI tweens, and
starts one crowd loop per countdown rather than one per countdown frame.
WebGL interpolation reuses its arrays and camera matrices. GPU geometry/texture
counts are shown in Graphics diagnostics. Rebuilt-code checks are recorded in
`analysis/long-match-notes.md`; live multi-match FPS profiling is still pending.

The main menu uses the cinematic stadium 4x4 Football skin in
`patches/MainMenuCinematic.as.txt`. The previous minimal skin is retained in
`patches/MainMenuSkin.as.txt`. The build inserts drawing helpers into
`BoxCar.built.as`; `MainMenuPatch.java` installs the artwork once at startup.
It retains the original New Game and Play More Driving Games button objects
and handlers, and hides/disables the website-embed button. High-resolution
stadium artwork loads from `webgl/menu-cinematic.png`; title and angled button
labels use the embedded bold Impact font and remain separate from the image.
A static backdrop avoids starting gameplay for the menu.
Other screens are unchanged. Browser verified: New Game to team selection,
Back to Menu, no runtime errors. Preview: `analysis/main-menu-cinematic.png`.
Artwork generation details: `analysis/menu-artwork-prompt.md`.

The browser player frame is 960 x 540 (responsive below that width). Its
Fullscreen button toggles the browser Fullscreen API. The original 670 x 450
game stage scales proportionally and is centered with side bars; SWF and WebGL
layers share the same offset and scale to preserve pointer/camera alignment.
Browser verified: frame dimensions, entering/exiting fullscreen, and scaled
New Game / Back to Menu controls. Fullscreen preview: `analysis/menu-fullscreen.png`.

Ruffle now rasterizes UI vectors/text at the displayed player dimensions using
forced proportional scaling, rather than CSS-enlarging a 670 x 450 canvas.
The cinematic menu buttons are 292 logical pixels wide (about 350 px at the
960 x 540 frame), with centered bold labels and matched normal/hover/pressed
geometry and hit targets. Preview: `analysis/menu-buttons-polished.png`.

Main menu reference refresh: generated stadium artwork and metallic crest in webgl/menu-reference.png (prompt: analysis/menu-reference-prompt.md). Original artwork retained. Live buttons retain original handlers; bold slanted labels and primary play icon. Only main-menu presentation changed.

Button clarity refresh: Wider bold embedded labels replace the tightly condensed lettering. Vector plates have inset highlights, darker backing, brighter hover and darker pressed states. Secondary action uses two lines within the same original button. Sizes: 300x58 and 300x54 logical pixels. Gameplay handlers retained.


Rendering quality stays at medium. Removed the performance-meter fallback that switched Flash stage quality to low after three slow windows. Ruffle load quality remains medium; display and simulation rates are unchanged.

## Tournament screen refresh

The cup chart and next-match screen use `webgl/ui/tournament-menu.js` and CSS for
sharp Montserrat text, local SVG flags, four connected knockout rounds, recorded
scores, upcoming-match highlighting, and the original team-colored truck previews.
`patches/TournamentMenu.as.txt` sends snapshots of the actual `cup16`, `cup8`,
`cup4`, and `cup2` arrays when the original popup opens. Buttons dispatch the
existing Flash handlers. Popup hide hooks also close the HTML overlay, including
Escape/menu transitions. Private race fields are resolved by exact trait namespace.

The match background is `webgl/ui/match-tunnel.png`; generation prompt is in
`analysis/tournament-artwork-prompt.md`. Vehicle previews retain the original
raster art, so their detail remains limited when enlarged. No physics/timing edits.

Validation: both patched SWFs build; `node analysis/test-tournament-data.mjs`
checks initial draw, TBD slots, completed zero scores, round advancement and final
opponents. Browser checks cover the live bracket, matching opponent preview,
fullscreen layout, and Start Match. Previews: `analysis/cup-chart-premium.png`
and `analysis/next-match-premium.png`.
