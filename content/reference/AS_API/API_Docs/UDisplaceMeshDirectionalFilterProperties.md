# UDisplaceMeshDirectionalFilterProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UDisplaceMeshDirectionalFilterProperties

## Description

Properties for a directional filter. Allows for displacement to be applied only to vertices whose normals point in a given direction

## DIRECTIONALFILTEROPTIONS

### FilterDirection

```
FVector FilterDirection
```

Unit vector representing the direction to filter along.

### FilterWidth

```
float32 FilterWidth
```

Scalar value determining how close to the filter direction the vertex normals must be in order to be displaced.  0: Only normals pointing exactly in the filter direction are displaced.  0.5: Normals forming angle up to 90 from the filter direction are displaced.  1.0: All vertices are displaced.

### bEnableFilter

```
bool bEnableFilter
```

Whether the directional filter is active.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDisplaceMeshDirectionalFilterProperties::StaticClass()
```
