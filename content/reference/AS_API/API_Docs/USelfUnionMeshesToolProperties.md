# USelfUnionMeshesToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → USelfUnionMeshesToolProperties

## Description

Standard properties of the self-union operation

## DISPLAY

### bShowNewBoundaryEdges

```
bool bShowNewBoundaryEdges
```

Show boundary edges created by the merge (often due to numerical error)

---

## MATERIALS

### bOnlyUseFirstMeshMaterials

```
bool bOnlyUseFirstMeshMaterials
```

If true, only the first mesh will keep its materials assignments; all other triangles will be assigned material 0

---

## MERGE

### WindingThreshold

```
float32 WindingThreshold
```

Threshold to determine whether a triangle in one mesh is inside or outside of the other

### bTryCollapseEdges

```
bool bTryCollapseEdges
```

Try to collapse extra edges created by the merge

### bTryFixHoles

```
bool bTryFixHoles
```

Try to fill holes created by the merge, e.g. due to numerical errors

### bTrimFlaps

```
bool bTrimFlaps
```

If true, remove open, visible geometry

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USelfUnionMeshesToolProperties::StaticClass()
```
