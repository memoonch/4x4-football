# Car completeness repair

The user reported incomplete rear/side panels and detached-looking wheels.
The body and wheel model data and texture assets were embedded and present.
The earlier performance mode used DistanceSortContainer inside each car,
sorting whole body, wheel and shadow meshes by their origins. These overlapping
meshes cannot always be ordered correctly as whole objects.

The repair keeps DistanceSortContainer for the wider scene but changes only the
type=1 branch of `race.setupCar` to construct ConflictContainer internally.
This restores the original car-part conflict resolution. It is slower in some
scenes; the earlier performance benchmark numbers do not describe this revision.

An attempted full-source recompilation of race failed at gameplay startup and
was discarded. The active patch instead uses FFDec's Java API to change exactly
the findpropstrict and constructprop operands in the original setupCar method.
No other game method is recompiled. Re-export comparison against the original
race source showed only the intended constructor-line difference.

The build script starts from the unchanged original SWF, compiles the existing
meter/preloader changes, then applies the guarded bytecode edit. Verification
checks method length and the number of changed byte positions. Gameplay starts
successfully with the narrow patch; rear and side views of cyan and orange cars
were inspected, including following a goal/reset. Native GPU texture mapping
remains active. No model or texture image was replaced.
