# Results screen loading audit

Halftime, extra time, defeat/victory and cup completion previously loaded native Loader backgrounds and called installHDTruck when first shown. These now use preloaded browser backgrounds and GPU vehicle sprites prepared during page initialization. Entry changes color uniforms rather than running an AS pixel recoloring loop. Pause and goal banners already use browser UI. Tournament previews and team selection also use GPU sprites.

Original result buttons, scores and tournament progression remain handled by the existing ActionScript callbacks. Both atlas and original car sources remain available. JavaScript syntax checked; live transitions and layout still require visual verification.

Rollback: restore skinMatchResult from Git and remove resultTints/GPU sprite additions in match-ui.js and result background/car CSS overrides.
