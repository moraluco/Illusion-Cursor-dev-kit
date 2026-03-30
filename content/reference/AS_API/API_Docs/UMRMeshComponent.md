# UMRMeshComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UMRMeshComponent → APPEARANCE

## Description

bCreateMeshProxySections bool bCreateMeshProxySections

If true, MRMesh will create a renderable mesh proxy.  If false it will not, but could still provide collision.

## Members

### RECONSTRUCTION

```
MESH RECONSTRUCTION
```
### UseWireframe

```
bool UseWireframe
```
### EnableMeshOcclusion

```
bool EnableMeshOcclusion
```
### WireframeColor

```
FLinearColor WireframeColor
```

---

## MRMESH

### bNeverCreateCollisionMesh

```
bool bNeverCreateCollisionMesh
```

If true, MRMesh will not create a collidable ridgid body for each mesh section and can therefore never have collision.  Avoids the cost of generating collision.

### bUpdateNavMeshOnMeshUpdate

```
bool bUpdateNavMeshOnMeshUpdate
```

If true, MRMesh will automatically update its navmesh whenever any Mesh section is updated. This may be expensive. If this is disabled use ForceNavMeshUpdate to trigger a navmesh update when necessary.  Moving the component will also trigger a navmesh update.

### MESH RECONSTRUCTION

```
MESH RECONSTRUCTION SetEnableMeshOcclusion void SetEnableMeshOcclusion(bool bEnable)
```

ForceNavMeshUpdate

### void ForceNavMeshUpdate

```
void ForceNavMeshUpdate()
```

Force navmesh generation to run using the current collision data.  This will run even if the collision data has not been udpated! Unless you are changing navmesh settings or similar RequestNavMeshUpdate is reccomended.

### GetEnableMeshOcclusion

```
bool GetEnableMeshOcclusion()const
```

GetUseWireframe

### bool GetUseWireframe

```
bool GetUseWireframe()const GetWireframeColor
```

const FLinearColor& GetWireframeColor() const

### IsConnected

```
bool IsConnected()const
```

RequestNavMeshUpdate

### void RequestNavMeshUpdate

```
void RequestNavMeshUpdate()
```

Generate nav mesh if collision data has changed since the last nav mesh generation.

### Clear

```
void Clear()
```

SetUseWireframe

### void SetUseWireframe

```
void SetUseWireframe(bool bUseWireframe)
```

SetWireframeColor

### void SetWireframeColor

```
void SetWireframeColor(FLinearColor InColor)
```

SetWireframeMaterial

### void SetWireframeMaterial

```
void SetWireframeMaterial(UMaterialInterface InMaterial)
```

Set the wireframe material.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UMRMeshComponent UMRMeshComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UMRMeshComponent UMRMeshComponent::GetOrCreate

```
static UMRMeshComponent UMRMeshComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UMRMeshComponent UMRMeshComponent::Create

```
static UMRMeshComponent UMRMeshComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UMRMeshComponent::StaticClass

```
static UClass UMRMeshComponent::StaticClass()
```
