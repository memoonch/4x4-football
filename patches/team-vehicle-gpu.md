# Team selection GPU vehicle

team-vehicle.js draws the HD UI sprite with a WebGL shader. The paint mask uses the same regions and neutral-brightness rule as the previous AS implementation. Selection updates one color uniform and draws once. Original soccerTeamAction calls remain unchanged. TeamMenu.as.txt hides the native truck and no longer calls installHDTruck on team selection. Other screens retain their existing implementation.

Rollback: restore installHDTruck(truck) in TeamMenu.as.txt, remove teamVehicle import/initialization/tint call in team-menu.js and rebuild both versions.

JavaScript syntax checked. Live visual/interaction verification remains pending because desktop automation was unavailable earlier in this session.

Next-match screen now uses two precreated GPU sprites and browser background preloaded at module initialization. Native preview trucks and background Loader removed. CSS sets vehicle width to 22.5% and anchors tires near the platform tops. Original tournament actions retained. Visual placement still needs browser verification.
