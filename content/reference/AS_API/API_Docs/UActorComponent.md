# UActorComponent

**Visibility:** public

## Inheritance

UObject → UActorComponent → UActorSequenceComponent → UActorTextureStreamingBuildDataComponent → UAIPerceptionComponent → UAIPerceptionStimuliSourceComponent

## Description

and 36 other children

ActorComponent is the base class for components that define reusable behavior that can be added to different types of Actors.  ActorComponents that have a transform are known as SceneComponents and those that can be rendered are PrimitiveComponents.

### See also

- [ActorComponent](https://​docs​.unrealengine​.com​/latest​/INT​/Programming​/UnrealArchitecture​/Actors​/Components​/index​.html​#actorcomponents) @see USceneComponent @see UPrimitiveComponent

## ACTIVATION

### bAutoActivate

```
bool bAutoActivate
```

Whether the component is activated at creation or must be explicitly activated.

---

## ASSETUSERDATA

### AssetUserData

```
TArray<TObjectPtr<UAssetUserData>> AssetUserData
```

Array of user data stored with the component

---

## COMPONENTREPLICATION

### bReplicates

```
bool bReplicates
```

Is this component currently replicating? Should the network code consider it for replication? Owning Actor must be replicating first!

---

## COMPONENTS

### Owner

```
const AActor Owner
```

Follow the Outer chain to get the  AActor  that 'Owns' this component

---

## COMPONENTS \| ACTIVATION

### OnComponentDeactivated

```
FActorComponentDeactivateSignature OnComponentDeactivated
```

Called when the component has been deactivated

### OnComponentActivated

```
FActorComponentActivatedSignature OnComponentActivated
```

Called when the component has been activated, with parameter indicating if it was from a reset

---

## COMPONENTS \| TICK

### ComponentTickInterval

```
float32 ComponentTickInterval
```

Returns the tick interval for this component's primary tick function, which is the frequency in seconds at which it will be executed

---

## COMPONENTTICK

### PrimaryComponentTick

```
FActorComponentTickFunction PrimaryComponentTick
```

Main tick function for the Component

---

## COOKING

### bIsEditorOnly

```
bool bIsEditorOnly
```

If true, the component will be excluded from non-editor builds

---

## TAGS

### ComponentTags

```
TArray<FName> ComponentTags
```

Array of tags that can be used for grouping and categorizing. Can also be accessed from scripting.

---

## COMPONENTS

### IsBeingDestroyed

```
bool IsBeingDestroyed()const
```

Returns whether the component is in the process of being destroyed.

### SetIsReplicated

```
void SetIsReplicated(bool ShouldReplicate)
```

Enable or disable replication. This is the equivalent of RemoteRole for actors (only a bool is required for components)

### DestroyComponent

```
void DestroyComponent(UObject Object)
```

Unregister and mark for pending kill a component.  This may not be used to destroy a component that is owned by an actor unless the owning actor is calling the function.

### GetOwner

```
AActor GetOwner()const
```

Follow the Outer chain to get the  AActor  that 'Owns' this component

### ComponentHasTag

```
bool ComponentHasTag(FName Tag)const
```

See if this component contains the supplied tag

---

## COMPONENTS \| ACTIVATION

### ToggleActive

```
void ToggleActive()
```

Toggles the active state of the component

### SetActive

```
void SetActive(bool bNewActive, bool bReset = false)
```

Sets whether the component is active or not

**Parameters**

bNewActive
bool

The new active state of the component

bReset
bool

Whether the activation should happen even if ShouldActivate returns false.

SetAutoActivate
void SetAutoActivate(
bool 	bNewAutoActivate
	)

Sets whether the component should be auto activate or not. Only safe during construction scripts.

**Parameters**

bNewAutoActivate
bool

The new auto activate state of the component

Activate
void Activate(
bool 	bReset	 = 	false
	)

Activates the SceneComponent, should be overridden by native child classes.

**Parameters**

bReset
bool

Whether the activation should happen even if ShouldActivate returns false.

Deactivate
void Deactivate()

Deactivates the SceneComponent.

IsActive
bool IsActive() const

Returns whether the component is active or not

**Returns**

The active state of the component.

---

## COMPONENTS \| TICK

### GetComponentTickInterval

```
float32 GetComponentTickInterval()const
```

Returns the tick interval for this component's primary tick function, which is the frequency in seconds at which it will be executed

### AddTickPrerequisiteActor

```
void AddTickPrerequisiteActor(AActor PrerequisiteActor)
```

Make this component tick after PrerequisiteActor

### AddTickPrerequisiteComponent

```
void AddTickPrerequisiteComponent(UActorComponent PrerequisiteComponent)
```

Make this component tick after PrerequisiteComponent.

### IsComponentTickEnabled

```
bool IsComponentTickEnabled()const
```

Returns whether this component has tick enabled or not

### RemoveTickPrerequisiteComponent

```
void RemoveTickPrerequisiteComponent(UActorComponent PrerequisiteComponent)
```

Remove tick dependency on PrerequisiteComponent.

### SetTickGroup

```
void SetTickGroup(ETickingGroup NewTickGroup)
```

Changes the ticking group for this component

### SetComponentTickInterval

```
void SetComponentTickInterval(float32 TickInterval)
```

Sets the tick interval for this component's primary tick function. Does not enable the tick interval. Takes effect on next tick.

**Parameters**

TickInterval
float32

The duration between ticks for this component's primary tick function

RemoveTickPrerequisiteActor
void RemoveTickPrerequisiteActor(
AActor 	PrerequisiteActor
	)

Remove tick dependency on PrerequisiteActor.

SetComponentTickEnabled
void SetComponentTickEnabled(
bool 	bEnabled
	)

Set this component's tick functions to be enabled or disabled. Only has an effect if the function is registered

**Parameters**

bEnabled
bool

Whether it should be enabled or not

SetTickableWhenPaused
void SetTickableWhenPaused(
bool 	bTickableWhenPaused
	)

Sets whether this component can tick when paused.

SetComponentTickIntervalAndCooldown
void SetComponentTickIntervalAndCooldown(
float32 	TickInterval
	)

Sets the tick interval for this component's primary tick function. Does not enable the tick interval. Takes effect imediately.

**Parameters**

TickInterval
float32

The duration between ticks for this component's primary tick function

---

## FUNCTIONS

### IsVisualizationComponent

```
bool IsVisualizationComponent()const
```

MarkRenderStateDirty

### void MarkRenderStateDirty

```
void MarkRenderStateDirty()
```

Tick

### void Tick

```
void Tick(float32 DeltaSeconds)
```

Event called every frame if tick is enabled

### SetIsVisualizationComponent

```
void SetIsVisualizationComponent(bool Value)
```

SetbIsEditorOnly

### void SetbIsEditorOnly

```
void SetbIsEditorOnly(bool Value)
```

SetbTickInEditor

### void SetbTickInEditor

```
void SetbTickInEditor(bool Value)
```

BeginPlay

### void BeginPlay

```
void BeginPlay()
```

Blueprint implementable event for when the component is beginning play, called before its owning actor's BeginPlay or when the component is dynamically created if the Actor has already BegunPlay.

### EndPlay

```
void EndPlay(EEndPlayReason EndPlayReason)
```

Blueprint implementable event for when the component ends play, generally via destruction or its Actor's EndPlay.

### GetbReplicates

```
bool GetbReplicates()const
```

SetbReplicates

### void SetbReplicates

```
void SetbReplicates(bool Value)
```

GetbAutoActivate

### bool GetbAutoActivate

```
bool GetbAutoActivate()const SetbAutoActivate
```

void SetbAutoActivate(

### bool 	Value

```
bool 	Value 	)
```

SetbEditableWhenInherited

### void SetbEditableWhenInherited

```
void SetbEditableWhenInherited(bool Value)
```

SetbCanEverAffectNavigation

### void SetbCanEverAffectNavigation

```
void SetbCanEverAffectNavigation(bool Value)
```

GetbIsEditorOnly

### bool GetbIsEditorOnly

```
bool GetbIsEditorOnly()const STATIC FUNCTIONS
```

Get

### static UActorComponent UActorComponent::Get

```
static UActorComponent UActorComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UActorComponent UActorComponent::GetOrCreate

```
static UActorComponent UActorComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UActorComponent UActorComponent::Create

```
static UActorComponent UActorComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UActorComponent::StaticClass

```
static UClass UActorComponent::StaticClass()
```
