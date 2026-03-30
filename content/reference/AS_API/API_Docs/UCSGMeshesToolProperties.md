# UCSGMeshesToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UCSGMeshesToolProperties

## Description

Standard properties of the CSG operation

## BOOLEAN

### bTryFixHoles

```
bool bTryFixHoles
```

Try to fill holes created by the Boolean operation, e.g. due to numerical errors

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

### Operation

```
ECSGOperation Operation
```

Type of Boolean operation

---

## DISPLAY

### bShowNewBoundaries

```
bool bShowNewBoundaries
```

Show boundary edges created by the Boolean operation, which might happen due to numerical errors

### bShowSubtractedMesh

```
bool bShowSubtractedMesh
```

Show a translucent version of the subtracted mesh, to help visualize geometry that is being removed

### SubtractedMeshOpacity

```
float32 SubtractedMeshOpacity
```

Opacity of the translucent subtracted mesh

### SubtractedMeshColor

```
FLinearColor SubtractedMeshColor
```

Color of the translucent subtracted mesh

---

## MATERIALS

### bUseFirstMeshMaterials

```
bool bUseFirstMeshMaterials
```

If true, only the first mesh will keep its material assignments, and all other faces will have the first material assigned

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCSGMeshesToolProperties::StaticClass()
```
