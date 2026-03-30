# URemeshMeshToolProperties

**Visibility:** public

## Inheritance

URemeshProperties → URemeshMeshToolProperties → UProjectToTargetToolProperties

## Description

Standard properties of the Remesh operation

## DISPLAY

### bShowGroupColors

```
bool bShowGroupColors
```

Display colors corresponding to the mesh's polygon groups

---

## REMESHING

### bDiscardAttributes

```
bool bDiscardAttributes
```

If true, UVs and Normals are discarded

### SmoothingType

```
ERemeshSmoothingType SmoothingType
```
### type

```
Smoothing type
```
### RemeshIterations

```
int RemeshIterations
```

Number of Remeshing passes

### RemeshType

```
ERemeshType RemeshType
```
### type

```
Remeshing type
```
### TargetTriangleCount

```
int TargetTriangleCount
```

Target triangle count

### MaxRemeshIterations

```
int MaxRemeshIterations
```

Maximum number of Remeshing passes, for Remeshers that have convergence criteria

### ExtraProjectionIterations

```
int ExtraProjectionIterations
```

For NormalFlowRemesher: extra iterations of normal flow with no remeshing

### bUseTargetEdgeLength

```
bool bUseTargetEdgeLength
```

If true, the target count is ignored and the target edge length is used directly

### TargetEdgeLength

```
float32 TargetEdgeLength
```

Target edge length

### bReproject

```
bool bReproject
```

Enable projection back to input mesh

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URemeshMeshToolProperties::StaticClass()
```
