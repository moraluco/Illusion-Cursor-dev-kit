# AActor

**Visibility:** public

## Inheritance

UObject → AActor → AAmbientSound → AAnimationEditorPreviewActor → AARActor → AAROriginActor

## Description

and 101 other children

Actor is the base class for an Object that can be placed or spawned in a level.  Actors may contain a collection of ActorComponents, which can be used to control how actors move, how they are rendered, etc.  The other main function of an Actor is the replication of properties and function calls across the network during play.

Actor initialization has multiple steps, here's the order of important virtual functions that get called: - UObject::PostLoad: For actors statically placed in a level, the normal UObject PostLoad gets called both in the editor and during gameplay.  This is not called for newly spawned actors.  - UActorComponent::OnComponentCreated: When an actor is spawned in the editor or during gameplay, this gets called for any native components.  For blueprint-created components, this gets called during construction for that component.  This is not called for components loaded from a level.  - AActor::PreRegisterAllComponents: For statically placed actors and spawned actors that have native root components, this gets called now.  For blueprint actors without a native root component, these registration functions get called later during construction.  - UActorComponent::RegisterComponent: All components are registered in editor and at runtime, this creates their physical/visual representation.  These calls may be distributed over multiple frames, but are always after PreRegisterAllComponents.  This may also get called later on after an UnregisterComponent call removes it from the world.  - AActor::PostRegisterAllComponents: Called for all actors both in the editor and in gameplay, this is the last function that is called in all cases.  - AActor::PostActorCreated: When an actor is created in the editor or during gameplay, this gets called right before construction.  This is not called for components loaded from a level.  - AActor::UserConstructionScript: Called for blueprints that implement a construction script.  - AActor::OnConstruction: Called at the end of ExecuteConstruction, which calls the blueprint construction script.  This is called after all blueprint-created components are fully created and registered.  This is only called during gameplay for spawned actors, and may get rerun in the editor when changing blueprints.  - AActor::PreInitializeComponents: Called before InitializeComponent is called on the actor's components.  This is only called during gameplay and in certain editor preview windows.  - UActorComponent::Activate: This will be called only if the component has bAutoActivate set.  It will also got called later on if a component is manually activated.  - UActorComponent::InitializeComponent: This will be called only if the component has bWantsInitializeComponentSet.  This only happens once per gameplay session.  - AActor::PostInitializeComponents: Called after the actor's components have been initialized, only during gameplay and some editor previews.  - AActor::BeginPlay: Called when the level starts ticking, only during actual gameplay.  This normally happens right after PostInitializeComponents but can be delayed for networked or child actors.

### See also

- https://​docs​.unrealengine​.com​/Programming​/UnrealArchitecture​/Actors @see https://​docs​.unrealengine​.com​/Programming​/UnrealArchitecture​/Actors​/ActorLifecycle @see UActorComponent

## ACTOR

### LifeSpan

```
float32 LifeSpan
```

Get the remaining lifespan of this actor. If zero is returned the actor lives forever.

### ParentActor

```
const AActor ParentActor
```

If this Actor was created by a Child Actor Component returns the Actor that owns that Child Actor Component

### Tags

```
TArray<FName> Tags
```

Array of tags that can be used for grouping and categorizing.

### InitialLifeSpan

```
float32 InitialLifeSpan
```

How long this Actor lives before dying, 0=forever. Note this is the INITIAL value and should not be modified once play has begun.

### CustomTimeDilation

```
float32 CustomTimeDilation
```

Allow each actor to run at a different time speed. The DeltaTime for a frame is multiplied by the global TimeDilation (in WorldSettings) and this CustomTimeDilation for this actor's tick.

### bAutoDestroyWhenFinished

```
bool bAutoDestroyWhenFinished
```

If true then destroy self when "finished", meaning all relevant components report that they are done and no timelines or timers are in flight.

### SpawnCollisionHandlingMethod

```
ESpawnActorCollisionHandlingMethod SpawnCollisionHandlingMethod
```

Controls how to handle spawning this actor in a situation where it's colliding with something else. "Default" means AlwaysSpawn here.

### bCanBeDamaged

```
bool bCanBeDamaged
```

Whether this actor can take damage. Must be true for damage events (e.g. ReceiveDamage()) to be called.  @see https://​www​.unrealengine​.com​/blog​/damage-in-ue4 @see TakeDamage(), ReceiveDamage()

### bFindCameraComponentWhenViewTarget

```
bool bFindCameraComponentWhenViewTarget
```

If true, this actor should search for an owned camera component to view through when used as a view target.

ActorTimeDilation

### ActorTimeDilation

```
const float32 ActorTimeDilation
```
### ActorTimeDilation

```
Get ActorTimeDilation
```

this can be used for input control or speed control for slomo.  We don't want to scale input globally because input can be used for UI, which do not care for TimeDilation.

### Instigator

```
APawn Instigator
```

Pawn responsible for damage and other gameplay events caused by this actor.

### GameTimeSinceCreation

```
const float32 GameTimeSinceCreation
```

The number of seconds (in game time) since this Actor was created, relative to Get Game Time In Seconds.

### PivotOffset

```
FVector PivotOffset
```

Local space pivot offset for the actor, only used in the editor

### AttachParentSocketName

```
const FName AttachParentSocketName
```

Walk up the attachment chain from RootComponent until we encounter a different actor, and return the socket name in the component. If we are not attached to a component in a different actor, returns NAME_None

### Layers

```
TArray<FName> Layers
```

Layers the actor belongs to.  This is outside of the editoronly data to allow hiding of LD-specified layers at runtime for profiling.

### ActorGuid

```
FGuid ActorGuid
```

The GUID for this actor.

Note: Don't use VisibleAnywhere here to avoid getting the CPF_Edit flag and get this property reset when resetting to defaults.  See FActorDetails::AddActorCategory and EditorUtilities::CopySingleProperty for details.

### AttachParentActor

```
const AActor AttachParentActor
```

Walk up the attachment chain from RootComponent until we encounter a different actor, and return it. If we are not attached to a component in a different actor, returns nullptr

---

## ACTOR \| TICK

### TickableWhenPaused

```
bool TickableWhenPaused
```

Gets whether this actor can tick when paused.

### ActorTickInterval

```
float32 ActorTickInterval
```

Returns the tick interval of this actor's primary tick function

---

## COLLISION

### UpdateOverlapsMethodDuringLevelStreaming

```
EActorUpdateOverlapsMethod UpdateOverlapsMethodDuringLevelStreaming
```

Condition for calling UpdateOverlaps() to initialize overlap state when loaded in during level streaming.  If set to 'UseConfigDefault', the default specified in ini (displayed in 'DefaultUpdateOverlapsMethodDuringLevelStreaming') will be used.  If overlaps are not initialized, this actor and attached components will not have an initial state of what objects are touching it, and overlap events may only come in once one of those objects update overlaps themselves (for example when moving).  However if an object touching it does initialize state, both objects will know about their touching state with each other.  This can be a potentially large performance savings during level loading and streaming, and is safe if the object and others initially overlapping it do not need the overlap state because they will not trigger overlap notifications.

### Note that if 'bGenerateOverlapEventsDuringLevelStreaming' is true, overlaps are always updated in this case, but that flag determines whether the Begin/End overlap events are triggered.

```
Note that if 'bGenerateOverlapEventsDuringLevelStreaming' is true, overlaps are always updated in this case, but that flag determines whether the Begin/End overlap events are triggered.
```

@see bGenerateOverlapEventsDuringLevelStreaming, DefaultUpdateOverlapsMethodDuringLevelStreaming, GetUpdateOverlapsMethodDuringLevelStreaming()

### OnActorHit

```
FActorHitSignature OnActorHit
```

Called when this Actor hits (or is hit by) something solid. This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation.  For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' event.  @note For collisions during physics simulation to generate hit events, 'Simulation Generates Hit Events' must be enabled.

### bGenerateOverlapEventsDuringLevelStreaming

```
bool bGenerateOverlapEventsDuringLevelStreaming
```

If true, this actor will generate overlap Begin/End events when spawned as part of level streaming, which includes initial level load.  You might enable this is in the case where a streaming level loads around an actor and you want Begin/End overlap events to trigger.  @see UpdateOverlapsMethodDuringLevelStreaming

### OnActorBeginOverlap

```
FActorBeginOverlapSignature OnActorBeginOverlap
```

Called when another actor begins to overlap this actor, for example a player walking into a trigger.  For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events.  @note Components on both this and the other Actor must have bGenerateOverlapEvents set to true to generate overlap events.

### OnActorEndOverlap

```
FActorEndOverlapSignature OnActorEndOverlap
```

Called when another actor stops overlapping this actor.  @note Components on both this and the other Actor must have bGenerateOverlapEvents set to true to generate overlap events.

### ActorEnableCollision

```
bool ActorEnableCollision
```

Get current state of collision for the whole actor

---

## DATALAYERS

### DataLayers

```
TArray<FActorDataLayer> DataLayers
```

DataLayers the actor belongs to.

### EDITOR SCRIPTING | ACTOR EDITING

```
EDITOR SCRIPTING | ACTOR EDITING DefaultActorLabel const FString DefaultActorLabel
```

Returns this actor's default label (does not include any numeric suffix).  Actor labels are only available in development builds.

---

## GAME

### OnDestroyed

```
FActorDestroyedSignature OnDestroyed
```

Event triggered when the actor has been explicitly destroyed.

### InstigatorController

```
const AController InstigatorController
```

Returns the instigator's controller for this actor, or nullptr if there is none.

### OnEndPlay

```
FActorEndPlaySignature OnEndPlay
```

Event triggered when the actor is being deleted or removed from a level.

---

## GAME \| DAMAGE

### OnTakePointDamage

```
FTakePointDamageSignature OnTakePointDamage
```

Called when the actor is damaged by point damage.

### OnTakeAnyDamage

```
FTakeAnyDamageSignature OnTakeAnyDamage
```

Called when the actor is damaged in any way.

### OnTakeRadialDamage

```
FTakeRadialDamageSignature OnTakeRadialDamage
```

Called when the actor is damaged by radial damage.

---

## HLOD

### bEnableAutoLODGeneration

```
bool bEnableAutoLODGeneration
```

Whether this actor should be considered or not during HLOD generation.

### HLODLayer

```
UHLODLayer HLODLayer
```

The UHLODLayer in which this actor should be included.

---

## INPUT

### AutoReceiveInput

```
EAutoReceiveInput AutoReceiveInput
```

Automatically registers this actor to receive input from a player.

### InputPriority

```
int InputPriority
```

The priority of this input component when pushed in to the stack.

INPUT|MOUSE INPUT

### OnReleased

```
FActorOnReleasedSignature OnReleased
```

Called when the left mouse button is released while the mouse is over this actor and click events are enabled in the player controller.

### OnClicked

```
FActorOnClickedSignature OnClicked
```

Called when the left mouse button is clicked while the mouse is over this actor and click events are enabled in the player controller.

### OnEndCursorOver

```
FActorEndCursorOverSignature OnEndCursorOver
```

Called when the mouse cursor is moved off this actor if mouse over events are enabled in the player controller.

### OnBeginCursorOver

```
FActorBeginCursorOverSignature OnBeginCursorOver
```

Called when the mouse cursor is moved over this actor if mouse over events are enabled in the player controller.

INPUT|TOUCH INPUT

### OnInputTouchBegin

```
FActorOnInputTouchBeginSignature OnInputTouchBegin
```

Called when a touch input is received over this actor when touch events are enabled in the player controller.

### OnInputTouchLeave

```
FActorEndTouchOverSignature OnInputTouchLeave
```

Called when a finger is moved off this actor when touch over events are enabled in the player controller.

### OnInputTouchEnter

```
FActorBeginTouchOverSignature OnInputTouchEnter
```

Called when a finger is moved over this actor when touch over events are enabled in the player controller.

### OnInputTouchEnd

```
FActorOnInputTouchEndSignature OnInputTouchEnd
```

Called when a touch input is received over this component when touch events are enabled in the player controller.

---

## LEVEL

### Level

```
const ULevel Level
```

Return the ULevel that this Actor is part of.

### LevelTransform

```
const FTransform LevelTransform
```

Return the FTransform of the level this actor is a part of.

---

## NETWORKING

### LocalRole

```
const ENetRole LocalRole
```

Returns how much control the local machine has over this actor.

---

## RENDERING

### SpriteScale

```
float32 SpriteScale
```

The scale to apply to any billboard components in editor builds (happens in any WITH_EDITOR build, including non-cooked games).

### bHidden

```
bool bHidden
```

Allows us to only see this Actor in the Editor, and not in the actual game.  @see SetActorHiddenInGame()

---

## REPLICATION

### bAlwaysRelevant

```
bool bAlwaysRelevant
```

Always relevant for network (overrides bOnlyRelevantToOwner).

### MinNetUpdateFrequency

```
float32 MinNetUpdateFrequency
```

Used to determine what rate to throttle down to when replicated properties are changing infrequently

### NetCullDistanceSquared

```
float32 NetCullDistanceSquared
```

Square of the max distance from the client's viewpoint that this actor is relevant and will be replicated.

### bOnlyRelevantToOwner

```
bool bOnlyRelevantToOwner
```

If true, this actor is only relevant to its owner. If this flag is changed during play, all non-owner channels would need to be explicitly closed.

### NetUpdateFrequency

```
float32 NetUpdateFrequency
```

How often (per second) this actor will be considered for replication, used to determine NetUpdateTime

### NetDormancy

```
ENetDormancy NetDormancy
```

Dormancy setting for actor to take itself off of the replication list without being destroyed on clients.

### NetPriority

```
float32 NetPriority
```

Priority for this actor when checking for replication in a low bandwidth or saturated situation, higher priority means it is more likely to replicate

### bReplicates

```
bool bReplicates
```

If true, this actor will replicate to remote machines @see SetReplicates()

### bNetUseOwnerRelevancy

```
bool bNetUseOwnerRelevancy
```

If actor has valid Owner, call Owner's IsNetRelevantFor and GetNetPriority

### ReplicatedMovement

```
FRepMovement ReplicatedMovement
```

Used for replication of our RootComponent's position and velocity

---

## TICK

### PrimaryActorTick

```
FActorTickFunction PrimaryActorTick
```

Primary Actor tick function, which calls TickActor().  Tick functions can be configured to control whether ticking is enabled, at what time during a frame the update occurs, and to set up tick dependencies.  @see https://​docs​.unrealengine​.com​/API​/Runtime​/Engine​/Engine​/FTickFunction @see AddTickPrerequisiteActor(), AddTickPrerequisiteComponent()

---

## TRANSFORMATION

### ActorRightVector

```
const FVector ActorRightVector
```

Get the right (Y) vector (length 1.0) from this Actor, in world space.

### Velocity

```
const FVector Velocity
```

Returns velocity (in cm/s (Unreal Units/second) of the rootcomponent if it is either using physics or has an associated MovementComponent

### ActorScale3D

```
FVector ActorScale3D
```

Returns the Actor's world-space scale.

### ActorForwardVector

```
const FVector ActorForwardVector
```

Get the forward (X) vector (length 1.0) from this Actor, in world space.

### ActorUpVector

```
const FVector ActorUpVector
```

Get the up (Z) vector (length 1.0) from this Actor, in world space.

### RootComponent

```
USceneComponent RootComponent
```

The component that defines the transform (location, rotation, scale) of this Actor in the world, all other components must be attached to this one somehow

### ActorRelativeScale3D

```
FVector ActorRelativeScale3D
```

Return the actor's relative scale 3d

---

## WORLDPARTITION

### RuntimeGrid

```
FName RuntimeGrid
```

Determine in which partition grid this actor will be placed in the partition (if the world is partitioned).  If None, the decision will be left to the partition.

---

## VARIABLES

### ActorTransform

```
FTransform ActorTransform
```
### RemoteRole

```
const ENetRole RemoteRole
```

Describes how much control the remote machine has over the actor.

### ActorLocation

```
FVector ActorLocation RayTracingGroupId int RayTracingGroupId
```

The RayTracingGroupId this actor and its components belong to. (For components that did not specify any)

### ActorRotation

```
FRotator ActorRotation Owner AActor Owner
```

Owner of this Actor, used primarily for replication (bNetUseOwnerRelevancy & bOnlyRelevantToOwner) and visibility (PrimitiveComponent bOwnerNoSee and bOnlyOwnerSee) @see SetOwner(), GetOwner()

### FolderPath

```
FName FolderPath
```

The folder path of this actor in the world.  If the actor's level uses the actor folder objects feature, the path is computed using FolderGuid.  If not, it contains the actual path (empty=root, / separated).

### ActorQuat

```
const FQuat ActorQuat
```
### ParentComponent

```
const UChildActorComponent ParentComponent
```

The UChildActorComponent that owns this Actor.

---

## ACTOR

### ActorHasTag

```
bool ActorHasTag(FName Tag)const
```

See if this actor's Tags array contains the supplied name tag

### GetGameTimeSinceCreation

```
float32 GetGameTimeSinceCreation()const
```

The number of seconds (in game time) since this Actor was created, relative to Get Game Time In Seconds.

### OnReset

```
void OnReset()
```

Event called when this Actor is reset to its initial state

### used when restarting level without reloading.

```
used when restarting level without reloading.
```

GetComponentByClass

### UActorComponent GetComponentByClass

```
UActorComponent GetComponentByClass(TSubclassOf<UActorComponent> ComponentClass)const
```

Searches components array and returns first encountered component of the specified class

### DestroyActor

```
void DestroyActor()
```

Destroy the actor

### OnEndViewTarget

```
void OnEndViewTarget(APlayerController PC)
```

Event called when this Actor is no longer the view target for the given PlayerController.

### OnBecomeViewTarget

```
void OnBecomeViewTarget(APlayerController PC)
```

Event called when this Actor becomes the view target for the given PlayerController.

### GetOwner

```
AActor GetOwner()const
```

Get the owner of this Actor, used primarily for network replication.

### SetOwner

```
void SetOwner(AActor NewOwner)
```

Set the owner of this Actor, used primarily for network replication.

**Parameters**

NewOwner
AActor

The Actor who takes over ownership of this Actor

GetComponentsByClass
TArray<UActorComponent> GetComponentsByClass(
TSubclassOf<UActorComponent> 	ComponentClass
	) const

Gets all the components that inherit from the given class.  Currently returns an array of UActorComponent which must be cast to the correct type.  This intended to only be used by blueprints. Use GetComponents() in C++.

SetLifeSpan
void SetLifeSpan(
float32 	InLifespan
	)

Set the lifespan of this actor. When it expires the object will be destroyed. If requested lifespan is 0, the timer is cleared and the actor will not be destroyed.

GetComponentsByTag
TArray<UActorComponent> GetComponentsByTag(
TSubclassOf<UActorComponent> 	ComponentClass,
FName 	Tag
	) const

Gets all the components that inherit from the given class with a given tag.

GetComponentsByInterface
TArray<UActorComponent> GetComponentsByInterface(
TSubclassOf<UInterface> 	Interface
	) const

Gets all the components that implements the given interface.

GetAttachParentActor
AActor GetAttachParentActor() const

Walk up the attachment chain from RootComponent until we encounter a different actor, and return it. If we are not attached to a component in a different actor, returns nullptr

GetLifeSpan
float32 GetLifeSpan() const

Get the remaining lifespan of this actor. If zero is returned the actor lives forever.

GetActorTimeDilation
float32 GetActorTimeDilation() const
Get ActorTimeDilation

this can be used for input control or speed control for slomo.  We don't want to scale input globally because input can be used for UI, which do not care for TimeDilation.

IsChildActor
bool IsChildActor() const

Returns whether this Actor was spawned by a child actor component

GetParentComponent
UChildActorComponent GetParentComponent() const

If this Actor was created by a Child Actor Component returns that Child Actor Component

GetActorEyesViewPoint
void GetActorEyesViewPoint(
FVector& 	OutLocation,
FRotator& 	OutRotation
	) const

Returns the point of view of the actor.  Note that this doesn't mean the camera, but the 'eyes' of the actor.  For example, for a Pawn, this would define the eye height location, and view rotation (which is different from the pawn rotation which has a zeroed pitch component).  A camera first person view will typically use this view point. Most traces (weapon, AI) will be done from this view point.

**Parameters**

OutLocation
FVector&

location of view point

OutRotation
FRotator&

view rotation of actor.

GetAttachParentSocketName
FName GetAttachParentSocketName() const

Walk up the attachment chain from RootComponent until we encounter a different actor, and return the socket name in the component. If we are not attached to a component in a different actor, returns NAME_None

GetAttachedActors
void GetAttachedActors(
TArray<AActor>& 	OutActors,
bool 	bResetArray	 = 	true,
bool 	bRecursivelyIncludeAttachedActors	 = 	false
	) const

Find all Actors which are attached directly to a component in this actor

GetAllChildActors
void GetAllChildActors(
TArray<AActor>& 	ChildActors,
bool 	bIncludeDescendants	 = 	true
	) const

Returns a list of all actors spawned by our Child Actor Components, including children of children.  This does not return the contents of the Children array

GetParentActor
AActor GetParentActor() const

If this Actor was created by a Child Actor Component returns the Actor that owns that Child Actor Component

---

## ACTOR \| TICK

### RemoveTickPrerequisiteComponent

```
void RemoveTickPrerequisiteComponent(UActorComponent PrerequisiteComponent)
```

Remove tick dependency on PrerequisiteComponent.

### RemoveTickPrerequisiteActor

```
void RemoveTickPrerequisiteActor(AActor PrerequisiteActor)
```

Remove tick dependency on PrerequisiteActor.

### SetTickableWhenPaused

```
void SetTickableWhenPaused(bool bTickableWhenPaused)
```

Sets whether this actor can tick when paused.

### SetActorTickInterval

```
void SetActorTickInterval(float32 TickInterval)
```

Sets the tick interval of this actor's primary tick function. Will not enable a disabled tick function. Takes effect on next tick.

**Parameters**

TickInterval
float32

The rate at which this actor should be ticking

SetTickGroup
void SetTickGroup(
ETickingGroup 	NewTickGroup
	)

Sets the ticking group for this actor.

**Parameters**

NewTickGroup
ETickingGroup

the new value to assign

SetActorTickEnabled
void SetActorTickEnabled(
bool 	bEnabled
	)

Set this actor's tick functions to be enabled or disabled. Only has an effect if the function is registered This only modifies the tick function on actor itself

**Parameters**

bEnabled
bool

Whether it should be enabled or not

AddTickPrerequisiteComponent
void AddTickPrerequisiteComponent(
UActorComponent 	PrerequisiteComponent
	)

Make this actor tick after PrerequisiteComponent. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired.

AddTickPrerequisiteActor
void AddTickPrerequisiteActor(
AActor 	PrerequisiteActor
	)

Make this actor tick after PrerequisiteActor. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired.

IsActorTickEnabled
bool IsActorTickEnabled() const

Returns whether this actor has tick enabled or not

GetActorTickInterval
float32 GetActorTickInterval() const

Returns the tick interval of this actor's primary tick function

GetTickableWhenPaused
bool GetTickableWhenPaused()

Gets whether this actor can tick when paused.

---

## AI

### MakeNoise

```
void MakeNoise(float32 Loudness = 1.000000, APawn NoiseInstigator = nullptr, FVector NoiseLocation = FVector(),
```

float32 	MaxRange	 = 	0.000000,

FName 	Tag	 = 	NAME_None

	)

### Trigger a noise caused by a given Pawn, at a given location.  Note that the NoiseInstigator Pawn MUST have a PawnNoiseEmitterComponent for the noise to be detected by a PawnSensingComponent.  Senders of MakeNoise should have an Instigator if they are not pawns, or pass a NoiseInstigator.

```
Trigger a noise caused by a given Pawn, at a given location.  Note that the NoiseInstigator Pawn MUST have a PawnNoiseEmitterComponent for the noise to be detected by a PawnSensingComponent.  Senders of MakeNoise should have an Instigator if they are not pawns, or pass a NoiseInstigator.
```

**Parameters**

Loudness
float32

The relative loudness of this noise. Usual range is 0 (no noise) to 1 (full volume). If MaxRange is used, this scales the max range, otherwise it affects the hearing range specified by the sensor.

NoiseInstigator
APawn

Pawn responsible for this noise.  Uses the actor's Instigator if NoiseInstigator is null

NoiseLocation
FVector

Position of noise source.  If zero vector, use the actor's location.

MaxRange
float32

Max range at which the sound may be heard. A value of 0 indicates no max range (though perception may have its own range). Loudness scales the range. (Note: not supported for legacy PawnSensingComponent, only for AIPerception)

Tag
FName

Identifier for the noise.

---

## COLLISION

### ActorEndOverlap

```
void ActorEndOverlap(AActor OtherActor)
```

Event when an actor no longer overlaps another actor, and they have separated.  Note: Components on both this and the other Actor must have bGenerateOverlapEvents set to true to generate overlap events.

### IsOverlappingActor

```
bool IsOverlappingActor(const AActor Other)const
```

Check whether any component of this Actor is overlapping any component of another Actor.

**Parameters**

Other
const AActor

The other Actor to test against

**Returns**

Whether any component of this Actor is overlapping any component of another Actor.

GetActorBounds
void GetActorBounds(
bool 	bOnlyCollidingComponents,
FVector& 	Origin,
FVector& 	BoxExtent,
bool 	bIncludeFromChildActors	 = 	false
	) const

Returns the bounding box of all components that make up this Actor (excluding ChildActorComponents).

**Parameters**

bOnlyCollidingComponents
bool

If true, will only return the bounding box for components with collision enabled.

Origin
FVector&

Set to the center of the actor in world space

BoxExtent
FVector&

Set to half the actor's size in 3d space

bIncludeFromChildActors
bool

If true then recurse in to ChildActor components

GetActorEnableCollision
bool GetActorEnableCollision() const

Get current state of collision for the whole actor

Hit
void Hit(
UPrimitiveComponent 	MyComp,
AActor 	Other,
UPrimitiveComponent 	OtherComp,
bool 	bSelfMoved,
FVector 	HitLocation,
FVector 	HitNormal,
FVector 	NormalImpulse,
FHitResult 	Hit
	)

Event when this actor bumps into a blocking object, or blocks another actor that bumps into it.  This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation.  For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' event.

Note: For collisions during physics simulation to generate hit events, 'Simulation Generates Hit Events' must be enabled.  Note: When receiving a hit from another object's movement (bSelfMoved is false), the directions of 'Hit.Normal' and 'Hit.ImpactNormal' will be adjusted to indicate force from the other object against this object.  Note: NormalImpulse will be filled in for physics-simulating bodies, but will be zero for swept-component blocking collisions.

GetOverlappingActors
void GetOverlappingActors(
TArray<AActor>& 	OverlappingActors,
TSubclassOf<AActor> 	ClassFilter	 = 	nullptr
	) const

Returns list of actors this actor is overlapping (any component overlapping any component). Does not return itself.

**Parameters**

OverlappingActors
TArray<AActor>&

[out] Returned list of overlapping actors

ClassFilter
TSubclassOf<AActor>

[optional] If set, only returns actors of this class or subclasses

SetActorEnableCollision
void SetActorEnableCollision(
bool 	bNewActorEnableCollision
	)

Allows enabling/disabling collision for the whole actor

ActorBeginOverlap
void ActorBeginOverlap(
AActor 	OtherActor
	)

Event when this actor overlaps another actor, for example a player walking into a trigger.  For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events.  Note: Components on both this and the other Actor must have bGenerateOverlapEvents set to true to generate overlap events.

GetOverlappingComponents
void GetOverlappingComponents(
TArray<UPrimitiveComponent>& 	OverlappingComponents
	) const

Returns list of components this actor is overlapping.

EDITOR SCRIPTING | ACTOR EDITING
IsEditable
bool IsEditable() const

Returns true if this actor is allowed to be displayed, selected and manipulated by the editor.

IsHiddenEd
bool IsHiddenEd() const

Returns true if this actor is hidden in the editor viewports, also checking temporary flags.

IsHiddenEdAtStartup
bool IsHiddenEdAtStartup() const

Returns true if the actor is hidden upon editor startup/by default, false if it is not

GetActorLabel
const FString& GetActorLabel(
bool 	bCreateIfNone	 = 	true
	) const

Returns this actor's current label.  Actor labels are only available in development builds.

IsSelectable
bool IsSelectable() const

Returns true if this actor can EVER be selected in a level in the editor.  Can be overridden by specific actors to make them unselectable.

IsTemporarilyHiddenInEditor
bool IsTemporarilyHiddenInEditor(
bool 	bIncludeParent	 = 	false
	) const

Returns whether or not this actor was explicitly hidden in the editor for the duration of the current editor session

**Parameters**

bIncludeParent
bool

Whether to recurse up child actor hierarchy or not

GetFolderPath
FName GetFolderPath() const

Returns this actor's folder path. Actor folder paths are only available in development builds.

SetActorLabel
void SetActorLabel(
FString 	NewActorLabel,
bool 	bMarkDirty	 = 	true
	)

Assigns a new label to this actor.  Actor labels are only available in development builds.

**Parameters**

NewActorLabel
FString

The new label string to assign to the actor.  If empty, the actor will have a default label.

bMarkDirty
bool

If true the actor's package will be marked dirty for saving.  Otherwise it will not be.  You should pass false for this parameter if dirtying is not allowed (like during loads)

SetFolderPath
void SetFolderPath(
FName 	NewFolderPath
	)

Assigns a new folder to this actor. Actor folder paths are only available in development builds.

**Parameters**

NewFolderPath
FName

The new folder to assign to the actor.

SetIsTemporarilyHiddenInEditor
void SetIsTemporarilyHiddenInEditor(
bool 	bIsHidden
	)

Explicitly sets whether or not this actor is hidden in the editor for the duration of the current editor session

**Parameters**

bIsHidden
bool

True if the actor is hidden

GetDefaultActorLabel
FString GetDefaultActorLabel() const

Returns this actor's default label (does not include any numeric suffix).  Actor labels are only available in development builds.

---

## GAME

### IsActorBeingDestroyed

```
bool IsActorBeingDestroyed()const
```

Returns true if this actor is currently being destroyed, some gameplay events may be unsafe

### GetInstigator

```
APawn GetInstigator()const
```

Returns the instigator for this actor, or nullptr if there is none.

### GetInstigatorController

```
AController GetInstigatorController()const
```

Returns the instigator's controller for this actor, or nullptr if there is none.

---

## GAME \| DAMAGE

PointDamage

### void PointDamage

```
void PointDamage(float32 Damage, const UDamageType DamageType, FVector HitLocation, FVector HitNormal, UPrimitiveComponent HitComponent, FName BoneName, FVector ShotFromDirection, AController InstigatedBy, AActor DamageCauser, FHitResult HitInfo)
```

Event when this actor takes POINT damage

### AnyDamage

```
void AnyDamage(float32 Damage, const UDamageType DamageType, AController InstigatedBy, AActor DamageCauser)
```

Event when this actor takes ANY damage

### RadialDamage

```
void RadialDamage(float32 DamageReceived, const UDamageType DamageType, FVector Origin, FHitResult HitInfo, AController InstigatedBy, AActor DamageCauser)
```

Event when this actor takes RADIAL damage

---

## INPUT

### EnableInput

```
void EnableInput(APlayerController PlayerController)
```

Pushes this actor on to the stack of input being handled by a PlayerController.

**Parameters**

PlayerController
APlayerController

The PlayerController whose input events we want to receive.

DisableInput
void DisableInput(
APlayerController 	PlayerController
	)

Removes this actor from the stack of input being handled by a PlayerController.

**Parameters**

PlayerController
APlayerController

The PlayerController whose input events we no longer want to receive. If null, this actor will stop receiving input from all PlayerControllers.

---

## LEVEL

### GetLevel

```
ULevel GetLevel()const
```

Return the ULevel that this Actor is part of.

### GetLevelTransform

```
FTransform GetLevelTransform()const
```

Return the FTransform of the level this actor is a part of.

### MOUSE INPUT

```
MOUSE INPUT ActorOnReleased void ActorOnReleased(FKey ButtonReleased)
```

Event when this actor is under the mouse when left mouse button is released while using the clickable interface.

### ActorEndCursorOver

```
void ActorEndCursorOver()
```

Event when this actor has the mouse moved off of it with the clickable interface.

### ActorOnClicked

```
void ActorOnClicked(FKey ButtonPressed)
```

Event when this actor is clicked by the mouse when using the clickable interface.

### ActorBeginCursorOver

```
void ActorBeginCursorOver()
```

Event when this actor has the mouse moved over it with the clickable interface.

---

## NETWORKING

### GetLocalRole

```
ENetRole GetLocalRole()const
```

Returns how much control the local machine has over this actor.

### SetNetDormancy

```
void SetNetDormancy(ENetDormancy NewDormancy)
```

Puts actor in dormant networking state

### SetReplicates

```
void SetReplicates(bool bInReplicates)
```

Set whether this actor replicates to network clients. When this actor is spawned on the server it will be sent to clients as well.  Properties flagged for replication will update on clients if they change on the server.  Internally changes the RemoteRole property and handles the cases where the actor needs to be added to the network actor list.

**Parameters**

bInReplicates
bool

Whether this Actor replicates to network clients.

SetReplicateMovement
void SetReplicateMovement(
bool 	bInReplicateMovement
	)

Set whether this actor's movement replicates to network clients.

**Parameters**

bInReplicateMovement
bool

Whether this Actor's movement replicates to clients.

HasAuthority
bool HasAuthority() const

Returns whether this actor has network authority

FlushNetDormancy
void FlushNetDormancy()

Forces dormant actor to replicate but doesn't change NetDormancy state (i.e., they will go dormant again if left dormant)

ForceNetUpdate
void ForceNetUpdate()

Force actor to be updated to clients/demo net drivers

GetRemoteRole
ENetRole GetRemoteRole() const

Returns how much control the remote machine has over this actor.

TearOff
void TearOff()
Networking

Server - TearOff this actor to stop replication to clients. Will set bTearOff to true.

---

## RAYTRACING

### GetRayTracingGroupId

```
int GetRayTracingGroupId()const
```

Return the RayTracingGroupId for this actor.

### SetRayTracingGroupId

```
void SetRayTracingGroupId(int InRaytracingGroupId)
```

Specify a RayTracingGroupId for this actors. Components with invalid RayTracingGroupId will inherit the actors.

---

## RENDERING

### SetActorHiddenInGame

```
void SetActorHiddenInGame(bool bNewHidden)
```

Sets the actor to be hidden in the game

**Parameters**

bNewHidden
bool

Whether or not to hide the actor and all its components

PrestreamTextures
void PrestreamTextures(
float32 	Seconds,
bool 	bEnableStreaming,
int 	CinematicTextureGroups	 = 	0
	)

Calls PrestreamTextures() for all the actor's meshcomponents.

**Parameters**

Seconds
float32

Number of seconds to force all mip-levels to be resident

bEnableStreaming
bool

Whether to start (true) or stop (false) streaming

CinematicTextureGroups
int

Bitfield indicating which texture groups that use extra high-resolution mips

WasRecentlyRendered
bool WasRecentlyRendered(
float32 	Tolerance	 = 	0.200000
	) const

Returns true if this actor has been rendered "recently", with a tolerance in seconds to define what "recent" means.  e.g.: If a tolerance of 0.1 is used, this function will return true only if the actor was rendered in the last 0.1 seconds of game time.

**Parameters**

Tolerance
float32

How many seconds ago the actor last render time can be and still count as having been "recently" rendered.

**Returns**

Whether this actor was recently rendered.

TOUCH INPUT
ActorOnInputTouchLeave
void ActorOnInputTouchLeave(
ETouchIndex 	FingerIndex
	)

Event when this actor has a finger moved off of it with the clickable interface.

ActorOnInputTouchEnd
void ActorOnInputTouchEnd(
ETouchIndex 	FingerIndex
	)

Event when this actor is under the finger when untouched when click events are enabled.

ActorOnInputTouchEnter
void ActorOnInputTouchEnter(
ETouchIndex 	FingerIndex
	)

Event when this actor has a finger moved over it with the clickable interface.

ActorOnInputTouchBegin
void ActorOnInputTouchBegin(
ETouchIndex 	FingerIndex
	)

Event when this actor is touched when click events are enabled.

---

## TRANSFORMATION

### GetActorRelativeScale3D

```
FVector GetActorRelativeScale3D()const
```

Return the actor's relative scale 3d

### DetachRootComponentFromParent

```
void DetachRootComponentFromParent(bool bMaintainWorldPosition = true)
```

AddActorWorldTransformKeepScale

### void AddActorWorldTransformKeepScale

```
void AddActorWorldTransformKeepScale(FTransform DeltaTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)
```

Adds a delta to the transform of this actor in world space. Scale is unchanged.

### GetVerticalDistanceTo

```
float32 GetVerticalDistanceTo(const AActor OtherActor)const
```

Returns the distance from this Actor to OtherActor, ignoring XY.

### AddActorLocalOffset

```
void AddActorLocalOffset(FVector DeltaLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)
```

Adds a delta to the location of this component in its local reference frame.

**Parameters**

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

AddActorLocalRotation
void AddActorLocalRotation(
FRotator 	DeltaRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the rotation of this component in its local reference frame

**Parameters**

DeltaRotation
FRotator

The change in rotation in local space.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

AddActorLocalTransform
void AddActorLocalTransform(
FTransform 	NewTransform,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the transform of this component in its local reference frame

**Parameters**

NewTransform
FTransform

The change in transform in local space.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

GetVelocity
FVector GetVelocity() const

Returns velocity (in cm/s (Unreal Units/second) of the rootcomponent if it is either using physics or has an associated MovementComponent

GetActorTransform
const FTransform& GetActorTransform() const

Get the actor-to-world transform.

**Returns**

The transform that transforms from actor space to world space.

AddActorWorldTransform
void AddActorWorldTransform(
FTransform 	DeltaTransform,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the transform of this actor in world space. Ignores scale and sets it to (1,1,1).

GetActorForwardVector
FVector GetActorForwardVector() const

Get the forward (X) vector (length 1.0) from this Actor, in world space.

AttachRootComponentTo
void AttachRootComponentTo(

USceneComponent 	InParent,
FName 	InSocketName	 = 	NAME_None,
EAttachLocation 	AttachLocationType	 = 	EAttachLocation :: KeepRelativeOffset,
bool 	bWeldSimulatedBodies	 = 	true

)
AttachRootComponentToActor
void AttachRootComponentToActor(

AActor 	InParentActor,
FName 	InSocketName	 = 	NAME_None,
EAttachLocation 	AttachLocationType	 = 	EAttachLocation :: KeepRelativeOffset,
bool 	bWeldSimulatedBodies	 = 	true

)
GetHorizontalDistanceTo
float32 GetHorizontalDistanceTo(
const 	AActor 	OtherActor
	) const

Returns the distance from this Actor to OtherActor, ignoring Z.

AttachToComponent
void AttachToComponent(
USceneComponent 	Parent,
FName 	SocketName,
EAttachmentRule 	LocationRule,
EAttachmentRule 	RotationRule,
EAttachmentRule 	ScaleRule,
bool 	bWeldSimulatedBodies
	)

Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered.

**Parameters**

Parent
USceneComponent

Parent to attach to.

SocketName
FName

Optional socket to attach to on the parent.

LocationRule
EAttachmentRule

How to handle translation when attaching.

RotationRule
EAttachmentRule

How to handle rotation when attaching.

ScaleRule
EAttachmentRule

How to handle scale when attaching.

bWeldSimulatedBodies
bool

Whether to weld together simulated physics bodies.

GetActorRightVector
FVector GetActorRightVector() const

Get the right (Y) vector (length 1.0) from this Actor, in world space.

DetachFromActor
void DetachFromActor(
EDetachmentRule 	LocationRule	 = 	EDetachmentRule :: KeepRelative,
EDetachmentRule 	RotationRule	 = 	EDetachmentRule :: KeepRelative,
EDetachmentRule 	ScaleRule	 = 	EDetachmentRule :: KeepRelative
	)

Detaches the RootComponent of this Actor from any SceneComponent it is currently attached to.

**Parameters**

LocationRule
EDetachmentRule

How to handle translation when detaching.

RotationRule
EDetachmentRule

How to handle rotation when detaching.

ScaleRule
EDetachmentRule

How to handle scale when detaching.

GetActorLocation
FVector GetActorLocation() const

Returns the location of the RootComponent of this Actor

GetActorRotation
FRotator GetActorRotation() const

Returns rotation of the RootComponent of this Actor.

GetSquaredHorizontalDistanceTo
float32 GetSquaredHorizontalDistanceTo(
const 	AActor 	OtherActor
	) const

Returns the squared distance from this Actor to OtherActor, ignoring Z.

GetSquaredDistanceTo
float32 GetSquaredDistanceTo(
const 	AActor 	OtherActor
	) const

Returns the squared distance from this Actor to OtherActor.

GetActorScale3D
FVector GetActorScale3D() const

Returns the Actor's world-space scale.

GetActorUpVector
FVector GetActorUpVector() const

Get the up (Z) vector (length 1.0) from this Actor, in world space.

GetDotProductTo
float32 GetDotProductTo(
const 	AActor 	OtherActor
	) const

Returns the dot product from this Actor to OtherActor. Returns -2.0 on failure. Returns 0.0 for coincidental actors.

SetActorLocation
bool SetActorLocation(
FVector 	NewLocation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Move the Actor to the specified location.

**Parameters**

NewLocation
FVector

The new location to move the Actor to.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

The hit result from the move if swept.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

**Returns**

Whether the location was successfully set (if not swept), or whether movement occurred at all (if swept).

SetActorLocationAndRotation
bool SetActorLocationAndRotation(
FVector 	NewLocation,
FRotator 	NewRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Move the actor instantly to the specified location and rotation.

**Parameters**

NewLocation
FVector

The new location to teleport the Actor to.

NewRotation
FRotator

The new rotation for the Actor.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

The hit result from the move if swept.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

**Returns**

Whether the rotation was successfully set.

SetActorRelativeLocation
void SetActorRelativeLocation(
FVector 	NewRelativeLocation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Set the actor's RootComponent to the specified relative location.

**Parameters**

NewRelativeLocation
FVector

New relative location of the actor's root component

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

SetActorRelativeRotation
void SetActorRelativeRotation(
FRotator 	NewRelativeRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Set the actor's RootComponent to the specified relative rotation

**Parameters**

NewRelativeRotation
FRotator

New relative rotation of the actor's root component

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

SetActorRelativeTransform
void SetActorRelativeTransform(
FTransform 	NewRelativeTransform,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Set the actor's RootComponent to the specified relative transform

**Parameters**

NewRelativeTransform
FTransform

New relative transform of the actor's root component

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

SetActorRotation
bool SetActorRotation(
FRotator 	NewRotation,
bool 	bTeleportPhysics
	)

Set the Actor's rotation instantly to the specified rotation.

**Parameters**

NewRotation
FRotator

The new rotation for the Actor.

bTeleportPhysics
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts).

**Returns**

Whether the rotation was successfully set.

SetActorTransform
bool SetActorTransform(
FTransform 	NewTransform,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Set the Actors transform to the specified one.

**Parameters**

NewTransform
FTransform

The new transform.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

Teleport
bool Teleport(
FVector 	DestLocation,
FRotator 	DestRotation
	)

Teleport this actor to a new location. If the actor doesn't fit exactly at the location specified, tries to slightly move it out of walls and such.

**Parameters**

DestLocation
FVector

The target destination point

DestRotation
FRotator

The target rotation at the destination

**Returns**

true if the actor has been successfully moved, or false if it couldn't fit.

GetDistanceTo
float32 GetDistanceTo(
const 	AActor 	OtherActor
	) const

Returns the distance from this Actor to OtherActor.

AddActorWorldRotation
void AddActorWorldRotation(
FRotator 	DeltaRotation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the rotation of this actor in world space.

**Parameters**

DeltaRotation
FRotator

The change in rotation.

bSweep
bool

Whether to sweep to the target rotation (not currently supported for rotation).

SweepHitResult
FHitResult&

The hit result from the move if swept.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

AddActorWorldOffset
void AddActorWorldOffset(
FVector 	DeltaLocation,
bool 	bSweep,
FHitResult& 	SweepHitResult,
bool 	bTeleport
	)

Adds a delta to the location of this actor in world space.

**Parameters**

DeltaLocation
FVector

The change in location.

bSweep
bool

Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.

SweepHitResult
FHitResult&

The hit result from the move if swept.

bTeleport
bool

Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire swept volume.

GetHorizontalDotProductTo
float32 GetHorizontalDotProductTo(
const 	AActor 	OtherActor
	) const

Returns the dot product from this Actor to OtherActor, ignoring Z. Returns -2.0 on failure. Returns 0.0 for coincidental actors.

AttachToActor
void AttachToActor(
AActor 	ParentActor,
FName 	SocketName,
EAttachmentRule 	LocationRule,
EAttachmentRule 	RotationRule,
EAttachmentRule 	ScaleRule,
bool 	bWeldSimulatedBodies
	)

Attaches the RootComponent of this Actor to the supplied actor, optionally at a named socket.

**Parameters**

ParentActor
AActor

Actor to attach this actor's RootComponent to

SocketName
FName

Socket name to attach to, if any

LocationRule
EAttachmentRule

How to handle translation when attaching.

RotationRule
EAttachmentRule

How to handle rotation when attaching.

ScaleRule
EAttachmentRule

How to handle scale when attaching.

bWeldSimulatedBodies
bool

Whether to weld together simulated physics bodies.

SetActorScale3D
void SetActorScale3D(
FVector 	NewScale3D
	)

Set the Actor's world-space scale.

SetActorRelativeScale3D
void SetActorRelativeScale3D(
FVector 	NewRelativeScale
	)

Set the actor's RootComponent to the specified relative scale 3d

**Parameters**

NewRelativeScale
FVector

New scale to set the actor's RootComponent to

---

## FUNCTIONS

### AddActorWorldTransform

```
void AddActorWorldTransform(FTransform DeltaTransform)
```

GetComponentsByClass

### void GetComponentsByClass

```
void GetComponentsByClass(?& OutComponents)
```

RerunConstructionScripts

### void RerunConstructionScripts

```
void RerunConstructionScripts()
```

SetbRunConstructionScriptOnDrag

### void SetbRunConstructionScriptOnDrag

```
void SetbRunConstructionScriptOnDrag(bool Value)
```

AttachToActor

### void AttachToActor

```
void AttachToActor(AActor ParentActor, FName SocketName = NAME_None, EAttachmentRule AttachmentRule = EAttachmentRule :: SnapToTarget)
```

AttachToComponent

### void AttachToComponent

```
void AttachToComponent(USceneComponent Parent, FName SocketName = NAME_None, EAttachmentRule AttachmentRule = EAttachmentRule :: SnapToTarget)
```

BeginPlay

### void BeginPlay

```
void BeginPlay()
```

Event when play begins for this actor.

### Destroyed

```
void Destroyed()
```

Called when the actor has been explicitly destroyed.

### CreateComponent

```
UActorComponent CreateComponent(UClass ComponentClass, FName WithName = NAME_None)
```

GetComponentsByClass

### void GetComponentsByClass

```
void GetComponentsByClass(UClass ComponentClass, ?& OutComponents)
```

AddActorWorldRotation

### void AddActorWorldRotation

```
void AddActorWorldRotation(FQuat DeltaRotation)
```

AddActorWorldRotation

### void AddActorWorldRotation

```
void AddActorWorldRotation(FRotator DeltaRotation)
```

Tick

### void Tick

```
void Tick(float32 DeltaSeconds)
```

Event called every frame, if ticking is enabled

### AddActorWorldOffset

```
void AddActorWorldOffset(FVector DeltaLocation)
```

AddActorLocalTransform

### void AddActorLocalTransform

```
void AddActorLocalTransform(FTransform DeltaTransform)
```

AddActorLocalRotation

### void AddActorLocalRotation

```
void AddActorLocalRotation(FQuat DeltaRotation)
```

AddActorLocalRotation

### void AddActorLocalRotation

```
void AddActorLocalRotation(FRotator DeltaRotation)
```

AddActorLocalOffset

### void AddActorLocalOffset

```
void AddActorLocalOffset(FVector DeltaLocation)
```

EndPlay

### void EndPlay

```
void EndPlay(EEndPlayReason EndPlayReason)
```

Event to notify blueprints this actor is being deleted or removed from a level.

### GetbOnlyRelevantToOwner

```
bool GetbOnlyRelevantToOwner()const
```

GetActorQuat

### FQuat GetActorQuat

```
FQuat GetActorQuat()const SetActorTransform
```

void SetActorTransform(

### FTransform 	NewTransform

```
FTransform 	NewTransform 	)
```

SetAutoDestroyWhenFinished

### void SetAutoDestroyWhenFinished

```
void SetAutoDestroyWhenFinished(bool bVal)
```

SetActorLocationAndRotation

### void SetActorLocationAndRotation

```
void SetActorLocationAndRotation(FVector NewLocation, FQuat Rotation)
```

SetActorLocationAndRotation

### void SetActorLocationAndRotation

```
void SetActorLocationAndRotation(FVector NewLocation, FRotator Rotation)
```

SetActorRotation

### void SetActorRotation

```
void SetActorRotation(FQuat NewRotation)
```

SetActorRotation

### void SetActorRotation

```
void SetActorRotation(FRotator NewRotation)
```

SetActorLocation

### void SetActorLocation

```
void SetActorLocation(FVector NewLocation)
```

SetActorRelativeTransform

### void SetActorRelativeTransform

```
void SetActorRelativeTransform(FTransform NewTransform)
```

IsHidden

### bool IsHidden

```
bool IsHidden()const HasActorBegunPlay
```

bool HasActorBegunPlay() const

### IsActorInitialized

```
bool IsActorInitialized()const
```

GetAllComponents

### void GetAllComponents

```
void GetAllComponents(UClass ComponentClass, TArray<UActorComponent>& OutComponents)
```

GetOrCreateComponent

### UActorComponent GetOrCreateComponent

```
UActorComponent GetOrCreateComponent(UClass ComponentClass, FName WithName = NAME_None)
```

ConstructionScript

### void ConstructionScript

```
void ConstructionScript()
```

Construction script, the place to spawn components and do other setup.  Note: Name used in CreateBlueprint function // HAZE FIx(LV): ScriptName

### GetComponent

```
UActorComponent GetComponent(UClass ComponentClass, FName WithName = NAME_None)
```

GetRootComponent

### USceneComponent GetRootComponent

```
USceneComponent GetRootComponent()const
```

Returns the RootComponent of this Actor

### SetbOnlyRelevantToOwner

```
void SetbOnlyRelevantToOwner(bool Value)
```

GetbAlwaysRelevant

### bool GetbAlwaysRelevant

```
bool GetbAlwaysRelevant()const SetbAlwaysRelevant
```

void SetbAlwaysRelevant(

### bool 	Value

```
bool 	Value 	)
```

SetbReplicateMovement

### void SetbReplicateMovement

```
void SetbReplicateMovement(bool Value)
```

SetbCallPreReplication

### void SetbCallPreReplication

```
void SetbCallPreReplication(bool Value)
```

SetbCallPreReplicationForReplay

### void SetbCallPreReplicationForReplay

```
void SetbCallPreReplicationForReplay(bool Value)
```

GetbHidden

### bool GetbHidden

```
bool GetbHidden()const SetbHidden
```

void SetbHidden(

### bool 	Value

```
bool 	Value 	)
```

SetbNetLoadOnClient

### void SetbNetLoadOnClient

```
void SetbNetLoadOnClient(bool Value)
```

GetbNetUseOwnerRelevancy

### bool GetbNetUseOwnerRelevancy

```
bool GetbNetUseOwnerRelevancy()const SetbNetUseOwnerRelevancy
```

void SetbNetUseOwnerRelevancy(

### bool 	Value

```
bool 	Value 	)
```

SetbRelevantForLevelBounds

### void SetbRelevantForLevelBounds

```
void SetbRelevantForLevelBounds(bool Value)
```

SetbReplayRewindable

### void SetbReplayRewindable

```
void SetbReplayRewindable(bool Value)
```

SetbAllowTickBeforeBeginPlay

### void SetbAllowTickBeforeBeginPlay

```
void SetbAllowTickBeforeBeginPlay(bool Value)
```

GetbAutoDestroyWhenFinished

### bool GetbAutoDestroyWhenFinished

```
bool GetbAutoDestroyWhenFinished()const SetbAutoDestroyWhenFinished
```

void SetbAutoDestroyWhenFinished(

### bool 	Value

```
bool 	Value 	)
```

GetbCanBeDamaged

### bool GetbCanBeDamaged

```
bool GetbCanBeDamaged()const SetbCanBeDamaged
```

void SetbCanBeDamaged(

### bool 	Value

```
bool 	Value 	)
```

SetbBlockInput

### void SetbBlockInput

```
void SetbBlockInput(bool Value)
```

GetbFindCameraComponentWhenViewTarget

### bool GetbFindCameraComponentWhenViewTarget

```
bool GetbFindCameraComponentWhenViewTarget()const SetbFindCameraComponentWhenViewTarget
```

void SetbFindCameraComponentWhenViewTarget(

### bool 	Value

```
bool 	Value 	)
```

GetbGenerateOverlapEventsDuringLevelStreaming

### bool GetbGenerateOverlapEventsDuringLevelStreaming

```
bool GetbGenerateOverlapEventsDuringLevelStreaming()const SetbGenerateOverlapEventsDuringLevelStreaming
```

void SetbGenerateOverlapEventsDuringLevelStreaming(

### bool 	Value

```
bool 	Value 	)
```

SetbIgnoresOriginShifting

### void SetbIgnoresOriginShifting

```
void SetbIgnoresOriginShifting(bool Value)
```

GetbEnableAutoLODGeneration

### bool GetbEnableAutoLODGeneration

```
bool GetbEnableAutoLODGeneration()const SetbEnableAutoLODGeneration
```

void SetbEnableAutoLODGeneration(

### bool 	Value

```
bool 	Value 	)
```

SetbIsEditorOnlyActor

### void SetbIsEditorOnlyActor

```
void SetbIsEditorOnlyActor(bool Value)
```

GetbReplicates

### bool GetbReplicates

```
bool GetbReplicates()const SetbReplicates
```

void SetbReplicates(

### bool 	Value

```
bool 	Value 	)
```

SetbCanBeInCluster

### void SetbCanBeInCluster

```
void SetbCanBeInCluster(bool Value)
```

GetNetDormancy

### const ENetDormancy& GetNetDormancy

```
const ENetDormancy& GetNetDormancy()const SetInstigator
```

void SetInstigator(

### APawn 	Value

```
APawn 	Value 	)
```

SetRootComponent

### void SetRootComponent

```
void SetRootComponent(USceneComponent Value)
```

SetbOptimizeBPComponentData

### void SetbOptimizeBPComponentData

```
void SetbOptimizeBPComponentData(bool Value)
```

SetbIsSpatiallyLoaded

### void SetbIsSpatiallyLoaded

```
void SetbIsSpatiallyLoaded(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AActor AActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AActor::StaticClass

```
static UClass AActor::StaticClass()
```
