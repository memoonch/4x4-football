# HD UI vehicle artwork

Asset: webgl/ui/vehicle-hd.png (1254 x 1254 transparent PNG).
Built-in image generation, using decompiled/images/452.png as reference.
Prompt: High-resolution silver-white Hummer H2-style SUV, symmetrical front view with slightly elevated camera, full tires and mirrors, crisp realistic game render, neutral paint suitable for team tinting, transparent background, no environment/text/badges.

TeamMenu.as.txt installHDTruck loads the replacement into the original UI truck clip, fits opaque bounds without stretching, enables bitmap smoothing and follows the original boja team-color source. Also used by TournamentMenu and MatchUI results/championship screens. Original artwork remains in the SWF and is hidden only after successful loading. Missing image falls back to original.

Rollback: remove the three installHDTruck(truck) call sites from TeamMenu.as.txt, TournamentMenu.as.txt and MatchUI.as.txt; rebuild with patches/build-bridge.ps1 and patches/build.ps1. Original 452.png is untouched. No gameplay geometry, physics, colliders or controls changed by this UI update.

Both builds compiled 2026-10-29. Browser visual verification recorded separately in analysis/ui-vehicle-hd.png.
`nUpdate: UI vehicle fit reduced to 80%, original art hidden immediately while loading, team-colored BitmapData cached for reuse across screens. First use of a new team color still requires preparation.
