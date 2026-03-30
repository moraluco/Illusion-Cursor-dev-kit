# UPrimitiveComponent

**Visibility:** public

## Inheritance

USceneComponent → UPrimitiveComponent → UArrowComponent → UBillboardComponent → UBrushComponent → UControlRigComponent

## Description

and 23 other children

PrimitiveComponents are SceneComponents that contain or generate some sort of geometry, generally to be rendered or used as collision data.  There are several subclasses for the various types of geometry, but the most common by far are the ShapeComponents (Capsule, Sphere, Box), StaticMeshComponent, and SkeletalMeshComponent.  ShapeComponents generate geometry that is used for collision detection but are not rendered, while StaticMeshComponents and SkeletalMeshComponents contain pre-built geometry that is rendered, but can also be used for collision detection.

## COLLISION

### CollisionProfileName

```
const FName CollisionProfileName
```

Get the collision profile name

### bGenerateOverlapEvents

```
bool bGenerateOverlapEvents bAlwaysCreatePhysicsState bool bAlwaysCreatePhysicsState
```

Indicates if we'd like to create physics state all the time (for collision and simulation).  If you set this to false, it still will create physics state if collision or simulation activated.  This can help performance if you'd like to avoid overhead of creating physics state when triggers

### CollisionObjectType

```
ECollisionChannel CollisionObjectType
```

Gets the collision object type

### CollisionEnabled

```
ECollisionEnabled CollisionEnabled
```

Returns the form of collision for this component

### OnComponentHit

```
FComponentHitSignature OnComponentHit
```

Event called when a component hits (or is hit by) something solid. This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation.  For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' event.

@note For collisions during physics simulation to generate hit events, 'Simulation Generates Hit Events' must be enabled for this component.  @note When receiving a hit from another object's movement, the directions of 'Hit.Normal' and 'Hit.ImpactNormal' will be adjusted to indicate force from the other object against this object.  @note NormalImpulse will be filled in for physics-simulating bodies, but will be zero for swept-component blocking collisions.

### CanCharacterStepUpOn

```
ECanBeCharacterBase CanCharacterStepUpOn
```

Determine whether a Character can step up onto this component.  This controls whether they can try to step up on it when they bump in to it, not whether they can walk on it after landing on it.  @see FWalkableSlopeOverride

### bTraceComplexOnMove

```
bool bTraceComplexOnMove
```

If true, component sweeps with this component should trace against complex collision during movement (for example, each triangle of a mesh).  If false, collision will be resolved against simple collision bounds instead.  @see MoveComponent()

### bReturnMaterialOnMove

```
bool bReturnMaterialOnMove
```

If true, component sweeps will return the material in their hit result.  @see MoveComponent(), FHitResult

### OnComponentEndOverlap

```
FComponentEndOverlapSignature OnComponentEndOverlap
```

Event called when something stops overlapping this component @note Both this component and the other one must have GetGenerateOverlapEvents() set to true to generate overlap events.

### BodyInstance

```
FBodyInstance BodyInstance
```

Physics scene information for this component, holds a single rigid body with multiple shapes.

### OnComponentBeginOverlap

```
FComponentBeginOverlapSignature OnComponentBeginOverlap
```

Event called when something starts to overlaps this component, for example a player walking into a trigger.  For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events.

### @note Both this component and the other one must have GetGenerateOverlapEvents

```
@note Both this component and the other one must have GetGenerateOverlapEvents()set to true to generate overlap events. @note When receiving an overlap from another object's movement, the directions of 'Hit.Normal' and 'Hit.ImpactNormal' will be adjusted to indicate force from the other object against this object.
```

bMultiBodyOverlap

### bMultiBodyOverlap

```
bool bMultiBodyOverlap
```

If true, this component will generate individual overlaps for each overlapping physics body if it is a multi-body component. When false, this component will generate only one overlap, regardless of how many physics bodies it has and how many of them are overlapping another component/body. This flag has no influence on single body components.

### OnComponentSleep

```
FComponentSleepSignature OnComponentSleep
```

Event called when the underlying physics objects is put to sleep

### OnComponentWake

```
FComponentWakeSignature OnComponentWake
```

Event called when the underlying physics objects is woken up

---

## HLOD

### bEnableAutoLODGeneration

```
bool bEnableAutoLODGeneration
```

Whether to include this component in HLODs or not.

### HLODBatchingPolicy

```
EHLODBatchingPolicy HLODBatchingPolicy
```

Determines how the geometry of a component will be incorporated in proxy (simplified) HLODs.

### ExcludeForSpecificHLODLevels

```
TArray<int> ExcludeForSpecificHLODLevels
```

Which specific HLOD levels this component should be excluded from

INPUT|MOUSE INPUT

### OnReleased

```
FComponentOnReleasedSignature OnReleased
```

Event called when the left mouse button is released while the mouse is over this component click events are enabled in the player controller

### OnClicked

```
FComponentOnClickedSignature OnClicked
```

Event called when the left mouse button is clicked while the mouse is over this component and click events are enabled in the player controller

### OnBeginCursorOver

```
FComponentBeginCursorOverSignature OnBeginCursorOver
```

Event called when the mouse cursor is moved over this component and mouse over events are enabled in the player controller

### OnEndCursorOver

```
FComponentEndCursorOverSignature OnEndCursorOver
```

Event called when the mouse cursor is moved off this component and mouse over events are enabled in the player controller

INPUT|TOUCH INPUT

### OnInputTouchLeave

```
FComponentEndTouchOverSignature OnInputTouchLeave
```

Event called when a finger is moved off this component when touch over events are enabled in the player controller

### OnInputTouchEnd

```
FComponentOnInputTouchEndSignature OnInputTouchEnd
```

Event called when a touch input is released over this component when touch events are enabled in the player controller

### OnInputTouchBegin

```
FComponentOnInputTouchBeginSignature OnInputTouchBegin
```

Event called when a touch input is received over this component when touch events are enabled in the player controller

### OnInputTouchEnter

```
FComponentBeginTouchOverSignature OnInputTouchEnter
```

Event called when a finger is moved over this component when touch over events are enabled in the player controller

---

## LIGHTING

### bCastHiddenShadow

```
bool bCastHiddenShadow
```

If true, the primitive will cast shadows even if bHidden is true.  Controls whether the primitive should cast shadows when hidden.  This flag is only used if CastShadow is true.

### bCastCinematicShadow

```
bool bCastCinematicShadow
```

Whether this component should cast shadows from lights that have bCastShadowsFromCinematicObjectsOnly enabled.  This is useful for characters in a cinematic with special cinematic lights, where the cost of shadowmap rendering of the environment is undesired.

### bCastDynamicShadow

```
bool bCastDynamicShadow
```

Controls whether the primitive should cast shadows in the case of non precomputed shadowing.  This flag is only used if CastShadow is true.

### bCastFarShadow

```
bool bCastFarShadow
```

When enabled, the component will be rendering into the far shadow cascades (only for directional lights).

### bSelfShadowOnly

```
bool bSelfShadowOnly
```

When enabled, the component will only cast a shadow on itself and not other components in the world.  This is especially useful for first person weapons, and forces bCastInsetShadow to be enabled.

### bCastContactShadow

```
bool bCastContactShadow
```

Whether the object should cast contact shadows.  This flag is only used if CastShadow is true.

### bCastVolumetricTranslucentShadow

```
bool bCastVolumetricTranslucentShadow
```

Whether the object should cast a volumetric translucent shadow.  Volumetric translucent shadows are useful for primitives with smoothly changing opacity like particles representing a volume, But have artifacts when used on highly opaque surfaces.

### bCastStaticShadow

```
bool bCastStaticShadow
```

Whether the object should cast a static shadow from shadow casting lights.  This flag is only used if CastShadow is true.

### bCastInsetShadow

```
bool bCastInsetShadow
```

Whether this component should create a per-object shadow that gives higher effective shadow resolution.  Useful for cinematic character shadowing. Assumed to be enabled if bSelfShadowOnly is enabled.

### bAffectDistanceFieldLighting

```
bool bAffectDistanceFieldLighting
```

Controls whether the primitive should affect dynamic distance field lighting methods.  This flag is only used if CastShadow is true.

### bCastShadowAsTwoSided

```
bool bCastShadowAsTwoSided
```

Whether this primitive should cast dynamic shadows as if it were a two sided material.

### bLightAttachmentsAsGroup

```
bool bLightAttachmentsAsGroup
```

Whether to light this component and any attachments as a group.  This only has effect on the root component of an attachment tree.  When enabled, attached component shadowing settings like bCastInsetShadow, bCastVolumetricTranslucentShadow, etc, will be ignored.  This is useful for improving performance when multiple movable components are attached together.

### bExcludeFromLightAttachmentGroup

```
bool bExcludeFromLightAttachmentGroup
```

If set, then it overrides any bLightAttachmentsAsGroup set in a parent.

### bAffectDynamicIndirectLighting

```
bool bAffectDynamicIndirectLighting
```

Controls whether the primitive should inject light into the Light Propagation Volume.  This flag is only used if CastShadow is true.

### bEmissiveLightSource

```
bool bEmissiveLightSource
```

Whether the primitive will be used as an emissive light source.

### CastShadow

```
bool CastShadow
```

Controls whether the primitive component should cast a shadow or not.

### bSingleSampleShadowFromStationaryLights

```
bool bSingleSampleShadowFromStationaryLights
```

Whether the whole component should be shadowed as one from stationary lights, which makes shadow receiving much cheaper.  When enabled shadowing data comes from the volume lighting samples precomputed by Lightmass, which are very sparse.  This is currently only used on stationary directional lights.

### LightingChannels

```
const FLightingChannels LightingChannels
```

Channels that this component should be in.  Lights with matching channels will affect the component.  These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.

### LightmapType

```
ELightmapType LightmapType
```

Controls the type of lightmap used for this component.

### IndirectLightingCacheQuality

```
EIndirectLightingCacheQuality IndirectLightingCacheQuality
```

Quality of indirect lighting for Movable primitives.  This has a large effect on Indirect Lighting Cache update time.

---

## LOD

### CachedMaxDrawDistance

```
float32 CachedMaxDrawDistance
```

The distance to cull this primitive at.  A CachedMaxDrawDistance of 0 indicates that the primitive should not be culled by distance.

### LDMaxDrawDistance

```
float32 LDMaxDrawDistance
```

Max draw distance exposed to LDs. The real max draw distance is the min (disregarding 0) of this and volumes affecting this object.

### MinDrawDistance

```
float32 MinDrawDistance
```

The minimum distance at which the primitive should be rendered, measured in world space units from the center of the primitive's bounding sphere to the camera position.

### bNeverDistanceCull

```
bool bNeverDistanceCull
```

When enabled this object will not be culled by distance. This is ignored if a child of a HLOD.

### bAllowCullDistanceVolume

```
bool bAllowCullDistanceVolume
```

Whether to accept cull distance volumes to modify cached cull distance.

---

## MOBILE

### bReceiveMobileCSMShadows

```
bool bReceiveMobileCSMShadows
```

Mobile only: If disabled this component will not receive CSM shadows. (Components that do not receive CSM may have reduced shading cost)

---

## PHYSICS

### WalkableSlopeOverride

```
FWalkableSlopeOverride WalkableSlopeOverride
```

Returns the slope override struct for this component.

### bIgnoreRadialImpulse

```
bool bIgnoreRadialImpulse
```

Will ignore radial impulses applied to this component.

### bIgnoreRadialForce

```
bool bIgnoreRadialForce
```

Will ignore radial forces applied to this component.

### bApplyImpulseOnDamage

```
bool bApplyImpulseOnDamage
```

True for damage to this component to apply physics impulse, false to opt out of these impulses.

### AngularDamping

```
float32 AngularDamping
```

Returns the angular damping of this component.

### bReplicatePhysicsToAutonomousProxy

```
bool bReplicatePhysicsToAutonomousProxy
```

True if physics should be replicated to autonomous proxies. This should be true for server-authoritative simulations, and false for client authoritative simulations.

### LinearDamping

```
float32 LinearDamping
```

Returns the linear damping of this component.

Mass

### Mass

```
const float32 Mass
```

Returns the mass of this component in kg.

---

## RAYTRACING

### RayTracingGroupId

```
int RayTracingGroupId
```

Defines run-time groups of components. For example allows to assemble multiple parts of a building at runtime.  -1 means that component doesn't belong to any group.

### RayTracingGroupCullingPriority

```
ERayTracingGroupCullingPriority RayTracingGroupCullingPriority
```

Defines how quickly it should be culled. For example buildings should have a low priority, but small dressing should have a high priority.

---

## RENDERING

### bUseAsOccluder

```
bool bUseAsOccluder
```

Whether to render the primitive in the depth only pass.  This should generally be true for all objects, and let the renderer make decisions about whether to render objects in the depth only pass.  @todo - if any rendering features rely on a complete depth only pass, this variable needs to go away.

### bRenderInDepthPass

```
bool bRenderInDepthPass
```

If true, this component will be rendered in the depth pass even if it's not rendered in the main pass

### bOnlyOwnerSee

```
bool bOnlyOwnerSee
```

If this is True, this component will only be visible when the view actor is the component's owner, directly or indirectly.

### bOwnerNoSee

```
bool bOwnerNoSee
```

If this is True, this component won't be visible when the view actor is the component's owner, directly or indirectly.

### bReceivesDecals

```
bool bReceivesDecals
```

Whether the primitive receives decals.

### bTreatAsBackgroundForOcclusion

```
bool bTreatAsBackgroundForOcclusion
```

Treat this primitive as part of the background for occlusion purposes. This can be used as an optimization to reduce the cost of rendering skyboxes, large ground planes that are part of the vista, etc.

### bRenderInMainPass

```
bool bRenderInMainPass
```

If true, this component will be rendered in the main pass (z prepass, basepass, transparency)

### bVisibleInRayTracing

```
bool bVisibleInRayTracing
```

If true, this component will be visible in ray tracing effects. Turning this off will remove it from ray traced reflections, shadows, etc.

### bVisibleInRealTimeSkyCaptures

```
bool bVisibleInRealTimeSkyCaptures
```

If true, this component will be visible in real-time sky light reflection captures.

### CustomDepthStencilWriteMask

```
ERendererStencilMask CustomDepthStencilWriteMask
```

Mask used for stencil buffer writes.

### TranslucencySortDistanceOffset

```
float32 TranslucencySortDistanceOffset
```

Modified sort distance offset for translucent objects in world units.  A positive number will move the sort distance further and a negative number will move the distance closer.

Ignored if the object is not translucent.  Warning: Adjusting this value will prevent the renderer from correctly sorting based on distance.  Only modify this value if you are certain it will not cause visual artifacts.

### bVisibleInReflectionCaptures

```
bool bVisibleInReflectionCaptures
```

If true, this component will be visible in reflection captures.

### bVisibleInSceneCaptureOnly

```
bool bVisibleInSceneCaptureOnly
```

When true, will only be visible in Scene Capture

### bHiddenInSceneCapture

```
bool bHiddenInSceneCapture
```

When true, will not be captured by Scene Capture

### CustomDepthStencilValue

```
int CustomDepthStencilValue
```

Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)

### CustomPrimitiveData

```
FCustomPrimitiveData CustomPrimitiveData
```

Optional user defined default values for the custom primitive data of this primitive

### TranslucencySortPriority

```
int TranslucencySortPriority
```

Translucent objects with a lower sort priority draw behind objects with a higher priority.  Translucent objects with the same priority are rendered from back-to-front based on their bounds origin.  This setting is also used to sort objects being drawn into a runtime virtual texture.

### Ignored if the object is not translucent.  The default priority is zero.  Warning: This should never be set to a non-default value unless you know what you are doing, as it will prevent the renderer from sorting correctly.  It is especially problematic on dynamic gameplay effects.

```
Ignored if the object is not translucent.  The default priority is zero.  Warning: This should never be set to a non-default value unless you know what you are doing, as it will prevent the renderer from sorting correctly.  It is especially problematic on dynamic gameplay effects.
```

bRenderCustomDepth

### bool bRenderCustomDepth

```
bool bRenderCustomDepth
```

If true, this component will be rendered in the CustomDepth pass (usually used for outlines)

---

## RENDERING \| MATERIAL

NumMaterials

### NumMaterials

```
const int NumMaterials
```

Return number of material elements in this primitive

---

## TEXTURESTREAMING

### bForceMipStreaming

```
bool bForceMipStreaming
```

If true, forces mips for textures used by this component to be resident when this component's level is loaded.

---

## VIRTUALTEXTURE

### VirtualTextureLodBias

```
int8 VirtualTextureLodBias
```

Bias to the LOD selected for rendering to runtime virtual textures.

### VirtualTextureCullMips

```
int8 VirtualTextureCullMips
```

Number of lower mips in the runtime virtual texture to skip for rendering this primitive.  Larger values reduce the effective draw distance in the runtime virtual texture.  This culling method doesn't take into account primitive size or virtual texture size.

### VirtualTextureMinCoverage

```
int8 VirtualTextureMinCoverage
```

Set the minimum pixel coverage before culling from the runtime virtual texture.  Larger values reduce the effective draw distance in the runtime virtual texture.

### RuntimeVirtualTextures

```
TArray<TObjectPtr<URuntimeVirtualTexture>> RuntimeVirtualTextures
```

Array of runtime virtual textures into which we draw the mesh for this actor.  The material also needs to be set up to output to a virtual texture.

### VirtualTextureRenderPassType

```
ERuntimeVirtualTextureMainPassType VirtualTextureRenderPassType
```

Controls if this component draws in the main pass as well as in the virtual texture.

---

## VARIABLES

### bSelectable

```
bool bSelectable
```

If this is True, this component can be selected in the editor.

### BoundsRadius

```
const float BoundsRadius GenerateOverlapEvents bool GenerateOverlapEvents
```

If true, this component will generate overlap events when it is overlapping other components (eg Begin Overlap).  Both components (this and the other) must have this enabled for overlap events to occur.

### See: [Overlap Events]

```
See: [Overlap Events](https://​docs​.unrealengine​.com​/InteractiveExperiences​/Physics​/Collision​/Overview​#overlapandgenerateoverlapevents)See: UpdateOverlaps(), BeginComponentOverlap(), EndComponentOverlap()
```

BoundsExtent

### BoundsExtent

```
const FVector BoundsExtent
```
### BoundingBoxExtents

```
const FVector BoundingBoxExtents BoundsOrigin const FVector BoundsOrigin COLLISION GetOverlappingComponents void GetOverlappingComponents(TArray<UPrimitiveComponent>& OutOverlappingComponents)const
```

Returns unique list of components this component is overlapping.

### SetCollisionObjectType

```
void SetCollisionObjectType(ECollisionChannel Channel)
```

Changes the collision channel that this object uses when it moves

**Parameters**

Channel
ECollisionChannel

The new channel for this component to use

SetCollisionProfileName
void SetCollisionProfileName(
FName 	InCollisionProfileName,
bool 	bUpdateOverlaps	 = 	true
	)

Set Collision Profile Name This function is called by constructors when they set ProfileName This will change current CollisionProfileName to be this, and overwrite Collision Setting

**Parameters**

InCollisionProfileName
FName

: New Profile Name

SetCollisionEnabled
void SetCollisionEnabled(
ECollisionEnabled 	NewType
	)

Controls what kind of collision is enabled for this body

GetCollisionProfileName
FName GetCollisionProfileName() const

Get the collision profile name

GetCollisionObjectType
ECollisionChannel GetCollisionObjectType() const

Gets the collision object type

GetCollisionResponseToChannel
ECollisionResponse GetCollisionResponseToChannel(
ECollisionChannel 	Channel
	) const

Gets the response type given a specific channel

CopyArrayOfMoveIgnoreActors
TArray<AActor> CopyArrayOfMoveIgnoreActors()

Returns the list of actors we currently ignore when moving.

IsOverlappingComponent
bool IsOverlappingComponent(
const 	UPrimitiveComponent 	OtherComp
	) const

Check whether this component is overlapping another component.

**Parameters**

OtherComp
const UPrimitiveComponent

Component to test this component against.

**Returns**

Whether this component is overlapping another component.

IsOverlappingActor
bool IsOverlappingActor(
const 	AActor 	Other
	) const

Check whether this component is overlapping any component of the given Actor.

**Parameters**

Other
const AActor

Actor to test this component against.

**Returns**

Whether this component is overlapping any component of the given Actor.

SphereTraceComponent
bool SphereTraceComponent(
FVector 	TraceStart,
FVector 	TraceEnd,
float32 	SphereRadius,
bool 	bTraceComplex,
bool 	bShowTrace,
bool 	bPersistentShowTrace,
FVector& 	HitLocation,
FVector& 	HitNormal,
FName& 	BoneName,
FHitResult& 	OutHit
	)

Perform a sphere trace against a single component

**Parameters**

TraceStart
FVector

The start of the trace in world-space

TraceEnd
FVector

The end of the trace in world-space

SphereRadius
float32

Radius of the sphere to trace against the component

bTraceComplex
bool

Whether or not to trace the complex physics representation or just the simple representation

bShowTrace
bool

Whether or not to draw the trace in the world (for debugging)

bPersistentShowTrace
bool

Whether or not to make the debugging draw stay in the world permanently

ClearMoveIgnoreActors
void ClearMoveIgnoreActors()

Clear the list of actors we ignore when moving.

GetOverlappingActors
void GetOverlappingActors(
TArray<AActor>& 	OverlappingActors,
TSubclassOf<AActor> 	ClassFilter	 = 	nullptr
	) const

Returns a list of actors that this component is overlapping.

**Parameters**

OverlappingActors
TArray<AActor>&

[out] Returned list of overlapping actors

ClassFilter
TSubclassOf<AActor>

[optional] If set, only returns actors of this class or subclasses

IsPhysicsCollisionEnabled
bool IsPhysicsCollisionEnabled() const

Utility to see if there is any physics collision enabled on this component.

BoxOverlapComponent
bool BoxOverlapComponent(
	FVector 	InBoxCentre,
const 	FBox 	InBox,
	bool 	bTraceComplex,
	bool 	bShowTrace,
	bool 	bPersistentShowTrace,
	FVector& 	HitLocation,
	FVector& 	HitNormal,
	FName& 	BoneName,
	FHitResult& 	OutHit
	)

Perform a box overlap against a single component as an AABB (No rotation)

**Parameters**

InBoxCentre
FVector

The centre of the box to overlap with the component

InBox
const FBox

Description of the box to use in the overlap

bTraceComplex
bool

Whether or not to trace the complex physics representation or just the simple representation

bShowTrace
bool

Whether or not to draw the trace in the world (for debugging)

bPersistentShowTrace
bool

Whether or not to make the debugging draw stay in the world permanently

IsQueryCollisionEnabled
bool IsQueryCollisionEnabled() const

Utility to see if there is any query collision enabled on this component.

SphereOverlapComponent
bool SphereOverlapComponent(
FVector 	InSphereCentre,
float32 	InSphereRadius,
bool 	bTraceComplex,
bool 	bShowTrace,
bool 	bPersistentShowTrace,
FVector& 	HitLocation,
FVector& 	HitNormal,
FName& 	BoneName,
FHitResult& 	OutHit
	)

Perform a sphere overlap against a single component

**Parameters**

InSphereCentre
FVector

The centre of the sphere to overlap with the component

InSphereRadius
float32

The Radius of the sphere to overlap with the component

bTraceComplex
bool

Whether or not to trace the complex physics representation or just the simple representation

bShowTrace
bool

Whether or not to draw the trace in the world (for debugging)

bPersistentShowTrace
bool

Whether or not to make the debugging draw stay in the world permanently

LineTraceComponent
bool LineTraceComponent(
FVector 	TraceStart,
FVector 	TraceEnd,
bool 	bTraceComplex,
bool 	bShowTrace,
bool 	bPersistentShowTrace,
FVector& 	HitLocation,
FVector& 	HitNormal,
FName& 	BoneName,
FHitResult& 	OutHit
	)

Perform a line trace against a single component

**Parameters**

TraceStart
FVector

The start of the trace in world-space

TraceEnd
FVector

The end of the trace in world-space

bTraceComplex
bool

Whether or not to trace the complex physics representation or just the simple representation

bShowTrace
bool

Whether or not to draw the trace in the world (for debugging)

bPersistentShowTrace
bool

Whether or not to make the debugging draw stay in the world permanently

SetCollisionResponseToChannel
void SetCollisionResponseToChannel(
ECollisionChannel 	Channel,
ECollisionResponse 	NewResponse
	)

Changes a member of the ResponseToChannels container for this PrimitiveComponent.

**Parameters**

Channel
ECollisionChannel

The channel to change the response of

NewResponse
ECollisionResponse

What the new response should be to the supplied Channel

CanCharacterStepUp
bool CanCharacterStepUp(
APawn 	Pawn
	) const

Return true if the given Pawn can step up onto this component.  This controls whether they can try to step up on it when they bump in to it, not whether they can walk on it after landing on it.

**Parameters**

Pawn
APawn

the Pawn that wants to step onto this component.

SetCollisionResponseToAllChannels
void SetCollisionResponseToAllChannels(
ECollisionResponse 	NewResponse
	)

Changes all ResponseToChannels container for this PrimitiveComponent. to be NewResponse

**Parameters**

NewResponse
ECollisionResponse

What the new response should be to the supplied Channel

ClearMoveIgnoreComponents
void ClearMoveIgnoreComponents()

Clear the list of components we ignore when moving.

CopyArrayOfMoveIgnoreComponents
TArray<UPrimitiveComponent> CopyArrayOfMoveIgnoreComponents()

Returns the list of actors we currently ignore when moving.

IgnoreComponentWhenMoving
void IgnoreComponentWhenMoving(
UPrimitiveComponent 	Component,
bool 	bShouldIgnore
	)

Tells this component whether to ignore collision with another component when this component is moved.  The other components may also need to be told to do the same when they move.  Does not affect movement of this component when simulating physics.

IgnoreActorWhenMoving
void IgnoreActorWhenMoving(
AActor 	Actor,
bool 	bShouldIgnore
	)

Tells this component whether to ignore collision with all components of a specific Actor when this component is moved.  Components on the other Actor may also need to be told to do the same when they move.  Does not affect movement of this component when simulating physics.

GetClosestPointOnCollision
float32 GetClosestPointOnCollision(
FVector 	Point,
FVector& 	OutPointOnBody,
FName 	BoneName	 = 	NAME_None
	) const

Returns the distance and closest point to the collision surface.  Component must have simple collision to be queried for closest point.

**Parameters**

Point
FVector

World 3D vector

OutPointOnBody
FVector&

Point on the surface of collision closest to Point

BoneName
FName

If a SkeletalMeshComponent, name of body to set center of mass of. 'None' indicates root body.

**Returns**

Success if returns > 0.f, if returns 0.f, it is either not convex or inside of the point If returns < 0.f, this primitive does not have collsion

IsCollisionEnabled
bool IsCollisionEnabled() const

Utility to see if there is any form of collision (query or physics) enabled on this component.

GetCollisionEnabled
ECollisionEnabled GetCollisionEnabled() const

Returns the form of collision for this component

---

## LOD

### SetCullDistance

```
void SetCullDistance(float32 NewCullDistance)
```

Changes the value of CullDistance.

**Parameters**

NewCullDistance
float32

The value to assign to CullDistance.

---

## PHYSICS

### GetLinearDamping

```
float32 GetLinearDamping()const
```

Returns the linear damping of this component.

### WakeAllRigidBodies

```
void WakeAllRigidBodies()
```

Ensure simulation is running for all bodies in this component.

### AddForceAtLocationLocal

```
void AddForceAtLocationLocal(FVector Force, FVector Location, FName BoneName = NAME_None)
```

Add a force to a single rigid body at a particular location. Both Force and Location should be in body space.  This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.

**Parameters**

Force
FVector

Force vector to apply. Magnitude indicates strength of force.

Location
FVector

Location to apply force, in component space.

BoneName
FName

If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body.

SetNotifyRigidBodyCollision
void SetNotifyRigidBodyCollision(
bool 	bNewNotifyRigidBodyCollision
	)

Changes the value of bNotifyRigidBodyCollision

SetMassScale
void SetMassScale(
FName 	BoneName	 = 	NAME_None,
float32 	InMassScale	 = 	1.000000
	)

Change the mass scale used to calculate the mass of a single physics body

GetInertiaTensor
FVector GetInertiaTensor(
FName 	BoneName	 = 	NAME_None
	) const

Returns the inertia tensor of this component in kg cm^2. The inertia tensor is in local component space.

SetAngularDamping
void SetAngularDamping(
float32 	InDamping
	)

Sets the angular damping of this component.

AddImpulse
void AddImpulse(
FVector 	Impulse,
FName 	BoneName	 = 	NAME_None,
bool 	bVelChange	 = 	false
	)

Add an impulse to a single rigid body. Good for one time instant burst.

**Parameters**

Impulse
FVector

Magnitude and direction of impulse to apply.

BoneName
FName

If a SkeletalMeshComponent, name of body to apply impulse to. 'None' indicates root body.

bVelChange
bool

If true, the Strength is taken as a change in velocity instead of an impulse (ie. mass will have no effect).

AddAngularImpulseInDegrees
void AddAngularImpulseInDegrees(
FVector 	Impulse,
FName 	BoneName	 = 	NAME_None,
bool 	bVelChange	 = 	false
	)

Add an angular impulse to a single rigid body. Good for one time instant burst.

**Parameters**

BoneName
FName

If a SkeletalMeshComponent, name of body to apply angular impulse to. 'None' indicates root body.

bVelChange
bool

If true, the Strength is taken as a change in angular velocity instead of an impulse (ie. mass will have no effect).

SetPhysicsAngularVelocityInDegrees
void SetPhysicsAngularVelocityInDegrees(
FVector 	NewAngVel,
bool 	bAddToCurrent	 = 	false,
FName 	BoneName	 = 	NAME_None
	)

Set the angular velocity of a single body.  This should be used cautiously - it may be better to use AddTorque or AddImpulse.

**Parameters**

NewAngVel
FVector

New angular velocity to apply to body, in degrees per second.

bAddToCurrent
bool

If true, NewAngVel is added to the existing angular velocity of the body.

BoneName
FName

If a SkeletalMeshComponent, name of body to modify angular velocity of. 'None' indicates root body.

SetEnableGravity
void SetEnableGravity(
bool 	bGravityEnabled
	)

Enables/disables whether this component is affected by gravity. This applies only to components with bSimulatePhysics set to true.

WakeRigidBody
void WakeRigidBody(
FName 	BoneName	 = 	NAME_None
	)

'Wake' physics simulation for a single body.

**Parameters**

BoneName
FName

If a SkeletalMeshComponent, name of body to wake. 'None' indicates root body.

GetPhysicsAngularVelocityInRadians
FVector GetPhysicsAngularVelocityInRadians(
FName 	BoneName	 = 	NAME_None
	) const

Get the angular velocity of a single body, in radians per second.

**Parameters**

BoneName
FName

If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body.

GetPhysicsLinearVelocity
FVector GetPhysicsLinearVelocity(
FName 	BoneName	 = 	NAME_None
	)

Get the linear velocity of a single body.

**Parameters**

BoneName
FName

If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body.

SetPhysicsMaxAngularVelocityInRadians
void SetPhysicsMaxAngularVelocityInRadians(
float32 	NewMaxAngVel,
bool 	bAddToCurrent	 = 	false,
FName 	BoneName	 = 	NAME_None
	)

Set the maximum angular velocity of a single body.

**Parameters**

NewMaxAngVel
float32

New maximum angular velocity to apply to body, in radians per second.

bAddToCurrent
bool

If true, NewMaxAngVel is added to the existing maximum angular velocity of the body.

BoneName
FName

If a SkeletalMeshComponent, name of body to modify maximum angular velocity of. 'None' indicates root body.

AddImpulseAtLocation
void AddImpulseAtLocation(
FVector 	Impulse,
FVector 	Location,
FName 	BoneName	 = 	NAME_None
	)

Add an impulse to a single rigid body at a specific location.

**Parameters**

Impulse
FVector

Magnitude and direction of impulse to apply.

Location
FVector

Point in world space to apply impulse at.

BoneName
FName

If a SkeletalMeshComponent, name of bone to apply impulse to. 'None' indicates root body.

GetPhysicsLinearVelocityAtPoint
FVector GetPhysicsLinearVelocityAtPoint(
FVector 	Point,
FName 	BoneName	 = 	NAME_None
	)

Get the linear velocity of a point on a single body.

**Parameters**

Point
FVector

Point is specified in world space.

BoneName
FName

If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body.

GetWalkableSlopeOverride
const FWalkableSlopeOverride& GetWalkableSlopeOverride() const

Returns the slope override struct for this component.

GetAngularDamping
float32 GetAngularDamping() const

Returns the angular damping of this component.

GetCenterOfMass
FVector GetCenterOfMass(
FName 	BoneName	 = 	NAME_None
	) const

Get the center of mass of a single body. In the case of a welded body this will return the center of mass of the entire welded body (including its parent and children) Objects that are not simulated return (0,0,0) as they do not have COM

**Parameters**

BoneName
FName

If a SkeletalMeshComponent, name of body to get center of mass of. 'None' indicates root body.

AddRadialForce
void AddRadialForce(
FVector 	Origin,
float32 	Radius,
float32 	Strength,
ERadialImpulseFalloff 	Falloff,
bool 	bAccelChange	 = 	false
	)

Add a force to all bodies in this component, originating from the supplied world-space location.

**Parameters**

Origin
FVector

Origin of force in world space.

Radius
float32

Radius within which to apply the force.

Strength
float32

Strength of force to apply.

Falloff
ERadialImpulseFalloff

Allows you to control the strength of the force as a function of distance from Origin.

bAccelChange
bool

If true, Strength is taken as a change in acceleration instead of a physical force (i.e. mass will have no effect).

AddAngularImpulseInRadians
void AddAngularImpulseInRadians(
FVector 	Impulse,
FName 	BoneName	 = 	NAME_None,
bool 	bVelChange	 = 	false
	)

Add an angular impulse to a single rigid body. Good for one time instant burst.

**Parameters**

BoneName
FName

If a SkeletalMeshComponent, name of body to apply angular impulse to. 'None' indicates root body.

bVelChange
bool

If true, the Strength is taken as a change in angular velocity instead of an impulse (ie. mass will have no effect).

SetSimulatePhysics
void SetSimulatePhysics(
bool 	bSimulate
	)

Sets whether or not a single body should use physics simulation, or should be 'fixed' (kinematic).  Note that if this component is currently attached to something, beginning simulation will detach it.

**Parameters**

bSimulate
bool

New simulation state for single body

IsAnyRigidBodyAwake
bool IsAnyRigidBodyAwake()

Returns if any body in this component is currently awake and simulating.

IsGravityEnabled
bool IsGravityEnabled() const

Returns whether this component is affected by gravity. Returns always false if the component is not simulated.

AddRadialImpulse
void AddRadialImpulse(
FVector 	Origin,
float32 	Radius,
float32 	Strength,
ERadialImpulseFalloff 	Falloff,
bool 	bVelChange	 = 	false
	)

Add an impulse to all rigid bodies in this component, radiating out from the specified position.

**Parameters**

Origin
FVector

Point of origin for the radial impulse blast, in world space

Radius
float32

Size of radial impulse. Beyond this distance from Origin, there will be no affect.

Strength
float32

Maximum strength of impulse applied to body.

Falloff
ERadialImpulseFalloff

Allows you to control the strength of the impulse as a function of distance from Origin.

bVelChange
bool

If true, the Strength is taken as a change in velocity instead of an impulse (ie. mass will have no effect).

AddTorqueInDegrees
void AddTorqueInDegrees(
FVector 	Torque,
FName 	BoneName	 = 	NAME_None,
bool 	bAccelChange	 = 	false
	)

Add a torque to a single rigid body.

**Parameters**

Torque
FVector

Torque to apply. Direction is axis of rotation and magnitude is strength of torque.

BoneName
FName

If a SkeletalMeshComponent, name of body to apply torque to. 'None' indicates root body.

bAccelChange
bool

If true, Torque is taken as a change in angular acceleration instead of a physical torque (i.e. mass will have no effect).

AddForce
void AddForce(
FVector 	Force,
FName 	BoneName	 = 	NAME_None,
bool 	bAccelChange	 = 	false
	)

Add a force to a single rigid body.  This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.

**Parameters**

Force
FVector

Force vector to apply. Magnitude indicates strength of force.

BoneName
FName

If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body.

bAccelChange
bool

If true, Force is taken as a change in acceleration instead of a physical force (i.e. mass will have no effect).

SetPhysicsMaxAngularVelocityInDegrees
void SetPhysicsMaxAngularVelocityInDegrees(
float32 	NewMaxAngVel,
bool 	bAddToCurrent	 = 	false,
FName 	BoneName	 = 	NAME_None
	)

Set the maximum angular velocity of a single body.

**Parameters**

NewMaxAngVel
float32

New maximum angular velocity to apply to body, in degrees per second.

bAddToCurrent
bool

If true, NewMaxAngVel is added to the existing maximum angular velocity of the body.

BoneName
FName

If a SkeletalMeshComponent, name of body to modify maximum angular velocity of. 'None' indicates root body.

AddTorqueInRadians
void AddTorqueInRadians(
FVector 	Torque,
FName 	BoneName	 = 	NAME_None,
bool 	bAccelChange	 = 	false
	)

Add a torque to a single rigid body.

**Parameters**

Torque
FVector

Torque to apply. Direction is axis of rotation and magnitude is strength of torque.

BoneName
FName

If a SkeletalMeshComponent, name of body to apply torque to. 'None' indicates root body.

bAccelChange
bool

If true, Torque is taken as a change in angular acceleration instead of a physical torque (i.e. mass will have no effect).

ScaleByMomentOfInertia
FVector ScaleByMomentOfInertia(
FVector 	InputVector,
FName 	BoneName	 = 	NAME_None
	) const

Scales the given vector by the world space moment of inertia. Useful for computing the torque needed to rotate an object.

SetAllMassScale
void SetAllMassScale(
float32 	InMassScale	 = 	1.000000
	)

Change the mass scale used fo all bodies in this component

PutRigidBodyToSleep
void PutRigidBodyToSleep(
FName 	BoneName	 = 	NAME_None
	)

Force a single body back to sleep.

**Parameters**

BoneName
FName

If a SkeletalMeshComponent, name of body to put to sleep. 'None' indicates root body.

SetPhysicsLinearVelocity
void SetPhysicsLinearVelocity(
FVector 	NewVel,
bool 	bAddToCurrent	 = 	false,
FName 	BoneName	 = 	NAME_None
	)

Set the linear velocity of a single body.  This should be used cautiously - it may be better to use AddForce or AddImpulse.

**Parameters**

NewVel
FVector

New linear velocity to apply to physics.

bAddToCurrent
bool

If true, NewVel is added to the existing velocity of the body.

BoneName
FName

If a SkeletalMeshComponent, name of body to modify velocity of. 'None' indicates root body.

SetAllPhysicsAngularVelocityInDegrees
void SetAllPhysicsAngularVelocityInDegrees(
FVector 	NewAngVel,
bool 	bAddToCurrent	 = 	false
	)

Set the angular velocity of all bodies in this component.

**Parameters**

NewAngVel
FVector

New angular velocity to apply to physics, in degrees per second.

bAddToCurrent
bool

If true, NewAngVel is added to the existing angular velocity of all bodies.

SetAllPhysicsAngularVelocityInRadians
void SetAllPhysicsAngularVelocityInRadians(
FVector 	NewAngVel,
bool 	bAddToCurrent	 = 	false
	)

Set the angular velocity of all bodies in this component.

**Parameters**

NewAngVel
FVector

New angular velocity to apply to physics, in radians per second.

bAddToCurrent
bool

If true, NewAngVel is added to the existing angular velocity of all bodies.

SetPhysicsAngularVelocityInRadians
void SetPhysicsAngularVelocityInRadians(
FVector 	NewAngVel,
bool 	bAddToCurrent	 = 	false,
FName 	BoneName	 = 	NAME_None
	)

Set the angular velocity of a single body.  This should be used cautiously - it may be better to use AddTorque or AddImpulse.

**Parameters**

NewAngVel
FVector

New angular velocity to apply to body, in radians per second.

bAddToCurrent
bool

If true, NewAngVel is added to the existing angular velocity of the body.

BoneName
FName

If a SkeletalMeshComponent, name of body to modify angular velocity of. 'None' indicates root body.

SetAllPhysicsLinearVelocity
void SetAllPhysicsLinearVelocity(
FVector 	NewVel,
bool 	bAddToCurrent	 = 	false
	)

Set the linear velocity of all bodies in this component.

**Parameters**

NewVel
FVector

New linear velocity to apply to physics.

bAddToCurrent
bool

If true, NewVel is added to the existing velocity of the body.

SetAllUseCCD
void SetAllUseCCD(
bool 	InUseCCD
	)

Set whether all bodies in this component should use Continuous Collision Detection

AddVelocityChangeImpulseAtLocation
void AddVelocityChangeImpulseAtLocation(
FVector 	Impulse,
FVector 	Location,
FName 	BoneName	 = 	NAME_None
	)

Add an impulse to a single rigid body at a specific location. The Strength is taken as a change in angular velocity instead of an impulse (ie. mass will have no effect).

**Parameters**

Impulse
FVector

Magnitude and direction of impulse to apply.

Location
FVector

Point in world space to apply impulse at.

BoneName
FName

If a SkeletalMeshComponent, name of bone to apply impulse to. 'None' indicates root body.

AddForceAtLocation
void AddForceAtLocation(
FVector 	Force,
FVector 	Location,
FName 	BoneName	 = 	NAME_None
	)

Add a force to a single rigid body at a particular location in world space.  This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.

**Parameters**

Force
FVector

Force vector to apply. Magnitude indicates strength of force.

Location
FVector

Location to apply force, in world space.

BoneName
FName

If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body.

SetPhysMaterialOverride
void SetPhysMaterialOverride(
UPhysicalMaterial 	NewPhysMaterial
	)

Changes the current PhysMaterialOverride for this component.  Note that if physics is already running on this component, this will not alter its mass/inertia etc, it will only change its surface properties like friction.

SetUseCCD
void SetUseCCD(
bool 	InUseCCD,
FName 	BoneName	 = 	NAME_None
	)

Set whether this component should use Continuous Collision Detection

SetWalkableSlopeOverride
void SetWalkableSlopeOverride(
FWalkableSlopeOverride 	NewOverride
	)

Sets a new slope override for this component instance.

GetMass
float32 GetMass() const

Returns the mass of this component in kg.

GetMassScale
float32 GetMassScale(
FName 	BoneName	 = 	NAME_None
	) const

Returns the mass scale used to calculate the mass of a single physics body

SetCenterOfMass
void SetCenterOfMass(
FVector 	CenterOfMassOffset,
FName 	BoneName	 = 	NAME_None
	)

Set the center of mass of a single body. This will offset the physx-calculated center of mass.  Note that in the case where multiple bodies are attached together, the center of mass will be set for the entire group.

**Parameters**

CenterOfMassOffset
FVector

User specified offset for the center of mass of this object, from the calculated location.

BoneName
FName

If a SkeletalMeshComponent, name of body to set center of mass of. 'None' indicates root body.

GetPhysicsAngularVelocityInDegrees
FVector GetPhysicsAngularVelocityInDegrees(
FName 	BoneName	 = 	NAME_None
	) const

Get the angular velocity of a single body, in degrees per second.

**Parameters**

BoneName
FName

If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body.

SetConstraintMode
void SetConstraintMode(
EDOFMode 	ConstraintMode
	)

Sets the constraint mode of the component.

**Parameters**

ConstraintMode
EDOFMode

The type of constraint to use.

SetLinearDamping
void SetLinearDamping(
float32 	InDamping
	)

Sets the linear damping of this component.

SetMassOverrideInKg
void SetMassOverrideInKg(
FName 	BoneName	 = 	NAME_None,
float32 	MassInKg	 = 	1.000000,
bool 	bOverrideMass	 = 	true
	)

Override the mass (in Kg) of a single physics body.  Note that in the case where multiple bodies are attached together, the override mass will be set for the entire group.  Set the Override Mass to false if you want to reset the body's mass to the auto-calculated physx mass.

---

## RENDERING

### SetCastContactShadow

```
void SetCastContactShadow(bool bInCastContactShadow)
```

Changes the value of bCastContactShadow.

### SetCastShadow

```
void SetCastShadow(bool NewCastShadow)
```

Changes the value of CastShadow.

### SetCustomDepthStencilValue

```
void SetCustomDepthStencilValue(int Value)
```

Sets the CustomDepth stencil value (0

### 255) and marks the render state dirty.

```
255) and marks the render state dirty.
```

SetCustomDepthStencilWriteMask

### void SetCustomDepthStencilWriteMask

```
void SetCustomDepthStencilWriteMask(ERendererStencilMask WriteMaskBit)
```

Sets the CustomDepth stencil write mask and marks the render state dirty.

### SetCastHiddenShadow

```
void SetCastHiddenShadow(bool NewCastHiddenShadow)
```

Changes the value of CastHiddenShadow.

### SetCastInsetShadow

```
void SetCastInsetShadow(bool bInCastInsetShadow)
```

Changes the value of CastInsetShadow.

### SetBoundsScale

```
void SetBoundsScale(float32 NewBoundsScale = 1.000000)
```

Scale the bounds of this object, used for frustum culling. Useful for features like WorldPositionOffset.

### SetRenderCustomDepth

```
void SetRenderCustomDepth(bool bValue)
```

Sets the bRenderCustomDepth property and marks the render state dirty.

### SetTranslucentSortPriority

```
void SetTranslucentSortPriority(int NewTranslucentSortPriority)
```

Changes the value of TranslucentSortPriority.

### SetRenderInDepthPass

```
void SetRenderInDepthPass(bool bValue)
```

Sets bRenderInDepthPass property and marks the render state dirty.

### SetSingleSampleShadowFromStationaryLights

```
void SetSingleSampleShadowFromStationaryLights(bool bNewSingleSampleShadowFromStationaryLights)
```

Changes the value of bSingleSampleShadowFromStationaryLights.

### SetRenderInMainPass

```
void SetRenderInMainPass(bool bValue)
```

Sets bRenderInMainPass property and marks the render state dirty.

### SetHiddenInSceneCapture

```
void SetHiddenInSceneCapture(bool bValue)
```

Sets bHideInSceneCapture property and marks the render state dirty.

### WasRecentlyRendered

```
bool WasRecentlyRendered(float32 Tolerance = 0.200000)const
```

Returns true if this component has been rendered "recently", with a tolerance in seconds to define what "recent" means.  e.g.: If a tolerance of 0.1 is used, this function will return true only if the actor was rendered in the last 0.1 seconds of game time.

**Parameters**

Tolerance
float32

How many seconds ago the actor last render time can be and still count as having been "recently" rendered.

**Returns**

Whether this actor was recently rendered.

SetOnlyOwnerSee
void SetOnlyOwnerSee(
bool 	bNewOnlyOwnerSee
	)

Changes the value of bOnlyOwnerSee.

SetLightAttachmentsAsGroup
void SetLightAttachmentsAsGroup(
bool 	bInLightAttachmentsAsGroup
	)

Changes the value of LightAttachmentsAsGroup.

SetEmissiveLightSource
void SetEmissiveLightSource(
bool 	NewEmissiveLightSource
	)

Changes the value of EmissiveLightSource.

SetReceivesDecals
void SetReceivesDecals(
bool 	bNewReceivesDecals
	)

Changes the value of bReceivesDecals.

SetOwnerNoSee
void SetOwnerNoSee(
bool 	bNewOwnerNoSee
	)

Changes the value of bOwnerNoSee.

SetExcludeFromLightAttachmentGroup
void SetExcludeFromLightAttachmentGroup(
bool 	bInExcludeFromLightAttachmentGroup
	)

Changes the value of ExcludeFromLightAttachmentGroup.

SetVisibleInRayTracing
void SetVisibleInRayTracing(
bool 	bNewVisibleInRayTracing
	)

Changes the value of bIsVisibleInRayTracing.

SetVisibleInSceneCaptureOnly
void SetVisibleInSceneCaptureOnly(
bool 	bValue
	)

Sets bVisibleInSceneCaptureOnly property and marks the render state dirty.

SetTranslucencySortDistanceOffset
void SetTranslucencySortDistanceOffset(
float32 	NewTranslucencySortDistanceOffset
	)

Changes the value of TranslucencySortDistanceOffset.

---

## RENDERING \| COMPONENTS

### SetLightingChannels

```
void SetLightingChannels(bool bChannel0, bool bChannel1, bool bChannel2)
```

---

## RENDERING \| MATERIAL

### GetMaterial

```
UMaterialInterface GetMaterial(int ElementIndex)const
```

Returns the material used by the element at the specified index

**Parameters**

ElementIndex
int

The element to access the material of.

**Returns**

the material used by the indexed element of this mesh.

SetCustomPrimitiveDataVector2
void SetCustomPrimitiveDataVector2(
int 	DataIndex,
FVector2D 	Value
	)

Set custom primitive data, two floats at once, from index DataIndex to index DataIndex + 1. This sets the run-time data only, so it doesn't serialize.

CreateDynamicMaterialInstance
UMaterialInstanceDynamic CreateDynamicMaterialInstance(

int 	ElementIndex,
UMaterialInterface 	SourceMaterial	 = 	nullptr,
FName 	OptionalName	 = 	NAME_None

)

Creates a Dynamic Material Instance for the specified element index, optionally from the supplied material.

**Parameters**

ElementIndex
int

The index of the skin to replace the material for.  If invalid, the material is unchanged and NULL is returned.

SetCustomPrimitiveDataFloat
void SetCustomPrimitiveDataFloat(
int 	DataIndex,
float32 	Value
	)

Set custom primitive data at index DataIndex. This sets the run-time data only, so it doesn't serialize.

SetDefaultCustomPrimitiveDataVector2
void SetDefaultCustomPrimitiveDataVector2(
int 	DataIndex,
FVector2D 	Value
	)

Set default custom primitive data, two floats at once, from index DataIndex to index DataIndex + 1, and marks the render state dirty

SetDefaultCustomPrimitiveDataVector3
void SetDefaultCustomPrimitiveDataVector3(
int 	DataIndex,
FVector 	Value
	)

Set default custom primitive data, three floats at once, from index DataIndex to index DataIndex + 2, and marks the render state dirty

GetCustomPrimitiveDataIndexForScalarParameter
int GetCustomPrimitiveDataIndexForScalarParameter(
FName 	ParameterName
	) const

Gets the index of the scalar parameter for the custom primitive data array

**Parameters**

ParameterName
FName

The parameter name of the custom primitive

**Returns**

The index of the custom primitive, INDEX_NONE (-1) if not found

SetMaterialByName
void SetMaterialByName(
FName 	MaterialSlotName,
UMaterialInterface 	Material
	)

Changes the material applied to an element of the mesh.

**Parameters**

MaterialSlotName
FName

The slot name to access the material of.

**Returns**

the material used by the indexed element of this mesh.

GetMaterialFromCollisionFaceIndex
UMaterialInterface GetMaterialFromCollisionFaceIndex(
int 	FaceIndex,
int& 	SectionIndex
	) const

Try and retrieve the material applied to a particular collision face of mesh. Used with face index returned from collision trace.

**Parameters**

FaceIndex
int

Face index from hit result that was hit by a trace

SectionIndex
int&

Section of the mesh that the face belongs to

**Returns**

Material applied to section that the hit face belongs to

SetCustomPrimitiveDataVector3
void SetCustomPrimitiveDataVector3(
int 	DataIndex,
FVector 	Value
	)

Set custom primitive data, three floats at once, from index DataIndex to index DataIndex + 2. This sets the run-time data only, so it doesn't serialize.

SetDefaultCustomPrimitiveDataVector4
void SetDefaultCustomPrimitiveDataVector4(
int 	DataIndex,
FVector4 	Value
	)

Set default custom primitive data, four floats at once, from index DataIndex to index DataIndex + 3, and marks the render state dirty

GetNumMaterials
int GetNumMaterials() const

Return number of material elements in this primitive

SetMaterial
void SetMaterial(
int 	ElementIndex,
UMaterialInterface 	Material
	)

Changes the material applied to an element of the mesh.

**Parameters**

ElementIndex
int

The element to access the material of.

**Returns**

the material used by the indexed element of this mesh.

GetCustomPrimitiveDataIndexForVectorParameter
int GetCustomPrimitiveDataIndexForVectorParameter(
FName 	ParameterName
	) const

Gets the index of the vector parameter for the custom primitive data array

**Parameters**

ParameterName
FName

The parameter name of the custom primitive

**Returns**

The index of the custom primitive, INDEX_NONE (-1) if not found

SetScalarParameterForCustomPrimitiveData
void SetScalarParameterForCustomPrimitiveData(
FName 	ParameterName,
float32 	Value
	)

Set a scalar parameter for custom primitive data. This sets the run-time data only, so it doesn't serialize.

**Parameters**

ParameterName
FName

The parameter name of the custom primitive

Value
float32

The new value of the custom primitive

SetScalarParameterForDefaultCustomPrimitiveData
void SetScalarParameterForDefaultCustomPrimitiveData(
FName 	ParameterName,
float32 	Value
	)

Set a scalar parameter for default custom primitive data. This will be serialized and is useful in construction scripts.

**Parameters**

ParameterName
FName

The parameter name of the custom primitive

Value
float32

The new value of the custom primitive

SetVectorParameterForDefaultCustomPrimitiveData
void SetVectorParameterForDefaultCustomPrimitiveData(
FName 	ParameterName,
FVector4 	Value
	)

Set a vector parameter for default custom primitive data. This will be serialized and is useful in construction scripts.

**Parameters**

ParameterName
FName

The parameter name of the custom primitive

Value
FVector4

The new value of the custom primitive

SetDefaultCustomPrimitiveDataFloat
void SetDefaultCustomPrimitiveDataFloat(
int 	DataIndex,
float32 	Value
	)

Set default custom primitive data at index DataIndex, and marks the render state dirty

SetCustomPrimitiveDataVector4
void SetCustomPrimitiveDataVector4(
int 	DataIndex,
FVector4 	Value
	)

Set custom primitive data, four floats at once, from index DataIndex to index DataIndex + 3. This sets the run-time data only, so it doesn't serialize.

SetVectorParameterForCustomPrimitiveData
void SetVectorParameterForCustomPrimitiveData(
FName 	ParameterName,
FVector4 	Value
	)

Set a vector parameter for custom primitive data. This sets the run-time data only, so it doesn't serialize.

**Parameters**

ParameterName
FName

The parameter name of the custom primitive

Value
FVector4

The new value of the custom primitive

---

## FUNCTIONS

### SetLightmapType

```
void SetLightmapType(ELightmapType Type)
```

SetbSelectable

### void SetbSelectable

```
void SetbSelectable(bool bSelectable)
```

GetBoundingBoxExtents

### FVector GetBoundingBoxExtents

```
FVector GetBoundingBoxExtents()const GetGenerateOverlapEvents
```

bool GetGenerateOverlapEvents() const

### If true, this component will generate overlap events when it is overlapping other components

```
If true, this component will generate overlap events when it is overlapping other components(eg Begin Overlap). Both components(this and the other)must have this enabled for overlap events to occur.
```

See: [Overlap Events](https://​docs​.unrealengine​.com​/InteractiveExperiences​/Physics​/Collision​/Overview​#overlapandgenerateoverlapevents) See: UpdateOverlaps(), BeginComponentOverlap(), EndComponentOverlap()

### SetGenerateOverlapEvents

```
void SetGenerateOverlapEvents(bool bInGenerateOverlapEvents)
```

Modifies value returned by GetGenerateOverlapEvents()

### GetBoundsRadius

```
float GetBoundsRadius()const
```

GetBoundsExtent

### FVector GetBoundsExtent

```
FVector GetBoundsExtent()const GetBoundsOrigin
```

FVector GetBoundsOrigin() const

### GetbSelectable

```
bool GetbSelectable()const
```

GetLightmapType

### const ELightmapType& GetLightmapType

```
const ELightmapType& GetLightmapType()const GetbEnableAutoLODGeneration
```

bool GetbEnableAutoLODGeneration() const

### SetbEnableAutoLODGeneration

```
void SetbEnableAutoLODGeneration(bool Value)
```

GetbNeverDistanceCull

### bool GetbNeverDistanceCull

```
bool GetbNeverDistanceCull()const SetbNeverDistanceCull
```

void SetbNeverDistanceCull(

### bool 	Value

```
bool 	Value 	)
```

GetbAlwaysCreatePhysicsState

### bool GetbAlwaysCreatePhysicsState

```
bool GetbAlwaysCreatePhysicsState()const SetbAlwaysCreatePhysicsState
```

void SetbAlwaysCreatePhysicsState(

### bool 	Value

```
bool 	Value 	)
```

GetbGenerateOverlapEvents

### bool GetbGenerateOverlapEvents

```
bool GetbGenerateOverlapEvents()const SetbGenerateOverlapEvents
```

void SetbGenerateOverlapEvents(

### bool 	Value

```
bool 	Value 	)
```

GetbMultiBodyOverlap

### bool GetbMultiBodyOverlap

```
bool GetbMultiBodyOverlap()const SetbMultiBodyOverlap
```

void SetbMultiBodyOverlap(

### bool 	Value

```
bool 	Value 	)
```

GetbTraceComplexOnMove

### bool GetbTraceComplexOnMove

```
bool GetbTraceComplexOnMove()const SetbTraceComplexOnMove
```

void SetbTraceComplexOnMove(

### bool 	Value

```
bool 	Value 	)
```

GetbReturnMaterialOnMove

### bool GetbReturnMaterialOnMove

```
bool GetbReturnMaterialOnMove()const SetbReturnMaterialOnMove
```

void SetbReturnMaterialOnMove(

### bool 	Value

```
bool 	Value 	)
```

GetbAllowCullDistanceVolume

### bool GetbAllowCullDistanceVolume

```
bool GetbAllowCullDistanceVolume()const SetbAllowCullDistanceVolume
```

void SetbAllowCullDistanceVolume(

### bool 	Value

```
bool 	Value 	)
```

GetbVisibleInReflectionCaptures

### bool GetbVisibleInReflectionCaptures

```
bool GetbVisibleInReflectionCaptures()const SetbVisibleInReflectionCaptures
```

void SetbVisibleInReflectionCaptures(

### bool 	Value

```
bool 	Value 	)
```

GetbVisibleInRealTimeSkyCaptures

### bool GetbVisibleInRealTimeSkyCaptures

```
bool GetbVisibleInRealTimeSkyCaptures()const SetbVisibleInRealTimeSkyCaptures
```

void SetbVisibleInRealTimeSkyCaptures(

### bool 	Value

```
bool 	Value 	)
```

GetbVisibleInRayTracing

### bool GetbVisibleInRayTracing

```
bool GetbVisibleInRayTracing()const SetbVisibleInRayTracing
```

void SetbVisibleInRayTracing(

### bool 	Value

```
bool 	Value 	)
```

GetbRenderInMainPass

### bool GetbRenderInMainPass

```
bool GetbRenderInMainPass()const SetbRenderInMainPass
```

void SetbRenderInMainPass(

### bool 	Value

```
bool 	Value 	)
```

GetbRenderInDepthPass

### bool GetbRenderInDepthPass

```
bool GetbRenderInDepthPass()const SetbRenderInDepthPass
```

void SetbRenderInDepthPass(

### bool 	Value

```
bool 	Value 	)
```

GetbReceivesDecals

### bool GetbReceivesDecals

```
bool GetbReceivesDecals()const SetbReceivesDecals
```

void SetbReceivesDecals(

### bool 	Value

```
bool 	Value 	)
```

GetbOwnerNoSee

### bool GetbOwnerNoSee

```
bool GetbOwnerNoSee()const SetbOwnerNoSee
```

void SetbOwnerNoSee(

### bool 	Value

```
bool 	Value 	)
```

GetbOnlyOwnerSee

### bool GetbOnlyOwnerSee

```
bool GetbOnlyOwnerSee()const SetbOnlyOwnerSee
```

void SetbOnlyOwnerSee(

### bool 	Value

```
bool 	Value 	)
```

GetbTreatAsBackgroundForOcclusion

### bool GetbTreatAsBackgroundForOcclusion

```
bool GetbTreatAsBackgroundForOcclusion()const SetbTreatAsBackgroundForOcclusion
```

void SetbTreatAsBackgroundForOcclusion(

### bool 	Value

```
bool 	Value 	)
```

GetbUseAsOccluder

### bool GetbUseAsOccluder

```
bool GetbUseAsOccluder()const SetbUseAsOccluder
```

void SetbUseAsOccluder(

### bool 	Value

```
bool 	Value 	)
```

SetbConsiderForActorPlacementWhenHidden

### void SetbConsiderForActorPlacementWhenHidden

```
void SetbConsiderForActorPlacementWhenHidden(bool Value)
```

GetbForceMipStreaming

### bool GetbForceMipStreaming

```
bool GetbForceMipStreaming()const SetbForceMipStreaming
```

void SetbForceMipStreaming(

### bool 	Value

```
bool 	Value 	)
```

GetCastShadow

### bool GetCastShadow

```
bool GetCastShadow()const GetbEmissiveLightSource
```

bool GetbEmissiveLightSource() const

### SetbEmissiveLightSource

```
void SetbEmissiveLightSource(bool Value)
```

GetbAffectDynamicIndirectLighting

### bool GetbAffectDynamicIndirectLighting

```
bool GetbAffectDynamicIndirectLighting()const SetbAffectDynamicIndirectLighting
```

void SetbAffectDynamicIndirectLighting(

### bool 	Value

```
bool 	Value 	)
```

GetbAffectDistanceFieldLighting

### bool GetbAffectDistanceFieldLighting

```
bool GetbAffectDistanceFieldLighting()const SetbAffectDistanceFieldLighting
```

void SetbAffectDistanceFieldLighting(

### bool 	Value

```
bool 	Value 	)
```

GetbCastDynamicShadow

### bool GetbCastDynamicShadow

```
bool GetbCastDynamicShadow()const SetbCastDynamicShadow
```

void SetbCastDynamicShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastStaticShadow

### bool GetbCastStaticShadow

```
bool GetbCastStaticShadow()const SetbCastStaticShadow
```

void SetbCastStaticShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastVolumetricTranslucentShadow

### bool GetbCastVolumetricTranslucentShadow

```
bool GetbCastVolumetricTranslucentShadow()const SetbCastVolumetricTranslucentShadow
```

void SetbCastVolumetricTranslucentShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastContactShadow

### bool GetbCastContactShadow

```
bool GetbCastContactShadow()const SetbCastContactShadow
```

void SetbCastContactShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbSelfShadowOnly

### bool GetbSelfShadowOnly

```
bool GetbSelfShadowOnly()const SetbSelfShadowOnly
```

void SetbSelfShadowOnly(

### bool 	Value

```
bool 	Value 	)
```

GetbCastFarShadow

### bool GetbCastFarShadow

```
bool GetbCastFarShadow()const SetbCastFarShadow
```

void SetbCastFarShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastInsetShadow

### bool GetbCastInsetShadow

```
bool GetbCastInsetShadow()const SetbCastInsetShadow
```

void SetbCastInsetShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastCinematicShadow

### bool GetbCastCinematicShadow

```
bool GetbCastCinematicShadow()const SetbCastCinematicShadow
```

void SetbCastCinematicShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastHiddenShadow

### bool GetbCastHiddenShadow

```
bool GetbCastHiddenShadow()const SetbCastHiddenShadow
```

void SetbCastHiddenShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastShadowAsTwoSided

### bool GetbCastShadowAsTwoSided

```
bool GetbCastShadowAsTwoSided()const SetbCastShadowAsTwoSided
```

void SetbCastShadowAsTwoSided(

### bool 	Value

```
bool 	Value 	)
```

GetbLightAttachmentsAsGroup

### bool GetbLightAttachmentsAsGroup

```
bool GetbLightAttachmentsAsGroup()const SetbLightAttachmentsAsGroup
```

void SetbLightAttachmentsAsGroup(

### bool 	Value

```
bool 	Value 	)
```

GetbExcludeFromLightAttachmentGroup

### bool GetbExcludeFromLightAttachmentGroup

```
bool GetbExcludeFromLightAttachmentGroup()const SetbExcludeFromLightAttachmentGroup
```

void SetbExcludeFromLightAttachmentGroup(

### bool 	Value

```
bool 	Value 	)
```

GetbReceiveMobileCSMShadows

### bool GetbReceiveMobileCSMShadows

```
bool GetbReceiveMobileCSMShadows()const SetbReceiveMobileCSMShadows
```

void SetbReceiveMobileCSMShadows(

### bool 	Value

```
bool 	Value 	)
```

GetbSingleSampleShadowFromStationaryLights

### bool GetbSingleSampleShadowFromStationaryLights

```
bool GetbSingleSampleShadowFromStationaryLights()const SetbSingleSampleShadowFromStationaryLights
```

void SetbSingleSampleShadowFromStationaryLights(

### bool 	Value

```
bool 	Value 	)
```

GetbIgnoreRadialImpulse

### bool GetbIgnoreRadialImpulse

```
bool GetbIgnoreRadialImpulse()const SetbIgnoreRadialImpulse
```

void SetbIgnoreRadialImpulse(

### bool 	Value

```
bool 	Value 	)
```

GetbIgnoreRadialForce

### bool GetbIgnoreRadialForce

```
bool GetbIgnoreRadialForce()const SetbIgnoreRadialForce
```

void SetbIgnoreRadialForce(

### bool 	Value

```
bool 	Value 	)
```

GetbApplyImpulseOnDamage

### bool GetbApplyImpulseOnDamage

```
bool GetbApplyImpulseOnDamage()const SetbApplyImpulseOnDamage
```

void SetbApplyImpulseOnDamage(

### bool 	Value

```
bool 	Value 	)
```

GetbReplicatePhysicsToAutonomousProxy

### bool GetbReplicatePhysicsToAutonomousProxy

```
bool GetbReplicatePhysicsToAutonomousProxy()const SetbReplicatePhysicsToAutonomousProxy
```

void SetbReplicatePhysicsToAutonomousProxy(

### bool 	Value

```
bool 	Value 	)
```

SetbFillCollisionUnderneathForNavmesh

### void SetbFillCollisionUnderneathForNavmesh

```
void SetbFillCollisionUnderneathForNavmesh(bool Value)
```

GetbRenderCustomDepth

### bool GetbRenderCustomDepth

```
bool GetbRenderCustomDepth()const SetbRenderCustomDepth
```

void SetbRenderCustomDepth(

### bool 	Value

```
bool 	Value 	)
```

GetbVisibleInSceneCaptureOnly

### bool GetbVisibleInSceneCaptureOnly

```
bool GetbVisibleInSceneCaptureOnly()const SetbVisibleInSceneCaptureOnly
```

void SetbVisibleInSceneCaptureOnly(

### bool 	Value

```
bool 	Value 	)
```

GetbHiddenInSceneCapture

### bool GetbHiddenInSceneCapture

```
bool GetbHiddenInSceneCapture()const SetbHiddenInSceneCapture
```

void SetbHiddenInSceneCapture(

### bool 	Value

```
bool 	Value 	)
```

GetLightingChannels

### const FLightingChannels& GetLightingChannels

```
const FLightingChannels& GetLightingChannels()const GetCustomDepthStencilValue
```

const int& GetCustomDepthStencilValue() const

### GetTranslucencySortDistanceOffset

```
const float32& GetTranslucencySortDistanceOffset()const
```

GetCustomDepthStencilWriteMask

### const ERendererStencilMask& GetCustomDepthStencilWriteMask

```
const ERendererStencilMask& GetCustomDepthStencilWriteMask()const STATIC FUNCTIONS
```

Get

### static UPrimitiveComponent UPrimitiveComponent::Get

```
static UPrimitiveComponent UPrimitiveComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPrimitiveComponent UPrimitiveComponent::GetOrCreate

```
static UPrimitiveComponent UPrimitiveComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPrimitiveComponent UPrimitiveComponent::Create

```
static UPrimitiveComponent UPrimitiveComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPrimitiveComponent::StaticClass

```
static UClass UPrimitiveComponent::StaticClass()
```
