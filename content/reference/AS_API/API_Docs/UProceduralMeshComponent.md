# UProceduralMeshComponent

**Visibility:** public

## Inheritance

UMeshComponent → UProceduralMeshComponent

## Description

Component that allows you to specify custom triangle mesh geometry Beware! This feature is experimental and may be substantially changed in future releases.

## COMPONENTS \| PROCEDURALMESH

NumSections

### const int NumSections

```
const int NumSections
```

Returns number of sections currently created for this component

### PROCEDURAL MESH

```
PROCEDURAL MESH bUseAsyncCooking bool bUseAsyncCooking
```

Controls whether the physics cooking should be done off the game thread. This should be used when collision geometry doesn't have to be immediately up to date (For example streaming in far away objects)

### bUseComplexAsSimpleCollision

```
bool bUseComplexAsSimpleCollision
```

Controls whether the complex (Per poly) geometry should be treated as 'simple' collision.  Should be set to false if this component is going to be given simple collision and simulated.

---

## COMPONENTS \| PROCEDURALMESH

### IsMeshSectionVisible

```
bool IsMeshSectionVisible(int SectionIndex)const
```

Returns whether a particular section is currently visible

### ClearAllMeshSections

```
void ClearAllMeshSections()
```

Clear all mesh sections and reset to empty state

### ClearCollisionConvexMeshes

```
void ClearCollisionConvexMeshes()
```

Remove collision meshes from this component

### ClearMeshSection

```
void ClearMeshSection(int SectionIndex)
```

Clear a section of the procedural mesh. Other sections do not change index.

CreateMeshSection_LinearColor

### void CreateMeshSection_LinearColor

```
void CreateMeshSection_LinearColor(int SectionIndex, TArray<FVector> Vertices, TArray<int> Triangles, TArray<FVector> Normals, TArray<FVector2D> UV0, TArray<FVector2D> UV1, TArray<FVector2D> UV2, TArray<FVector2D> UV3, TArray<FLinearColor> VertexColors, TArray<FProcMeshTangent> Tangents, bool bCreateCollision)
```

Create/replace a section for this procedural mesh component.

**Parameters**

SectionIndex
int

Index of the section to create or replace.

Vertices
TArray<FVector>

Vertex buffer of all vertex positions to use for this mesh section.

Triangles
TArray<int>

Index buffer indicating which vertices make up each triangle. Length must be a multiple of 3.

Normals
TArray<FVector>

Optional array of normal vectors for each vertex. If supplied, must be same length as Vertices array.

---

## UV0

TArray<FVector2D>

Optional array of texture co-ordinates for each vertex. If supplied, must be same length as Vertices array.

VertexColors

TArray<FLinearColor>

Optional array of colors for each vertex. If supplied, must be same length as Vertices array.

Tangents

TArray<FProcMeshTangent>

Optional array of tangent vector for each vertex. If supplied, must be same length as Vertices array.

### bCreateCollision

```
bool
```

Indicates whether collision should be created for this section. This adds significant cost.

### GetNumSections

```
int GetNumSections()const
```

Returns number of sections currently created for this component

### AddCollisionConvexMesh

```
void AddCollisionConvexMesh(TArray<FVector> ConvexVerts)
```

Add simple collision convex to this component

### SetMeshSectionVisible

```
void SetMeshSectionVisible(int SectionIndex, bool bNewVisibility)
```

Control visibility of a particular section

UpdateMeshSection_LinearColor

### void UpdateMeshSection_LinearColor

```
void UpdateMeshSection_LinearColor(int SectionIndex, TArray<FVector> Vertices, TArray<FVector> Normals, TArray<FVector2D> UV0, TArray<FVector2D> UV1, TArray<FVector2D> UV2, TArray<FVector2D> UV3, TArray<FLinearColor> VertexColors, TArray<FProcMeshTangent> Tangents)
```

Updates a section of this procedural mesh component. This is faster than CreateMeshSection, but does not let you change topology. Collision info is also updated.

**Parameters**

Vertices
TArray<FVector>

Vertex buffer of all vertex positions to use for this mesh section.

Normals
TArray<FVector>

Optional array of normal vectors for each vertex. If supplied, must be same length as Vertices array.

---

## UV0

TArray<FVector2D>

Optional array of texture co-ordinates for each vertex. If supplied, must be same length as Vertices array.

VertexColors

TArray<FLinearColor>

Optional array of colors for each vertex. If supplied, must be same length as Vertices array.

Tangents

TArray<FProcMeshTangent>

### Optional array of tangent vector for each vertex. If supplied, must be same length as Vertices array.

```
Optional array of tangent vector for each vertex. If supplied, must be same length as Vertices array.
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UProceduralMeshComponent UProceduralMeshComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UProceduralMeshComponent UProceduralMeshComponent::GetOrCreate

```
static UProceduralMeshComponent UProceduralMeshComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UProceduralMeshComponent UProceduralMeshComponent::Create

```
static UProceduralMeshComponent UProceduralMeshComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UProceduralMeshComponent::StaticClass

```
static UClass UProceduralMeshComponent::StaticClass()
```
