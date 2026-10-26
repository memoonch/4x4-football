# Rendering diagnosis — 22 October 2026

Ruffle browser package: `@ruffle-rs/ruffle` 0.7.1.

The original Alternativa3D material builds projected XY vertices and UVT triples
(normalized U, normalized V, reciprocal depth), then calls
`Graphics.beginBitmapFill` followed by `Graphics.drawTriangles`.

Ruffle's official implementation declares `_uvt_data` but does not use it in
`draw_triangles_internal`. It emits only triangle outlines using the current
fill. Source inspected:
https://github.com/ruffle-rs/ruffle/blob/master/core/src/avm2/globals/flash/display/graphics.rs
The inspected file is saved as `analysis/ruffle-graphics.rs`.

The original default renderer produced black cars and stretched field/stadium
surfaces. The WebGL fallback additionally displayed a solid cyan rectangle in
place of the masked car preview. Canvas reached the menu, but was not tested
through a match after the missing UVT implementation was confirmed.

Both textured-triangle call sites in TextureMaterial are replaced. The fallback
solves a texture-pixel-to-screen affine matrix per triangle. Subdivision uses
screen-space midpoints and reciprocal-depth-weighted UV interpolation, retaining
perspective at the subdivision vertices. Degenerate projected and UV triangles
are skipped. Recursion and projected area are bounded to limit cost.

The patched class was compiled into a copy using FFDec's script replacement,
then re-exported to `analysis/patched-source/` to verify both replacement call
sites and the helper survived compilation. In-browser checks confirmed restored
textures from two camera angles and after a match restart. Full performance,
cross-browser, and tournament regression testing is still pending.
