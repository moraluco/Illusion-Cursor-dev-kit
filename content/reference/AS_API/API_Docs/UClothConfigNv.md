# UClothConfigNv

**Visibility:** public

## Inheritance

UClothConfigCommon → UClothConfigNv → CLOTHCONFIG → AngularDrag

## Description

FVector AngularDrag

Drag applied to angular particle movement, higher values should limit material bending (per-axis)

VerticalConstraint FClothConstraintSetupNv VerticalConstraint

Constraint data for vertical constraints

HorizontalConstraint FClothConstraintSetupNv HorizontalConstraint

Constraint data for horizontal constraints

BendConstraint FClothConstraintSetupNv BendConstraint

Constraint data for bend constraints

ShearConstraint FClothConstraintSetupNv ShearConstraint

Constraint data for shear constraints

SelfCollisionRadius float32 SelfCollisionRadius

Size of self collision spheres centered on each vert

SelfCollisionStiffness float32 SelfCollisionStiffness

Stiffness of the spring force that will resolve self collisions

SelfCollisionCullScale float32 SelfCollisionCullScale

Scale to use for the radius of the culling checks for self collisions.  Any other self collision body within the radius of this check will be culled.  This helps performance with higher resolution meshes by reducing the number of colliding bodies within the cloth. Reducing this will have a negative effect on performance!

Damping FVector Damping

Damping of particle motion per-axis

Friction float32 Friction

Friction of the surface when colliding

WindDragCoefficient float32 WindDragCoefficient

Drag coefficient for wind calculations, higher values mean wind has more lateral effect on cloth

WindLiftCoefficient float32 WindLiftCoefficient

Lift coefficient for wind calculations, higher values make cloth rise easier in wind

LinearDrag FVector LinearDrag

Drag applied to linear particle movement per-axis

ClothingWindMethod EClothingWindMethodNv ClothingWindMethod

How wind should be processed, Accurate uses drag and lift to make the cloth react differently, legacy applies similar forces to all clothing without drag and lift (similar to APEX)

LinearInertiaScale FVector LinearInertiaScale

Scale for linear particle inertia, how much movement should translate to linear motion (per-axis)

AngularInertiaScale FVector AngularInertiaScale

Scale for angular particle inertia, how much movement should translate to angular motion (per-axis)

CentrifugalInertiaScale FVector CentrifugalInertiaScale

Scale for centrifugal particle inertia, how much movement should translate to angular motion (per-axis)

SolverFrequency float32 SolverFrequency

Frequency of the position solver, lower values will lead to stretchier, bouncier cloth

StiffnessFrequency float32 StiffnessFrequency

Frequency for stiffness calculations, lower values will degrade stiffness of constraints

GravityScale float32 GravityScale

Scale of gravity effect on particles

GravityOverride FVector GravityOverride

Direct gravity override value

bUseGravityOverride bool bUseGravityOverride

Use gravity override value vs gravity scale

TetherStiffness float32 TetherStiffness

Scale for stiffness of particle tethers between each other

TetherLimit float32 TetherLimit

Scale for the limit of particle tethers (how far they can separate)

CollisionThickness float32 CollisionThickness

'Thickness' of the simulated cloth, used to adjust collisions

AnimDriveSpringStiffness float32 AnimDriveSpringStiffness

Default spring stiffness for anim drive if an anim drive is in use

AnimDriveDamperStiffness float32 AnimDriveDamperStiffness

Default damper stiffness for anim drive if an anim drive is in use

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UClothConfigNv::StaticClass()
```
