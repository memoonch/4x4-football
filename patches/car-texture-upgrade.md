# Gameplay vehicle atlas

Enhanced neutral atlas: webgl/ui/car-atlas-hd.png, 1024 x 1024.
Generated with the built-in image tool from decompiled/images/240_Car1TextureGrey.png, then resized to the original runtime dimensions. Prompt requested sharper panel seams, silver paint shading, tinted windows, chrome wheel, tire tread and light lenses while preserving UV island layout. Generated source: exec-33be9aa4-7bb6-4fe7-9bba-3f1002dbb5c2.png.

Both build scripts replace bitmap character 240 after compilation. Original source images and physics are untouched. Runtime team-color overlay remains the original mask. Texture memory dimensions remain 1024 x 1024.

Rollback: copy build/4x4-soccer-bridge.legacy-textures.swf over build/4x4-soccer-bridge.swf (and corresponding standard build). Remove the apply-car-texture.ps1 invocation from build scripts to retain legacy textures on subsequent rebuilds.

Atlas replacement succeeded in both SWFs. Live match visual alignment and performance still require browser verification; desktop automation timed out on 2026-10-30. AI atlas edits may shift small details, so visual alignment must not be assumed from successful packaging.
2026-10-30: Verified exported bitmap 240 from the bridge SWF is the enhanced atlas. Raised WebGL minimum pixel ratio to 1.5 (maximum 2), added modest car-material saturation/contrast grading, and versioned SWF URLs. JavaScript syntax check passed. Live appearance and FPS remain unverified.
