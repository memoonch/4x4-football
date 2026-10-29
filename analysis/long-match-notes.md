# Long-match slowdown investigation

Confirmed in original code: BoxCar.computePath creates a controlpoint MovieClip
and a Tween on each AI update. Finished tweens remain in BoxCar.tweens forever.
At three AI cars and 25 updates/sec, the upper bound is 4,500 retained tweens per
minute (reversing AI skips some). Replaced with one Point per car; decision math
is preserved. This is a concrete unbounded allocation source, not a measured
attribution of every observed FPS drop.

Additional lifecycle fixes:
- BoxCar.destroy stops procedural motor audio and skid/effect channels.
- race.onFrame prunes completed UI tweens while preserving active transitions.
- race.predFrame starts crowd audio only on the successful countdown frame;
  previously it started a 999-repeat channel on all three countdown frames.
- WebGL reuses interpolation state arrays and camera matrices instead of
  allocating one array per scene node per drawn frame and two matrices per frame.
- Graphics diagnostics now shows live GPU geometry and texture counts.

Both standard and WebGL SWFs rebuilt. Final WebGL SWF decompiled into
analysis/long-match-check for checks of the actual packaged methods.

Validation:
- node analysis/test-ai-lifetime.mjs executes original and rebuilt AI method
  bodies with local AS3 type annotations removed: 45,000 updates (30 simulated
  minutes at 25 Hz), identical decisions; original retained 31,292 tweens and
  rebuilt created zero tweens or markers.
- The same check exercises rebuilt countdown, tween pruning, and destruction
  bodies over 200 simulated match lifecycles (800 car audio cleanups).
- node analysis/test-scene-readiness.mjs passes 50 retained goal resets and a
  new match scene disposal/rebuild with no added GPU resources on retained resets.
- node --check webgl/renderer.js passes.

These are code-level simulations, not a real-time browser soak or proof of a
locked frame rate. Local browser control is disabled in Work settings, preventing
live profiling during this change. A fresh page load is required to replace the
already running SWF and release accumulated objects from the old instance.
25 Hz game timing and the 30 FPS display target are retained.

## Frozen-view regression correction

The initial UI cleanup patch selected the last constant named `tweens`, which
belonged to a different class's private namespace. The race frame callback then
accessed the wrong private field and could fail before updating the 3D view,
while the separately stepped physics/minimap continued. PerformancePatch now
resolves the field through the declaring race trait with its exact namespace.
`analysis/CheckCleanupBinding.java` checks that private-field binding in the
actual rebuilt SWF. Source-decompilation and isolated method-body tests alone
did not detect this namespace mismatch; this packaged-bytecode check covers it.

## Live browser check after access was enabled

Reloaded the in-app browser on 2026-10-27 after restarting the local server.
The earlier tab had a module-fetch failure. The freshly loaded current build
rendered moving cars, ball and camera; driving, a goal/reset, pause and match
restart all continued updating the 3D view. Samples were mostly 27–30 display FPS
and about 25 simulation updates/sec, with a later sample at 23.2/22.3. No new
error was captured after the reload (the log retained the earlier fetch error).
After two retained scene resets, diagnostics showed 172 objects, 25 materials,
171 GPU geometries and 20 textures; CPU render submission sampled at 0.91 ms.
This short live check verifies the frozen-view correction across those actions,
but does not establish long-session FPS stability.
