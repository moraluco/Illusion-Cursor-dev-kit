# UTrimMeshesToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UTrimMeshesToolProperties

## Description

Properties of the trim mode

## DISPLAY

### OpacityOfTrimmingMesh

```
float32 OpacityOfTrimmingMesh
```

Opacity of translucent version of the trimming mesh

### bShowTrimmingMesh

```
bool bShowTrimmingMesh
```

Whether to show a translucent version of the trimming mesh, to help visualize what is being cut

### ColorOfTrimmingMesh

```
FLinearColor ColorOfTrimmingMesh
```

Color of translucent version of the trimming mesh

---

## OPERATION

### WindingThreshold

```
float32 WindingThreshold
```

Threshold to determine whether a triangle in one mesh is inside or outside of the other

### TrimSide

```
ETrimSide TrimSide
```

Whether to remove the surface inside or outside of the trimming geometry

### WhichMesh

```
ETrimOperation WhichMesh
```

Which object to trim

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTrimMeshesToolProperties::StaticClass()
```
