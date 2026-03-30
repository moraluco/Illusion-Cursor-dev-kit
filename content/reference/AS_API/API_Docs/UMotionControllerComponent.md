# UMotionControllerComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UMotionControllerComponent → MOTIONCONTROLLER → Hand

## Description

EControllerHand Hand

DEPRECATED (use MotionSource instead) Which hand this component should automatically follow

MotionSource FName MotionSource CurrentTrackingStatus ETrackingStatus CurrentTrackingStatus

The tracking status for the device (e.g. full tracking, inertial tracking only, no tracking)

PlayerIndex int PlayerIndex

Which player index this motion controller should automatically follow

bDisableLowLatencyUpdate bool bDisableLowLatencyUpdate

If false, render transforms within the motion controller hierarchy will be updated a second time immediately before rendering.

## VISUALIZATION

### DisplayComponent

```
UPrimitiveComponent DisplayComponent
```
### bDisplayDeviceModel

```
bool bDisplayDeviceModel
```

Used to automatically render a model associated with the set hand.

### DisplayMeshMaterialOverrides

```
TArray<TObjectPtr<UMaterialInterface>> DisplayMeshMaterialOverrides
```

Material overrides for the specified display mesh.

### DisplayModelSource

```
FName DisplayModelSource
```

Determines the source of the desired model. By default, the active XR system(s) will be queried and (if available) will provide a model for the associated device. NOTE: this may fail if there's no default model; use 'Custom' to specify your own.

### CustomDisplayMesh

```
UStaticMesh CustomDisplayMesh
```

A mesh override that'll be displayed attached to this MotionController.

### MOTION CONTROLLER UPDATE

```
MOTION CONTROLLER UPDATE GetParameterValue float32 GetParameterValue(FName InName, bool& bValueFound)
```

Returns the value of a custom parameter on the current in use Motion Controller (see member InUseMotionController). Only valid for the duration of OnMotionControllerUpdated

### OnMotionControllerUpdated

```
void OnMotionControllerUpdated()
```

Blueprint Implementable function for reponding to updated data from a motion controller (so we can use custom paramater values from it)

### GetHandJointPosition

```
FVector GetHandJointPosition(int jointIndex, bool& bValueFound)
```

---

## MOTIONCONTROLLER

### IsTracked

```
bool IsTracked()const
```

Whether or not this component had a valid tracked device this frame

---

## FUNCTIONS

### SetCustomDisplayMesh

```
void SetCustomDisplayMesh(UStaticMesh NewDisplayMesh)
```

SetDisplayModelSource

### void SetDisplayModelSource

```
void SetDisplayModelSource(const FName NewDisplayModelSource)
```

SetShowDeviceModel

### void SetShowDeviceModel

```
void SetShowDeviceModel(bool bShowControllerModel)
```

SetAssociatedPlayerIndex

### void SetAssociatedPlayerIndex

```
void SetAssociatedPlayerIndex(int NewPlayer)
```

SetTrackingMotionSource

### void SetTrackingMotionSource

```
void SetTrackingMotionSource(const FName NewSource)
```

GetbDisableLowLatencyUpdate

### bool GetbDisableLowLatencyUpdate

```
bool GetbDisableLowLatencyUpdate()const SetbDisableLowLatencyUpdate
```

void SetbDisableLowLatencyUpdate(

### bool 	Value

```
bool 	Value 	)
```

GetDisplayModelSource

### const FName& GetDisplayModelSource

```
const FName& GetDisplayModelSource()const GetCustomDisplayMesh
```

UStaticMesh GetCustomDisplayMesh() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UMotionControllerComponent UMotionControllerComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UMotionControllerComponent UMotionControllerComponent::GetOrCreate

```
static UMotionControllerComponent UMotionControllerComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UMotionControllerComponent UMotionControllerComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UMotionControllerComponent::StaticClass

```
static UClass UMotionControllerComponent::StaticClass()
```
