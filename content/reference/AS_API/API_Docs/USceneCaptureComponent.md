# USceneCaptureComponent

**Visibility:** public

## Inheritance

USceneComponent → USceneCaptureComponent → UPlanarReflectionComponent → USceneCaptureComponent2D → USceneCaptureComponentCube

## Description

-> will be exported to EngineDecalClasses.h

## PLANARREFLECTION

### LODDistanceFactor

```
float32 LODDistanceFactor
```

Scales the distance used by LOD. Set to values greater than 1 to cause the scene capture to use lower LODs than the main view to speed up the scene capture pass.

---

## SCENECAPTURE

### bAlwaysPersistRenderingState

```
bool bAlwaysPersistRenderingState
```

Whether to persist the rendering state even if bCaptureEveryFrame==false.  This allows velocities for Motion Blur and Temporal AA to be computed.

### HiddenActors

```
TArray<TObjectPtr<AActor>> HiddenActors
```

The actors to hide in the scene capture.

### ShowOnlyActors

```
TArray<TObjectPtr<AActor>> ShowOnlyActors
```

The only actors to be rendered by this scene capture, if PrimitiveRenderMode is set to UseShowOnlyList.

### CaptureSource

```
ESceneCaptureSource CaptureSource
```
### MaxViewDistanceOverride

```
float32 MaxViewDistanceOverride
```

if > 0, sets a maximum render distance override.  Can be used to cull distant objects from a reflection if the reflecting plane is in an enclosed area like a hallway or room

### PrimitiveRenderMode

```
ESceneCapturePrimitiveRenderMode PrimitiveRenderMode
```

Controls what primitives get rendered into the scene capture.

### bUseRayTracingIfEnabled

```
bool bUseRayTracingIfEnabled
```

Whether to use ray tracing for this capture. Ray Tracing must be enabled in the project.

### ShowFlagSettings

```
TArray<FEngineShowFlagsSetting> ShowFlagSettings
```

ShowFlags for the SceneCapture's ViewFamily, to control rendering settings for this view. Hidden but accessible through details customization

### ProfilingEventName

```
FString ProfilingEventName
```

Name of the profiling event.

### bCaptureEveryFrame

```
bool bCaptureEveryFrame
```

Whether to update the capture's contents every frame.  If disabled, the component will render once on load and then only when moved.

### bCaptureOnMovement

```
bool bCaptureOnMovement
```

Whether to update the capture's contents on movement.  Disable if you are going to capture manually from blueprint.

### CaptureSortPriority

```
int CaptureSortPriority
```

Capture priority within the frame to sort scene capture on GPU to resolve interdependencies between multiple capture components. Highest come first.

---

## RENDERING \| SCENECAPTURE

### RemoveShowOnlyActorComponents

```
void RemoveShowOnlyActorComponents(AActor InActor, bool bIncludeFromChildActors = false)
```

Removes an actor's components from the Show Only list.

**Parameters**

bIncludeFromChildActors
bool

Whether to remove the components from child actors

ClearShowOnlyComponents
void ClearShowOnlyComponents()

Clears the Show Only list.

HideActorComponents
void HideActorComponents(
AActor 	InActor,
bool 	bIncludeFromChildActors	 = 	false
	)

Adds all primitive components in the actor to our list of hidden components.

**Parameters**

bIncludeFromChildActors
bool

Whether to include the components from child actors

HideComponent
void HideComponent(
UPrimitiveComponent 	InComponent
	)

Adds the component to our list of hidden components.

ClearHiddenComponents
void ClearHiddenComponents()

Clears the hidden list.

RemoveShowOnlyComponent
void RemoveShowOnlyComponent(
UPrimitiveComponent 	InComponent
	)

Removes a component from the Show Only list.

SetCaptureSortPriority
void SetCaptureSortPriority(
int 	NewCaptureSortPriority
	)

Changes the value of TranslucentSortPriority.

ShowOnlyActorComponents
void ShowOnlyActorComponents(
AActor 	InActor,
bool 	bIncludeFromChildActors	 = 	false
	)

Adds all primitive components in the actor to our list of show-only components.

**Parameters**

bIncludeFromChildActors
bool

Whether to include the components from child actors

ShowOnlyComponent
void ShowOnlyComponent(
UPrimitiveComponent 	InComponent
	)

Adds the component to our list of show-only components.

---

## FUNCTIONS

### GetbCaptureEveryFrame

```
bool GetbCaptureEveryFrame()const
```

SetbCaptureEveryFrame

### void SetbCaptureEveryFrame

```
void SetbCaptureEveryFrame(bool Value)
```

GetbCaptureOnMovement

### bool GetbCaptureOnMovement

```
bool GetbCaptureOnMovement()const SetbCaptureOnMovement
```

void SetbCaptureOnMovement(

### bool 	Value

```
bool 	Value 	)
```

GetCaptureSortPriority

### const int& GetCaptureSortPriority

```
const int& GetCaptureSortPriority()const STATIC FUNCTIONS
```

Get

### static USceneCaptureComponent USceneCaptureComponent::Get

```
static USceneCaptureComponent USceneCaptureComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USceneCaptureComponent USceneCaptureComponent::GetOrCreate

```
static USceneCaptureComponent USceneCaptureComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USceneCaptureComponent USceneCaptureComponent::Create

```
static USceneCaptureComponent USceneCaptureComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USceneCaptureComponent::StaticClass

```
static UClass USceneCaptureComponent::StaticClass()
```
