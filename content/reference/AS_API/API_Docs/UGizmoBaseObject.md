# UGizmoBaseObject

**Visibility:** public

## Inheritance

UObject → UGizmoBaseObject → UGizmoArrowObject → UGizmoBoxObject → UGizmoConeObject → UGizmoCylinderObject → UGizmoGroupObject

## Description

Base class for simple objects intended to be used as part of 3D Gizmos.  Contains common properties and utility functions.  This class does nothing by itself, use subclasses like UGizmoCylinderObject

## OPTIONS

### Material

```
UMaterialInterface Material
```
### CurrentMaterial

```
UMaterialInterface CurrentMaterial
```
### GizmoScale

```
float32 GizmoScale
```
### PixelHitDistanceThreshold

```
float32 PixelHitDistanceThreshold
```

@todo need this?

### LocalToWorldTransform

```
FTransform LocalToWorldTransform STATIC FUNCTIONS StaticClass static UClass UGizmoBaseObject::StaticClass()
```
