# ProceduralMesh

## Inheritance

ProceduralMesh

## COMPONENTS \| PROCEDURALMESH

### CreateGridMeshWelded

```
static void ProceduralMesh::CreateGridMeshWelded(int NumX, int NumY, TArray<int>& Triangles, TArray<FVector>& Vertices, TArray<FVector2D>& UVs, float32 GridSpacing = 16.000000)
```

Generate a vertex buffer, index buffer and UVs for a tessellated grid mesh.

**Parameters**

NumX
int

Number of vertices in X direction (must be >= 2)

NumY
int

Number of vertices in y direction (must be >= 2)

GridSpacing
float32

Size of each quad in world units

ConvertQuadToTriangles
static void ProceduralMesh::ConvertQuadToTriangles(
TArray<int>& 	Triangles,
int 	Vert0,
int 	Vert1,
int 	Vert2,
int 	Vert3
	)

Add a quad, specified by four indices, to a triangle index buffer as two triangles.

CopyProceduralMeshFromStaticMeshComponent
static void ProceduralMesh::CopyProceduralMeshFromStaticMeshComponent(

UStaticMeshComponent 	StaticMeshComponent,
int 	LODIndex,
UProceduralMeshComponent 	ProcMeshComponent,
bool 	bCreateCollision

)

Copy materials from StaticMeshComponent to ProceduralMeshComponent.

CreateGridMeshSplit
static void ProceduralMesh::CreateGridMeshSplit(
int 	NumX,
int 	NumY,
TArray<int>& 	Triangles,
TArray<FVector>& 	Vertices,
TArray<FVector2D>& 	UVs,
TArray<FVector2D>& 	UV1s,
float32 	GridSpacing	 = 	16.000000
	)

Generate a vertex buffer, index buffer and UVs for a grid mesh where each quad is split, with standard 0-1 UVs on UV0 and point sampled texel center UVs for UV1.

**Parameters**

NumX
int

Number of vertices in X direction (must be >= 2)

NumY
int

Number of vertices in y direction (must be >= 2)

GridSpacing
float32

Size of each quad in world units

CreateGridMeshTriangles
static void ProceduralMesh::CreateGridMeshTriangles(
int 	NumX,
int 	NumY,
bool 	bWinding,
TArray<int>& 	Triangles
	)

Generate an index buffer for a grid of quads.

**Parameters**

NumX
int

Number of vertices in X direction (must be >= 2)

NumY
int

Number of vertices in y direction (must be >= 2)

bWinding
bool

Reverses winding of indices generated for each quad

CalculateTangentsForMesh
static void ProceduralMesh::CalculateTangentsForMesh(
TArray<FVector> 	Vertices,
TArray<int> 	Triangles,
TArray<FVector2D> 	UVs,
TArray<FVector>& 	Normals,
TArray<FProcMeshTangent>& 	Tangents
	)

Automatically generate normals and tangent vectors for a mesh UVs are required for correct tangent generation.

GenerateBoxMesh
static void ProceduralMesh::GenerateBoxMesh(
FVector 	BoxRadius,
TArray<FVector>& 	Vertices,
TArray<int>& 	Triangles,
TArray<FVector>& 	Normals,
TArray<FVector2D>& 	UVs,
TArray<FProcMeshTangent>& 	Tangents
	)

Generate vertex and index buffer for a simple box, given the supplied dimensions. Normals, UVs and tangents are also generated for each vertex.

GetSectionFromProceduralMesh
static void ProceduralMesh::GetSectionFromProceduralMesh(

UProceduralMeshComponent 	InProcMesh,
int 	SectionIndex,
TArray<FVector>& 	Vertices,
TArray<int>& 	Triangles,
TArray<FVector>& 	Normals,
TArray<FVector2D>& 	UVs,
TArray<FProcMeshTangent>& 	Tangents

)

Grab geometry data from a ProceduralMeshComponent.

GetSectionFromStaticMesh
static void ProceduralMesh::GetSectionFromStaticMesh(
UStaticMesh 	InMesh,
int 	LODIndex,
int 	SectionIndex,
TArray<FVector>& 	Vertices,
TArray<int>& 	Triangles,
TArray<FVector>& 	Normals,
TArray<FVector2D>& 	UVs,
TArray<FProcMeshTangent>& 	Tangents
	)

Grab geometry data from a StaticMesh asset.

SliceProceduralMesh
static void ProceduralMesh::SliceProceduralMesh(

UProceduralMeshComponent 	InProcMesh,
FVector 	PlanePosition,
FVector 	PlaneNormal,
bool 	bCreateOtherHalf,
UProceduralMeshComponent& 	OutOtherHalfProcMesh,
EProcMeshSliceCapOption 	CapOption,
UMaterialInterface 	CapMaterial

)

Slice the ProceduralMeshComponent (including simple convex collision) using a plane. Optionally create 'cap' geometry.

**Parameters**

InProcMesh
UProceduralMeshComponent

ProceduralMeshComponent to slice

PlanePosition
FVector

Point on the plane to use for slicing, in world space

PlaneNormal
FVector

Normal of plane used for slicing. Geometry on the positive side of the plane will be kept.

bCreateOtherHalf
bool

If true, an additional ProceduralMeshComponent (OutOtherHalfProcMesh) will be created using the other half of the sliced geometry

OutOtherHalfProcMesh
UProceduralMeshComponent&

If bCreateOtherHalf is set, this is the new component created. Its owner will be the same as the supplied InProcMesh.

CapOption
EProcMeshSliceCapOption

If and how to create 'cap' geometry on the slicing plane

CapMaterial
UMaterialInterface

If creating a new section for the cap, assign this material to that section
