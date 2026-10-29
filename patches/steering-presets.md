# Steering presets and rollback reference

Saved at the user's request on 2026-10-27. Keep these presets available for
future tuning or rollback. Steering changes apply to human players only.

## Current: light smooth steering

Source: `patches/BoxCar.as`, human-player branch in `parseInput`.

```actionscript
var steeringTarget:Number = this.left ? this.STEER : (this.right ? -this.STEER : 0);
var steeringResponse:Number = steeringTarget == 0 ? 0.65 : 0.55;
this.steer += (steeringTarget - this.steer) * steeringResponse;
if(Math.abs(steeringTarget - this.steer) < this.STEER * 0.005)
{
   this.steer = steeringTarget;
}
this.STEERSPEED = steeringTarget == 0 ? this.STEERSPEEDMAX : this.STEERSPEEDMIN;
```

At 25 simulation updates/sec, reaches roughly 90% of a held direction in
120 ms. Centering uses a faster response factor. This is the active preset.

## Previous: initial smooth steering (felt heavy)

Use the same code above with:

```actionscript
var steeringResponse:Number = steeringTarget == 0 ? 0.40 : 0.32;
```

Roughly 240 ms to 90% turning response and 200 ms to 90% centering.

## Original legacy driving controls

Reference: original `4x4 soccer.swf` and `decompiled/scripts/BoxCar.as`,
`parseInput`. The original SWF is the authoritative legacy baseline.

For human players, replace only the smooth-steering branch with:

```actionscript
this.STEERSPEED = this.STEERSPEEDMIN;
if(this.left)
{
   this.steer += this.STEER / 4;
   if(this.steer > this.STEER) this.steer = this.STEER;
}
else if(this.right)
{
   this.steer -= this.STEER / 4;
   if(this.steer < -this.STEER) this.steer = -this.STEER;
}
else
{
   this.steer = 0;
   this.STEERSPEED = this.STEERSPEEDMAX;
}
```

Full steering takes four updates (160 ms from center); release centers
immediately. Direction reversal takes up to eight updates from full lock.
Player1 uses W/A/S/D; Player2 uses arrow keys; Ctrl is the handbrake.

Acceleration, top speed, friction, maximum steering strength, computer steering,
25 Hz simulation timing and 30 FPS presentation were not tuned with these
steering presets. Restore only steering when requested; retain the later
memory/audio cleanup fixes and renderer corrections.

After changing the preset, rebuild both `patches/build.ps1` and
`patches/build-bridge.ps1`, then reload the page and verify driving in the browser.
