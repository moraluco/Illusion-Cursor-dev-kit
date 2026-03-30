# UARTrackableNotifyComponent

**Visibility:** public

## Inheritance

UActorComponent → UARTrackableNotifyComponent

## Description

Component used to listen to ar trackable object changes

## EVENT

### OnUpdateTrackedImage

```
FTrackableImageDelegate OnUpdateTrackedImage
```

Event that happens when any ar Image item is updated

### OnUpdateTrackedGeometry

```
FTrackableDelegate OnUpdateTrackedGeometry
```

Event that happens when any trackable ar item is updated

### OnRemoveTrackedGeometry

```
FTrackableDelegate OnRemoveTrackedGeometry
```

Event that happens when any trackable ar item is removed from the scene

### OnAddTrackedPlane

```
FTrackablePlaneDelegate OnAddTrackedPlane
```

Event that happens when any new ar plane item is added

### OnUpdateTrackedPlane

```
FTrackablePlaneDelegate OnUpdateTrackedPlane
```

Event that happens when any ar plane item is updated

### OnRemoveTrackedPlane

```
FTrackablePlaneDelegate OnRemoveTrackedPlane
```

Event that happens when any ar plane item is removed from the scene

### OnAddTrackedPoint

```
FTrackablePointDelegate OnAddTrackedPoint
```

Event that happens when any new ar Point item is added

### OnUpdateTrackedPoint

```
FTrackablePointDelegate OnUpdateTrackedPoint
```

Event that happens when any ar Point item is updated

### OnRemoveTrackedPoint

```
FTrackablePointDelegate OnRemoveTrackedPoint
```

Event that happens when any ar Point item is removed from the scene

### OnAddTrackedImage

```
FTrackableImageDelegate OnAddTrackedImage
```

Event that happens when any new ar Image item is added

### OnAddTrackedGeometry

```
FTrackableDelegate OnAddTrackedGeometry
```

Event that happens when any new trackable ar item is added

### OnRemoveTrackedImage

```
FTrackableImageDelegate OnRemoveTrackedImage
```

Event that happens when any ar Image item is removed from the scene

### OnAddTrackedFace

```
FTrackableFaceDelegate OnAddTrackedFace
```

Event that happens when any new ar Face item is added

### OnUpdateTrackedFace

```
FTrackableFaceDelegate OnUpdateTrackedFace
```

Event that happens when any ar Face item is updated

### OnRemoveTrackedFace

```
FTrackableFaceDelegate OnRemoveTrackedFace
```

Event that happens when any ar Face item is removed from the scene

### OnAddTrackedEnvProbe

```
FTrackableEnvProbeDelegate OnAddTrackedEnvProbe
```

Event that happens when any new ar environment capture probe item is added

### OnUpdateTrackedEnvProbe

```
FTrackableEnvProbeDelegate OnUpdateTrackedEnvProbe
```

Event that happens when any ar environment capture probe item is updated

### OnRemoveTrackedEnvProbe

```
FTrackableEnvProbeDelegate OnRemoveTrackedEnvProbe
```

Event that happens when any ar environment capture probe item is removed from the scene

### OnAddTrackedObject

```
FTrackableObjectDelegate OnAddTrackedObject
```

Event that happens when any new ar detected object item is added

### OnUpdateTrackedObject

```
FTrackableObjectDelegate OnUpdateTrackedObject
```

Event that happens when any ar detected object item is updated

### OnRemoveTrackedObject

```
FTrackableObjectDelegate OnRemoveTrackedObject
```

Event that happens when any ar detected object item is removed from the scene

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARTrackableNotifyComponent UARTrackableNotifyComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARTrackableNotifyComponent UARTrackableNotifyComponent::GetOrCreate

```
static UARTrackableNotifyComponent UARTrackableNotifyComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UARTrackableNotifyComponent UARTrackableNotifyComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARTrackableNotifyComponent::StaticClass

```
static UClass UARTrackableNotifyComponent::StaticClass()
```
