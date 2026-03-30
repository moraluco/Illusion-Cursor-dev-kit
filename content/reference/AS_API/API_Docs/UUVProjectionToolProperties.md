# UUVProjectionToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UUVProjectionToolProperties

## Description

Standard properties

## CYLINDERPROJECTION

### CylinderSplitAngle

```
float32 CylinderSplitAngle
```

Angle in degrees to determine whether faces should be assigned to the cylinder or the flat end caps

### PROJECTION

```
EXPMAP PROJECTION
```
### ExpMapNormalBlending

```
float32 ExpMapNormalBlending
```

Blend between surface normals and projection normal; ExpMap projection becomes Plane projection when this value is 1

### ExpMapSmoothingSteps

```
int ExpMapSmoothingSteps
```

Number of smoothing steps to apply; this slightly increases distortion but produces more stable results.

### ExpMapSmoothingAlpha

```
float32 ExpMapSmoothingAlpha
```

Smoothing parameter; larger values result in faster smoothing in each step.

### PROJECTION

```
UV PROJECTION
```
### ProjectionType

```
EUVProjectionMethod ProjectionType
```

Shape and/or algorithm to use for UV projection

### bUniformDimensions

```
bool bUniformDimensions
```

Only use the Dimensions X value to uniformly define all projection shape dimensions

### Dimensions

```
FVector Dimensions
```

Width, length, and height of the projection shape before rotation

### Initialization

```
EUVProjectionToolInitializationMode Initialization
```

Determines how projection settings will be initialized; this only takes effect if the projection shape dimensions or position are unchanged

### TRANSFORM

```
UV TRANSFORM
```
### Scale

```
FVector2D Scale
```

Scaling applied after computing projection

### Translation

```
FVector2D Translation
```

Translation applied after computing projection

### Rotation

```
float32 Rotation
```

Rotation in degrees applied after computing projection

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UUVProjectionToolProperties::StaticClass()
```
