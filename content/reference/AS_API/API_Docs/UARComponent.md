# UARComponent

**Visibility:** public

## Inheritance

USceneComponent → UARComponent → UAREnvironmentProbeComponent → UARFaceComponent → UARGeoAnchorComponent → UARImageComponent

## Description

and 6 other children

ARComponent handles replication and visualization update for AR tracked geometries ARComponent is created in either multiplayer or local only environment

To customize the visualization logic, override 'UpdateVisualization' in Blueprint or 'UpdateVisualization_Implementation' in C++

To customize the replication logic, disable 'bUseDefaultReplication' and implement your own replication logic when the ARComponent is updated (see how 'Update' is implemented in the sub classes)

A MRMeshComponent will be created if mesh visualization is enabled (see UARSessionConfig::bGenerateMeshDataFromTrackedGeometry) It can be accessed via 'GetMRMesh' or 'UARTrackedGeometry::GetUnderlyingMesh'

## Members

### GAMEPLAY

```
AR GAMEPLAY
```
### DefaultMeshMaterial

```
UMaterialInterface DefaultMeshMaterial
```

The default material to be used for the generated mesh component.  If not set, the DefaultMeshMaterial from ARSessionConfig will be used.

### DefaultWireframeMeshMaterial

```
UMaterialInterface DefaultWireframeMeshMaterial
```

The default wireframe material to be used for the generated mesh component.  If not set, the DefaultMeshMaterial from ARSessionConfig will be used.

### MRMesh

```
const UMRMeshComponent MRMesh
```
### bUseDefaultReplication

```
bool bUseDefaultReplication
```

If the default replication logic should be used for this component

### AR GAMEPLAY

```
AR GAMEPLAY UpdateVisualization void UpdateVisualization()
```

SetNativeID

### void SetNativeID

```
void SetNativeID(FGuid NativeID)
```

GetMRMesh

### UMRMeshComponent GetMRMesh

```
UMRMeshComponent GetMRMesh()
```

---

## FUNCTIONS

### Remove

```
void Remove()
```

Event when native representation is removed, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARComponent UARComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARComponent UARComponent::GetOrCreate

```
static UARComponent UARComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARComponent UARComponent::Create

```
static UARComponent UARComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARComponent::StaticClass

```
static UClass UARComponent::StaticClass()
```
