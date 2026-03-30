# UMockDataMeshTrackerComponent

**Visibility:** public

## Inheritance

USceneComponent → UMockDataMeshTrackerComponent

## Description

The MeshTrackerComponent class manages requests for environmental mesh data, processes the results and provides them to the calling system. The calling system is able request environmental mesh data within a specified area.  Various other search criteria can be set via this class's public properties.  Mesh data requests are processed on a separate thread.  Once a mesh data request has been processed the calling system will be notified via an FOnMeshTrackerUpdated broadcast.

## MESHING

### VertexColorMode

```
EMeshTrackerVertexColorMode VertexColorMode
```

Vertex Colors can be unused, or filled with several types of information.

### ScanWorld

```
bool ScanWorld
```

Set to true to start scanning the world for meshes.

### RequestNormals

```
bool RequestNormals
```

If true, the system will generate normals for the triangle vertices.

### RequestVertexConfidence

```
bool RequestVertexConfidence
```

If true, the system will generate the mesh confidence values for the triangle vertices.  These confidence values can be used to determine if the user needs to scan more.

### BlockVertexColors

```
TArray<FColor> BlockVertexColors
```

Colors through which we cycle when setting vertex color by block.

### VertexColorFromConfidenceZero

```
FLinearColor VertexColorFromConfidenceZero
```

Color mapped to confidence value of zero.

### VertexColorFromConfidenceOne

```
FLinearColor VertexColorFromConfidenceOne
```

Color mapped to confidence value of one.

---

## MESHING \| MOCKDATA

### UpdateInterval

```
float32 UpdateInterval
```

Update Interval in Seconds.

---

## VARIABLES

### OnMeshTrackerUpdated

```
FOnMockDataMeshTrackerUpdated__MockDataMeshTrackerComponent OnMeshTrackerUpdated
```

Activated whenever new information about this mesh tracker is detected.

### MESH RECONSTRUCTION

```
MESH RECONSTRUCTION DisconnectMRMesh void DisconnectMRMesh(UMRMeshComponent InMRMeshPtr)
```

Unlinks the current procedural mesh component from the mesh tracking system.

**Parameters**

InMRMeshPtr
UMRMeshComponent

The procedural mesh component to unlink from the mesh tracking system.

ConnectMRMesh
void ConnectMRMesh(
UMRMeshComponent 	InMRMeshPtr
	)

Sets the procedural mesh component that will store and display the environmental mesh results.

**Parameters**

InMRMeshPtr
UMRMeshComponent

The procedural mesh component to store the query result in.

STATIC FUNCTIONS
Get
static UMockDataMeshTrackerComponent UMockDataMeshTrackerComponent::Get(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
GetOrCreate
static UMockDataMeshTrackerComponent UMockDataMeshTrackerComponent::GetOrCreate(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
Create
static UMockDataMeshTrackerComponent UMockDataMeshTrackerComponent::Create(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
StaticClass
static UClass UMockDataMeshTrackerComponent::StaticClass()
