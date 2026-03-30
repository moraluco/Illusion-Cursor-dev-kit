# ADynamicMeshActor

**Visibility:** public

## Inheritance

AActor → ADynamicMeshActor

## Description

ADynamicMeshActor is an Actor that has a USimpleDynamicMeshComponent as it's RootObject.

## DYNAMICMESHACTOR

### ComputeMeshPool

```
const UDynamicMeshPool ComputeMeshPool
```

Access the compute mesh pool

### DynamicMeshComponent

```
UDynamicMeshComponent DynamicMeshComponent bEnableComputeMeshPool bool bEnableComputeMeshPool
```

Control whether the DynamicMeshPool will be created when requested via GetComputeMeshPool()

---

## DYNAMICMESHACTOR

### ReleaseAllComputeMeshes

```
void ReleaseAllComputeMeshes()
```

Release all compute meshes that the Pool has allocated

### FreeAllComputeMeshes

```
void FreeAllComputeMeshes()
```

Release all compute meshes that the Pool has allocated, and then release them from the Pool, so that they will be garbage-collected

### GetComputeMeshPool

```
UDynamicMeshPool GetComputeMeshPool()
```

Access the compute mesh pool

### GetDynamicMeshComponent

```
UDynamicMeshComponent GetDynamicMeshComponent()const
```

AllocateComputeMesh

### UDynamicMesh AllocateComputeMesh

```
UDynamicMesh AllocateComputeMesh()
```

Request a compute mesh from the Pool, which will return a previously-allocated mesh or add and return a new one. If the Pool is disabled, a new UDynamicMesh will be allocated and returned.

### ReleaseComputeMesh

```
bool ReleaseComputeMesh(UDynamicMesh Mesh)
```

Release a compute mesh back to the Pool

---

## FUNCTIONS

### SetDynamicMeshComponent

```
void SetDynamicMeshComponent(UDynamicMeshComponent Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ADynamicMeshActor ADynamicMeshActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ADynamicMeshActor::StaticClass

```
static UClass ADynamicMeshActor::StaticClass()
```
