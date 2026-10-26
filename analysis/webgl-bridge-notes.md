# Native WebGL bridge

## Loading screen and paused kickoff (current)

A simple `Loading game…` overlay covers texture/model preparation. The AS
beginScene hook pauses the Box2D world before scene construction. A narrow
startRace prefix defers kickoff while Camera3D.render continues exporting assets.
Once the fully textured native frame has been presented, the deferred callback
restores the world's previous pause flag, excludes loading time from race.startTime,
hides the overlay, and runs the original kickoff body. Loader listeners are removed
on completion or cancellation; normal user pause behavior is kept separate.
Retained matching resets can pass the gate immediately without an artificial wait.

Validation: SWF rebuild succeeded; re-exported race.startRace contains the deferStart
guard and startTime adjustment before racing=true/WOCARS.startRace. The JS regression
checks that GPU readiness does not dismiss the overlay before the AS release, plus
50 retained resets and new-team invalidation. HTTP serves the new overlay/styles.
The actual World.step implementation returns immediately when paused=true. Visual
browser verification and live clock/physics observations are pending.

## Retained GPU scene (current)

At initial match startup the original Flash renderer remains available beneath
the loading screen while WebGL uploads the scene. It hands off only
after all geometry/textures are ready and a native frame has actually been drawn.
The original stadium textures start loading while menus are open. Generated team
textures are still created by the original game during scene construction.

The bridge identifies a scene using stadium/track and both team IDs. It records
a deterministic child-path manifest with node class/name/child-count signatures.
When the original game recreates its AS objects after a goal or halftime, the
bridge validates and rebinds those objects to the existing native IDs. It sends
only transforms/camera, with a snap flag that prevents interpolating from the old
goal position. GPU scene nodes, buffers, materials and textures remain alive.
The original physics and AS scene initialization are preserved; this change
removes redundant native export/allocation, not the game's physics reset.

A different team pairing/stadium or an incompatible graph triggers a fresh upload
and the original-renderer handoff. The existing texture cache remains bounded.
Graphics diagnostics report `Retained scene resets` for visual verification.

Validation: bridge SWF rebuilt; re-export confirms the narrow initScene prefix
calls `TextureMaterial.beginScene(this.TRACK,this.currentCup)` before the original
body. The actual JS module regression test checks 50 consecutive retained resets
with identical GPU object identities, no new allocations/uploads, position snap,
new-team rejection/rebuild, first-presented-frame handoff and no overlay. Local
HTTP serves the updated module. Visual in-browser goal testing is pending.

## Superseded reset visibility fix

The reported missing → white → textured cars were caused by progressive scene
discovery being presented immediately, together with asynchronous texture loads.
Each camera reset also disposed all textures, repeating the problem after goals.

Bridge packets now explicitly signal completed geometry discovery. Presentation
waits for that signal and every texture to finish decoding and GPU upload. A
preparation overlay covers the transition. A reference-counted texture cache
reuses exact static/dynamic textures between resets, retaining up to a 64 MiB
estimated texture budget (referenced textures are never evicted). Late loads from
older scene generations cannot activate the new scene. Initial loading time is
excluded from the gameplay FPS window.

Rebuilt bridge SWF successfully. `node analysis/test-scene-readiness.mjs` passes:
partial geometry hidden, complete geometry held until texture readiness, first
visible mesh textured, reset texture reused without disposal. This test executes
the actual JS module with GPU/DOM stubs; visual browser validation is pending.

The experimental URL is `/?engine=webgl`. The default URL retains the prior
25 fps Ruffle renderer. Original SWF, physics step and frame rate are unchanged.

## Implementation

- Local Three.js 0.186.1 draws the original mesh positions and UVs with GPU depth
  testing. Original image exports and generated team-color bitmap pixels supply
  textures. Mipmaps, anisotropic filtering and anti-aliasing improve sampling.
- A narrow bytecode prefix in Camera3D.render calls TextureMaterial.renderExternal.
  Successful native rendering hides the retained Flash View and skips the original
  draw path. Failure restores the Flash View and retries initialization.
- Geometry and materials upload once, with at most four newly discovered objects
  per simulation frame. Subsequent packets contain changed transforms and camera
  data. Dynamic bitmap encoding uses bounded strings and a final join rather
  than repeatedly growing one enormous Base64 string.
- Once discovery completes, the AS bridge checks only car containers and their
  descendants, the ball-textured mesh, and the ball shadow. The stadium is static
  in this game. This removes repeated traversal/comparison of every static object.
- JavaScript interpolates transforms between 25 fps simulation snapshots at a
  30 fps presentation target. One snapshot of latency is intentional. Neither
  stage.frameRate nor Box2D stepping is increased.
- Graphics diagnostics show actual object/material/triangle/draw counts and CPU
  render submission time. The counter separates display fps from snapshot rate.
- Reset releases scene geometry and texture resources; late asynchronous texture
  loads are discarded when their original material no longer belongs to the scene.
- A second narrow prefix makes race.predFrame wait for the ball physics body and
  four players before continuing match initialization. Its original body remains.

## Findings during development

The first complete-looking match was the retained Flash fallback, not a successful
native scene. A zero-object diagnostic caught that mistake; those fps readings
are not native-renderer benchmarks. The initial AS export failed because the
compiler emitted an unresolved `flash` lookup for a fully qualified free function.
An explicit getQualifiedClassName import corrects it. Initialization state is now
reset after failure so a partial export cannot be mistaken for a completed one.

A subsequent all-at-once export stalled the browser. Incremental object upload and
bounded Base64 encoding were added before the next browser test. Do not claim the
30 fps or 60 fps goal based only on the configured target or an empty scene.

## Browser observations, 2026-10-23

After the incremental export fix, diagnostics confirmed 172 native objects and
25 materials, with 74 draw calls / 2,723 visible triangles in one view and about
0.97 ms CPU render submission. Active-play samples were typically 27–30 display
fps with 23–25 simulation snapshots per second; some views dipped to 25–26 fps.
Common p95 display intervals were 50 ms, with occasional 67–83 ms samples.
These are observations from one browser session, not a sustained benchmark.

Cars, ball, shadows, stadium, flags, crowd and goal nets appeared in the native
scene. A full first half and the transition into the second half ran. Scene
recreation caused a large temporary stall and partially loaded geometry during
incremental upload. This remains an issue before default promotion.

JS heap peaked around 85 MB during initial upload, settled to roughly 33 MB,
peaked around 92 MB during halftime and returned to roughly 33 MB afterward.
These figures exclude WASM and GPU memory. Pause displayed correctly with a
frozen scene and zero incoming simulation snapshots; native presentation continued
at 30 fps. The original stage.frameRate remains 25.

The session completed both halves and reached the victory screen (1–0). Pause and
resume worked. C switched to the wide camera. Heap returned to about 33–35 MB
after more than five minutes. An isolated active-play sample fell to 17.7 fps,
so this is an approximately 30 fps preview, not a locked-30 claim. Proof of the
completed match is `analysis/webgl-full-match-victory.png`.

After the moving-object-only optimization, diagnostics confirmed 30 dynamic
objects out of 172 total. Two active-play samples showed 30.0 display fps,
25.0–25.2 snapshots/sec and a 34 ms p95 interval. CPU render submission in one
view was 0.64 ms; JS heap settled at 33.3 MB after an approximately 79 MB upload
peak. The ball, other cars and camera continued moving. This is a short follow-up
check; the full-match result above predates this last optimization.

Lighting changes and replacement textures have not been applied. The current
material pass preserves original baked texture shading. Full tournament testing,
long native matches and a final graphics comparison remain required before making
this renderer the default.
