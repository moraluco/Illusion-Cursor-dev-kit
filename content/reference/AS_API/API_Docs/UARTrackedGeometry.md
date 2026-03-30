# UARTrackedGeometry

**Visibility:** public

## Inheritance

UObject → UARTrackedGeometry → UAREnvironmentCaptureProbe → UARFaceGeometry → UARGeoAnchor → UARMeshGeometry

## Description

and 5 other children AR AUGMENTEDREALITY|TRACKED GEOMETRY LocalToWorldTransform const FTransform LocalToWorldTransform UniqueId FGuid UniqueId LastUpdateTimestamp const float32 LastUpdateTimestamp Name const FString Name

## VARIABLES

### DebugName

```
const FName DebugName
```

A unique name that can be used to identify the anchor for debug purposes

### LocalToTrackingTransform

```
const FTransform LocalToTrackingTransform
```
### ObjectClassification

```
const EARObjectClassification ObjectClassification
```

What the scene understanding system thinks this object is

### TrackingState

```
const EARTrackingState TrackingState
```
### UnderlyingMesh

```
const UMRMeshComponent UnderlyingMesh
```

For AR systems that support arbitrary mesh geometry associated with a tracked point

### LastUpdateFrameNumber

```
const int LastUpdateFrameNumber
```

The frame number this tracked geometry was last updated on

### AR AUGMENTEDREALITY|SCENE UNDERSTANDING

```
AR AUGMENTEDREALITY|SCENE UNDERSTANDING GetObjectClassification EARObjectClassification GetObjectClassification()const
```

HasSpatialMeshUsageFlag

### bool HasSpatialMeshUsageFlag

```
bool HasSpatialMeshUsageFlag(EARSpatialMeshUsageFlags InFlag)const
```

AR AUGMENTEDREALITY|TRACKED GEOMETRY

### GetLocalToTrackingTransform

```
FTransform GetLocalToTrackingTransform()const
```

GetLocalToWorldTransform

### FTransform GetLocalToWorldTransform

```
FTransform GetLocalToWorldTransform()const GetName
```

const FString& GetName() const

### GetLastUpdateFrameNumber

```
int GetLastUpdateFrameNumber()const
```

GetTrackingState

### EARTrackingState GetTrackingState

```
EARTrackingState GetTrackingState()const GetUnderlyingMesh
```

UMRMeshComponent GetUnderlyingMesh()

### GetLastUpdateTimestamp

```
float32 GetLastUpdateTimestamp()const
```

GetDebugName

### FName GetDebugName

```
FName GetDebugName()const IsTracked
```

bool IsTracked() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UARTrackedGeometry::StaticClass()
```
