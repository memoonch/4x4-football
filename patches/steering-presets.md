# Steering presets and rollback reference

Saved at the user's request on 2026-10-27. Keep these presets available for
future tuning or rollback. Steering changes apply to human players only.

## Current: Arcade Steering V1, Stage 1 (2026-11-02)

Stage 3 added: `PROGRESSIVE_HANDBRAKE_V1 = true` ramps rear grip from
100% to 40% in three 25 Hz steps (0.12 s), then restores it in five steps
(0.2 s) after Space is released. Both the lateral correction fraction and
impulse cap scale together. Front grip is unchanged. Added stability assistance
blends back with rear grip recovery. Existing handbrake throttle reduction is
retained. No yaw or vehicle heading is forcibly reset. Set this flag false to
restore Stage 2's instant rear release; Space remains the handbrake key.
Ramp arithmetic verified; drifting feel and collision recovery require playtesting.

Stage 2 added: `ARCADE_GRIP_V1 = true` enables human-only lateral wheel
impulses (90% slip correction, capped at 2 velocity units per 25 Hz step).
Normal rear grip no longer switches off entirely above the old skid threshold.
The original rear handbrake release is retained until Stage 3. Handbrake is Space.
Body angular damping adds 0–1 while steering or 0–2 when centering, blended by
actual speed / 24; assistance turns off under handbrake and AI control.
Set `ARCADE_GRIP_V1 = false` to restore Stage 1 grip and damping.
These are initial tuning values; compile checks do not establish driving feel.

`ARCADE_STEERING_V1 = true` in `BoxCar.as` enables human-only speed-sensitive
steering. Set it to false and rebuild both versions to restore the light preset
below. AI steering and all grip, damping, throttle and handbrake code are unchanged.

Actual body velocity magnitude drives smoothstep interpolation: 44 degrees at
zero speed, 32 at 12 physics units/second, 22 at 24 and above. Reverse uses the
same curve. The speed thresholds are provisional, not measured top speeds;
`VELMAX` is an audio parameter and is deliberately not used as a speed limit.
Response is 0.65 toward a turning target and 0.70 toward center at 25 Hz.
The front wheel joints retain their original limits and motor response.
No body rotation is forcibly reset. Build verification does not replace driving
tests for tight turns, high-speed turns, reversing and direction changes.

## Saved rollback: light smooth steering

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
120 ms. Centering uses a faster response factor. This is the rollback preset.

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
