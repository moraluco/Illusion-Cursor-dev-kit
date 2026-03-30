# UChaosClothConfig

**Visibility:** public

## Inheritance

UClothConfigCommon → UChaosClothConfig

## Description

Holds initial, asset level config for clothing actors. // Hiding categories that will be used in the future

### ANIMATION PROPERTIES

```
ANIMATION PROPERTIES FictitiousAngularScale float32 FictitiousAngularScale
```

The portion of the angular velocity that is used to calculate the strength of all fictitious forces (e.g. centrifugal force).  This parameter is only having an effect on the portion of the reference bone's angular velocity that has been removed from the simulation via the Angular Velocity Scale parameter. This means it has no effect when AngularVelocityScale is set to 1 in which case the cloth is simulated with full world space angular velocities and subjected to the true physical world inertial forces.  Values range from 0 to 2, with 0 showing no centrifugal effect, 1 full centrifugal effect, and 2 an overdriven centrifugal effect.

### AngularVelocityScale

```
float32 AngularVelocityScale
```

The amount of angular velocities sent to the local cloth space from the reference bone (the closest bone to the root on which the cloth section has been skinned, or the root itself if the cloth isn't skinned).

### LinearVelocityScale

```
FVector LinearVelocityScale
```

The amount of linear velocities sent to the local cloth space from the reference bone (the closest bone to the root on which the cloth section has been skinned, or the root itself if the cloth isn't skinned).

### AnimDriveDamping

```
FChaosClothWeightedValue AnimDriveDamping
```

The damping amount of the anim drive.  If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Anim Drive Damping" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.  Otherwise only the Low value is sufficient to work on this constraint.

### AnimDriveStiffness

```
FChaosClothWeightedValue AnimDriveStiffness
```

The strength of the constraint driving the cloth towards the animated goal mesh.  If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Anim Drive Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.  Otherwise only the Low value is meaningful and sufficient to enable this constraint.

## Members

### PROPERTIES

```
COLLISION PROPERTIES
```
### SelfCollisionThickness

```
float32 SelfCollisionThickness
```

The radius of the spheres used in self collision.

### bUseLegacyBackstop

```
bool bUseLegacyBackstop
```

This parameter is automatically set by the migration code. It can be overridden here to use the old way of authoring the backstop distances.  The legacy backstop requires the sphere radius to be included within the painted distance mask, making it difficult to author correctly. In this case the backstop distance is the distance from the animated mesh to the center of the corresponding backstop collision sphere.  The non legacy backstop automatically adds the matching sphere's radius to the distance calculations at runtime to make for a simpler authoring of the backstop distances. In this case the backstop distance is the distance from the animated mesh to the surface of the backstop collision sphere.  In both cases, a positive backstop distance goes against the corresponding animated mesh's normal, and a negative backstop distance goes along the corresponding animated mesh's normal.

### bUseSelfCollisions

```
bool bUseSelfCollisions
```

Enable self collision.

### bUseCCD

```
bool bUseCCD
```

Use continuous collision detection (CCD) to prevent any missed collisions between fast moving particles and colliders.  This has a negative effect on performance compared to when resolving collision without using CCD.

### FrictionCoefficient

```
float32 FrictionCoefficient
```

Friction coefficient for cloth

collider interaction.

### CollisionThickness

```
float32 CollisionThickness
```

The added thickness of collision shapes.

### ENVIRONMENTAL PROPERTIES

```
ENVIRONMENTAL PROPERTIES LocalDampingCoefficient float32 LocalDampingCoefficient
```

The amount of local damping applied to the cloth velocities.  This type of damping only damps individual deviations of the particles velocities from the global motion.  It makes the cloth deformations more cohesive and reduces jitter without affecting the overall movement.  It can also produce synchronization artifacts where part of the cloth mesh are disconnected (which might well be desirable, or not), and is more expensive than global damping.

### Lift

```
FChaosClothWeightedValue Lift
```

The aerodynamic coefficient of lift applying on each particle.  If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Lift" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.  Otherwise only the Low value is meaningful and sufficient to set the aerodynamic lift.

### bUsePointBasedWindModel

```
bool bUsePointBasedWindModel
```

This parameter is automatically set by the migration code. It can be overridden here to use the old deprecated "Legacy" wind model in order to preserve behavior with previous versions of the engine.  The old wind model is not an accurate aerodynamic model and as such should be avoided. Being point based, it doesn't take into account the surface area that gets hit by the wind.  Using this model makes the simulation slightly slower, disables the aerodynamically accurate wind model, and prevents the cloth to interact with the surrounding environment (air, water, ...etc.) even when there is no wind.

### Gravity

```
FVector Gravity
```

The gravitational acceleration vector [cm/s^2]

### GravityScale

```
float32 GravityScale
```

Scale factor applied to the world gravity and also to the clothing simulation interactor gravity. Does not affect the gravity if set using the override below.

### DampingCoefficient

```
float32 DampingCoefficient
```

The amount of global damping applied to the cloth velocities, also known as point damping.  Point damping improves simulation stability, but can also cause an overall slow-down effect and therefore is best left to very small percentage amounts.

### bUseGravityOverride

```
bool bUseGravityOverride
```

Use the config gravity value instead of world gravity.

### Drag

```
FChaosClothWeightedValue Drag
```

The aerodynamic coefficient of drag applying on each particle.  If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Drag" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.  Otherwise only the Low value is meaningful and sufficient to set the aerodynamic drag.

### LONG RANGE ATTACHMENT

```
LONG RANGE ATTACHMENT TetherStiffness FChaosClothWeightedValue TetherStiffness
```

The tethers' stiffness of the long range attachment constraints.  The long range attachment connects each of the cloth particles to its closest fixed point with a spring constraint.  This can be used to compensate for a lack of stretch resistance when the iterations count is kept low for performance reasons.  Can lead to an unnatural pull string puppet like behavior.  If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Tether Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.  Otherwise only the Low value is meaningful and sufficient to enable this constraint.  Use 0, 0 to disable.

### bUseGeodesicDistance

```
bool bUseGeodesicDistance
```

Use geodesic instead of euclidean distance calculations for the Long Range Attachment constraint, which is slower at setup but more accurate at establishing the correct position and length of the tethers, and therefore is less prone to artifacts during the simulation.

### TetherScale

```
FChaosClothWeightedValue TetherScale
```

The limit scale of the long range attachment constraints (aka tether limit).  If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Tether Scale" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.  Otherwise only the Low value is meaningful and sufficient to set the tethers' scale.

### PROPERTIES

```
MASS PROPERTIES
```
### TotalMass

```
float32 TotalMass
```

The value used when Mass Mode is set to TotalMass.

### MassMode

```
EClothMassMode MassMode
```

How cloth particle mass is determined -  Uniform Mass: Every particle's mass will be set to the value specified in the UniformMass setting. Mostly to avoid as it can cause some serious issues with irregular tessellations.  -  Total Mass: The total mass is distributed equally over all the particles. Useful when referencing a specific garment size and feel.  -  Density: A constant mass density is used. Density is usually the preferred way of setting mass since it allows matching real life materials' density values.

### Density

```
float32 Density
```

The value used when Mass Mode is set to Density.  Melton Wool: 0.7 Heavy leather: 0.6 Polyurethane: 0.5 Denim: 0.4 Light leather: 0.3 Cotton: 0.2 Silk: 0.1

### UniformMass

```
float32 UniformMass
```

The value used when the Mass Mode is set to Uniform Mass.

### MATERIAL PROPERTIES

```
MATERIAL PROPERTIES EdgeStiffnessWeighted FChaosClothWeightedValue EdgeStiffnessWeighted
```

The Stiffness of segments constraints. Increase the iteration count for stiffer materials.  If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Edge Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.  Otherwise only the Low value is meaningful and sufficient to enable this constraint.

### BendingStiffnessWeighted

```
FChaosClothWeightedValue BendingStiffnessWeighted
```

The Stiffness of cross segments and bending elements constraints. Increase the iteration count for stiffer materials.  If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Bend Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.  Otherwise only the Low value is meaningful and sufficient to enable this constraint.

### AreaStiffnessWeighted

```
FChaosClothWeightedValue AreaStiffnessWeighted
```

The stiffness of the surface area preservation constraints. Increase the iteration count for stiffer materials.  If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Bend Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them.  Otherwise only the Low value is meaningful and sufficient to enable this constraint.

### bUseBendingElements

```
bool bUseBendingElements
```

Enable the more accurate bending element constraints instead of the faster cross-edge spring constraints used for controlling bending stiffness.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UChaosClothConfig::StaticClass()
```
