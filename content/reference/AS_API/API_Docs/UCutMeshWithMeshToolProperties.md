# UCutMeshWithMeshToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UCutMeshWithMeshToolProperties

## Description

Standard properties of the CutMeshWithMesh operation

## BOOLEAN

### bTryCollapseEdges

```
bool bTryCollapseEdges
```

Try to collapse extra edges created by the Boolean operation

### WindingThreshold

```
float32 WindingThreshold
```

Threshold to determine whether a triangle in one mesh is inside or outside of the other

### bTryFixHoles

```
bool bTryFixHoles
```

Try to fill holes created by the Boolean operation, e.g. due to numerical errors

---

## DISPLAY

### bShowNewBoundaries

```
bool bShowNewBoundaries
```

Show boundary edges created by the Boolean operation, which might happen due to numerical errors

---

## MATERIALS

### bUseFirstMeshMaterials

```
bool bUseFirstMeshMaterials
```

If true, only the first mesh will keep its material assignments, and all other faces will have the first material assigned

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCutMeshWithMeshToolProperties::StaticClass()
```
