# Performance work — 22 October 2026

## Measurements

Samples are one-second Flash frame-event windows in the in-app browser on the
NVIDIA GeForce GT 730, not a controlled hardware benchmark. Different random
matches/scenes mean these are indicative comparisons rather than exact ratios.

| Configuration | Observed sample | p95 interval |
| --- | ---: | ---: |
| Initial affine compatibility renderer | 8.1 fps | 132 ms |
| Matrix reuse + reduced subdivision | 11.9 fps | 89 ms |
| Released runtime, WebGPU, affine workaround | 4.0 fps | 392 ms |
| Aggressively reduced subdivision, medium AA | 14.7 fps | 85 ms |
| Native UVT CI runtime, conflict sorting, high AA | 9.4 fps | 144 ms |
| Native UVT CI runtime, distance sorting, medium AA | 25.8 fps | 50 ms |
| Same, later match sample | 22.6 fps | 55 ms |
| Same, second half | 22.3 fps | 56 ms |
| Same, later second-half scene | 19.6 fps | 72 ms |
| Final adaptive-AA build, new active match | 24.6 fps | 68 ms |
| Final adaptive-AA build, wide camera, low AA | 19.8 fps | 72 ms |

One goal-reset sample dropped to 9.9 fps / 555 ms p95. Sustained near-target
play is improved, but transition stutters are not yet eliminated. The Flash
header still declares 25 fps. No physics iteration count, simulation timestep,
or match duration was changed.

## Active changes

- Native GPU triangle rendering from upstream PR #24254 replaces the CPU-heavy
  affine subdivision workaround and fixes perspective texture mapping.
- HTML Flash parameter `type=1` selects the game's existing DistanceSortContainer
  path for the model and car containers, avoiding conflict geometry splitting.
- Medium AA reduces multisampling; after three sub-24-fps windows, the final
  counter patch switches to low AA once and labels the change.
- The stage-level counter shows actual frame-event rate and one-second p95.
- A 15-second preloader fallback prevents indefinite legacy-library waits.

`patches/TextureMaterial.affine.as` and other baseline variants are retained for
diagnostic comparisons only; `patches/build.ps1` builds the native GPU version.
The original SWF SHA-256 is unchanged:
`CF8443DE11539C39CA8D77B6DE16D91621A71B0A544AF775E6173BE73ABEBF37`.

## Runtime provenance

Upstream PR: https://github.com/ruffle-rs/ruffle/pull/24254
Commit: `44d50cde4a845637140662e96358b4161b83d8f3`
Web CI run: `32509154047` (success)
Artifact: `9456506345`, `selfhosted-dist`
Archive digest verified against the GitHub artifact API before use.
Only a renderer-diagnostics DOM attribute hook is added to its JS bundle.

This branch is older than the released 0.7.1 runtime and has not been merged
upstream. Pin the exact files; upgrading without UVT support would regress the
3D rendering. Cross-browser and complete tournament coverage remain pending.

## Soak result

A complete Argentina–Italy match ran through both original two-minute halves,
halftime, multiple goals and the loss/result screen without a crash. The page
had been open for about 435 seconds at the result screen. JS heap was 11.9 MB;
post-startup samples were roughly 11–13 MB, including garbage collection drops.
This is not evidence about WASM linear memory, GPU memory, or process RSS.
Screenshots: `fps-second-half.png`, `fps-long-match.png`.

The upstream Test Web run succeeded; the separate Test Rust run for that commit
reported failure. This runtime is a tested local compatibility candidate, not
a claim that the upstream branch passes every test or is release-ready.
