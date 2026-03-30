# UCustomMeshComponent

**Visibility:** public

## Inheritance

UMeshComponent → UCustomMeshComponent

## Description

Component that allows you to specify custom triangle mesh geometry

## COMPONENTS \| CUSTOMMESH

### ClearCustomMeshTriangles

```
void ClearCustomMeshTriangles()
```

Removes all geometry from this triangle mesh.  Does not deallocate memory, allowing new geometry to reuse the existing allocation.

### SetCustomMeshTriangles

```
bool SetCustomMeshTriangles(TArray<FCustomMeshTriangle> Triangles)
```

Set the geometry to use on this triangle mesh

### AddCustomMeshTriangles

```
void AddCustomMeshTriangles(TArray<FCustomMeshTriangle> Triangles)
```

Add to the geometry to use on this triangle mesh.  This may cause an allocation.  Use SetCustomMeshTriangles() instead when possible to reduce allocations.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UCustomMeshComponent UCustomMeshComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UCustomMeshComponent UCustomMeshComponent::GetOrCreate

```
static UCustomMeshComponent UCustomMeshComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UCustomMeshComponent UCustomMeshComponent::Create

```
static UCustomMeshComponent UCustomMeshComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UCustomMeshComponent::StaticClass

```
static UClass UCustomMeshComponent::StaticClass()
```
