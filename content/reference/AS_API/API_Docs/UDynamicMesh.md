# UDynamicMesh

**Visibility:** public

## Inheritance

UObject → UDynamicMesh

## Description

UDynamicMesh is a UObject container for a FDynamicMesh3.

### DYNAMIC MESH

```
DYNAMIC MESH bEnableMeshGenerator bool bEnableMeshGenerator
```

Controls whether the active Generator (if configured) will be applied when rebuilding the mesh

## Members

TriangleCount

### TriangleCount

```
const int TriangleCount
```

---

## VARIABLES

### MeshModifiedBPEvent

```
FOnDynamicMeshModifiedBP MeshModifiedBPEvent
```

Blueprintable event called when mesh is modified, in the same cases as OnMeshChanged

### DYNAMIC MESH

```
DYNAMIC MESH IsEmpty bool IsEmpty()const
```

**Returns**

true if the mesh has no triangles

Reset
UDynamicMesh Reset()

Clear the internal mesh to an empty mesh.  This does not allocate a new mesh, so any existing mesh pointers/refs are still valid

ResetToCube
UDynamicMesh ResetToCube()

Clear the internal mesh to a 100x100x100 cube with base at the origin.  This this instead of Reset() if an initially-empty mesh is undesirable (eg for a Component)

GetTriangleCount
int GetTriangleCount() const

**Returns**

number of triangles in the mesh

STATIC FUNCTIONS
StaticClass
static UClass UDynamicMesh::StaticClass()
