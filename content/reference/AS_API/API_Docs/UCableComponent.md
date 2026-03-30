# UCableComponent

**Visibility:** public

## Inheritance

UMeshComponent → UCableComponent

## Description

Component that allows you to specify custom triangle mesh geometry

## CABLE

### bSkipCableUpdateWhenNotVisible

```
bool bSkipCableUpdateWhenNotVisible bAttachEnd bool bAttachEnd
```

Should we fix the end to something (using AttachEndTo and EndLocation), or leave it free.  If false, AttachEndTo and EndLocation are just used for initial location of end of cable

### AttachEndToSocketName

```
FName AttachEndToSocketName
```

Socket name on the AttachEndTo component to attach to

### EndLocation

```
FVector EndLocation
```

End location of cable, relative to AttachEndTo (or AttachEndToSocketName) if specified, otherwise relative to cable component.

### CableLength

```
float32 CableLength
```

Rest length of the cable

### NumSegments

```
int NumSegments
```

How many segments the cable has

### SubstepTime

```
float32 SubstepTime
```

Controls the simulation substep time for the cable

### SolverIterations

```
int SolverIterations
```

The number of solver iterations controls how 'stiff' the cable is

### bEnableStiffness

```
bool bEnableStiffness
```

Add stiffness constraints to cable.

### bUseSubstepping

```
bool bUseSubstepping
```

When false, will still wait for SubstepTime to elapse before updating, but will only run the cable simulation once using all of accumulated simulation time

### bAttachStart

```
bool bAttachStart
```

Should we fix the start to something, or leave it free.  If false, component transform is just used for initial location of start of cable

### bSkipCableUpdateWhenNotOwnerRecentlyRendered

```
bool bSkipCableUpdateWhenNotOwnerRecentlyRendered
```
### bEnableCollision

```
bool bEnableCollision
```

EXPERIMENTAL. Perform sweeps for each cable particle, each substep, to avoid collisions with the world.  Uses the Collision Preset on the component to determine what is collided with.  This greatly increases the cost of the cable simulation.

### CollisionFriction

```
float32 CollisionFriction
```

If collision is enabled, control how much sliding friction is applied when cable is in contact.

### AttachedComponent

```
const USceneComponent AttachedComponent
```

Gets the specific USceneComponent that the cable is attached to

### AttachedActor

```
const AActor AttachedActor
```

Gets the Actor that the cable is attached to

### FORCES

```
CABLE FORCES
```
### CableGravityScale

```
float32 CableGravityScale
```

Scaling applied to world gravity affecting this cable.

### CableForce

```
FVector CableForce
```

Force vector (world space) applied to all particles in cable.

### RENDERING

```
CABLE RENDERING
```
### TileMaterial

```
float32 TileMaterial
```

How many times to repeat the material along the length of the cable

### NumSides

```
int NumSides
```

Number of sides of the cable geometry

### CableWidth

```
float32 CableWidth
```

How wide the cable geometry is

---

## CABLE

### SetAttachEndToComponent

```
void SetAttachEndToComponent(USceneComponent Component, FName SocketName = NAME_None)
```

Attaches the end of the cable to a specific Component

### GetAttachedComponent

```
USceneComponent GetAttachedComponent()const
```

Gets the specific USceneComponent that the cable is attached to

### GetCableParticleLocations

```
void GetCableParticleLocations(TArray<FVector>& Locations)const
```

Get array of locations of particles (in world space) making up the cable simulation.

### SetAttachEndTo

```
void SetAttachEndTo(AActor Actor, FName ComponentProperty, FName SocketName = NAME_None)
```

Attaches the end of the cable to a specific Component within an Actor

### GetAttachedActor

```
AActor GetAttachedActor()const
```

Gets the Actor that the cable is attached to

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UCableComponent UCableComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UCableComponent UCableComponent::GetOrCreate

```
static UCableComponent UCableComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UCableComponent UCableComponent::Create

```
static UCableComponent UCableComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UCableComponent::StaticClass

```
static UClass UCableComponent::StaticClass()
```
