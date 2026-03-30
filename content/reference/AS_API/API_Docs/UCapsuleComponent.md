# UCapsuleComponent

**Visibility:** public

## Inheritance

UShapeComponent → UCapsuleComponent

## Description

A capsule generally used for simple collision. Bounds are rendered as lines in the editor.

## COMPONENTS \| CAPSULE

### UnscaledCapsuleHalfHeight

```
const float32 UnscaledCapsuleHalfHeight
```

Returns the capsule half-height, ignoring component scaling. This includes the hemisphere end cap.

### ScaledCapsuleHalfHeight_WithoutHemisphere

```
const float32 ScaledCapsuleHalfHeight_WithoutHemisphere
```

Returns the capsule half-height minus radius (to exclude the hemisphere), scaled by the component scale.  From the center of the capsule this is the vertical distance along the straight cylindrical portion to the point just before the curve of top hemisphere begins.

ScaledCapsuleRadius

### ScaledCapsuleRadius

```
const float32 ScaledCapsuleRadius
```

Returns the capsule radius scaled by the component scale.

ShapeScale

### ShapeScale

```
const float32 ShapeScale
```

Get the scale used by this shape. This is a uniform scale that is the minimum of any non-uniform scaling.

### ScaledCapsuleHalfHeight

```
const float32 ScaledCapsuleHalfHeight
```

Returns the capsule half-height scaled by the component scale. This includes both the cylinder and hemisphere cap.

### UnscaledCapsuleHalfHeight_WithoutHemisphere

```
const float32 UnscaledCapsuleHalfHeight_WithoutHemisphere
```

Returns the capsule half-height minus radius (to exclude the hemisphere), ignoring component scaling. This excludes the hemisphere end cap.  From the center of the capsule this is the vertical distance along the straight cylindrical portion to the point just before the curve of top hemisphere begins.

UnscaledCapsuleRadius

### UnscaledCapsuleRadius

```
const float32 UnscaledCapsuleRadius
```

Returns the capsule radius, ignoring component scaling.

---

## SHAPE

CapsuleRadius

### CapsuleRadius

```
const float32 CapsuleRadius
```

Radius of cap hemispheres and center cylinder.  This cannot be more than CapsuleHalfHeight.

CapsuleHalfHeight

### CapsuleHalfHeight

```
const float32 CapsuleHalfHeight
```

Half-height, from center of capsule to the end of top or bottom hemisphere.  This cannot be less than CapsuleRadius.

---

## COMPONENTS \| CAPSULE

### GetUnscaledCapsuleSize_WithoutHemisphere

```
void GetUnscaledCapsuleSize_WithoutHemisphere(float32& OutRadius, float32& OutHalfHeightWithoutHemisphere)const
```

Returns the capsule radius and half-height, ignoring component scaling. Half-height excludes the hemisphere end cap.

**Parameters**

OutRadius
float32&

Radius of the capsule, ignoring component scaling.

OutHalfHeightWithoutHemisphere
float32&

Half-height of the capsule, scaled by the component scale. Excludes the hemisphere end cap.

**Returns**

The capsule radius and half-height (excluding hemisphere end cap), ignoring component scaling.

GetScaledCapsuleHalfHeight_WithoutHemisphere
float32 GetScaledCapsuleHalfHeight_WithoutHemisphere() const

Returns the capsule half-height minus radius (to exclude the hemisphere), scaled by the component scale.  From the center of the capsule this is the vertical distance along the straight cylindrical portion to the point just before the curve of top hemisphere begins.

**Returns**

The capsule half-height minus radius, scaled by the component scale.

GetScaledCapsuleRadius
float32 GetScaledCapsuleRadius() const

Returns the capsule radius scaled by the component scale.

**Returns**

The capsule radius scaled by the component scale.

GetScaledCapsuleSize
void GetScaledCapsuleSize(
float32& 	OutRadius,
float32& 	OutHalfHeight
	) const

Returns the capsule radius and half-height scaled by the component scale. Half-height includes the hemisphere end cap.

**Parameters**

OutRadius
float32&

Radius of the capsule, scaled by the component scale.

OutHalfHeight
float32&

Half-height of the capsule, scaled by the component scale. Includes the hemisphere end cap.

**Returns**

The capsule radius and half-height scaled by the component scale.

GetScaledCapsuleSize_WithoutHemisphere
void GetScaledCapsuleSize_WithoutHemisphere(
float32& 	OutRadius,
float32& 	OutHalfHeightWithoutHemisphere
	) const

Returns the capsule radius and half-height scaled by the component scale. Half-height excludes the hemisphere end cap.

**Parameters**

OutRadius
float32&

Radius of the capsule, ignoring component scaling.

OutHalfHeightWithoutHemisphere
float32&

Half-height of the capsule, scaled by the component scale. Excludes the hemisphere end cap.

**Returns**

The capsule radius and half-height scaled by the component scale.

GetShapeScale
float32 GetShapeScale() const

Get the scale used by this shape. This is a uniform scale that is the minimum of any non-uniform scaling.

**Returns**

the scale used by this shape.

GetUnscaledCapsuleHalfHeight
float32 GetUnscaledCapsuleHalfHeight() const

Returns the capsule half-height, ignoring component scaling. This includes the hemisphere end cap.

**Returns**

The capsule radius, ignoring component scaling.

GetUnscaledCapsuleHalfHeight_WithoutHemisphere
float32 GetUnscaledCapsuleHalfHeight_WithoutHemisphere() const

Returns the capsule half-height minus radius (to exclude the hemisphere), ignoring component scaling. This excludes the hemisphere end cap.  From the center of the capsule this is the vertical distance along the straight cylindrical portion to the point just before the curve of top hemisphere begins.

**Returns**

The capsule half-height minus radius, ignoring component scaling.

GetUnscaledCapsuleRadius
float32 GetUnscaledCapsuleRadius() const

Returns the capsule radius, ignoring component scaling.

**Returns**

the capsule radius, ignoring component scaling.

GetUnscaledCapsuleSize
void GetUnscaledCapsuleSize(
float32& 	OutRadius,
float32& 	OutHalfHeight
	) const

Returns the capsule radius and half-height scaled by the component scale. Half-height includes the hemisphere end cap.

**Parameters**

OutRadius
float32&

Radius of the capsule, scaled by the component scale.

OutHalfHeight
float32&

Half-height of the capsule, scaled by the component scale. Includes the hemisphere end cap.

**Returns**

The capsule radius and half-height scaled by the component scale.

GetScaledCapsuleHalfHeight
float32 GetScaledCapsuleHalfHeight() const

Returns the capsule half-height scaled by the component scale. This includes both the cylinder and hemisphere cap.

**Returns**

The capsule half-height scaled by the component scale.

SetCapsuleHalfHeight
void SetCapsuleHalfHeight(
float32 	HalfHeight,
bool 	bUpdateOverlaps	 = 	true
	)

Set the capsule half-height. This is the unscaled half-height, before component scale is applied.  If this capsule collides, updates touching array for owner actor.

**Parameters**

HalfHeight
float32

: half-height, from capsule center to end of top or bottom hemisphere.

SetCapsuleRadius
void SetCapsuleRadius(
float32 	Radius,
bool 	bUpdateOverlaps	 = 	true
	)

Set the capsule radius. This is the unscaled radius, before component scale is applied.  If this capsule collides, updates touching array for owner actor.

**Parameters**

Radius
float32

: radius of end-cap hemispheres and center cylinder.

SetCapsuleSize
void SetCapsuleSize(
float32 	InRadius,
float32 	InHalfHeight,
bool 	bUpdateOverlaps	 = 	true
	)

Change the capsule size. This is the unscaled size, before component scale is applied.

**Parameters**

InRadius
float32

: radius of end-cap hemispheres and center cylinder.

InHalfHeight
float32

: half-height, from capsule center to end of top or bottom hemisphere.

---

## FUNCTIONS

### GetCapsuleRadius

```
const float32& GetCapsuleRadius()const
```

GetCapsuleHalfHeight

### const float32& GetCapsuleHalfHeight

```
const float32& GetCapsuleHalfHeight()const STATIC FUNCTIONS
```

Get

### static UCapsuleComponent UCapsuleComponent::Get

```
static UCapsuleComponent UCapsuleComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UCapsuleComponent UCapsuleComponent::GetOrCreate

```
static UCapsuleComponent UCapsuleComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UCapsuleComponent UCapsuleComponent::Create

```
static UCapsuleComponent UCapsuleComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UCapsuleComponent::StaticClass

```
static UClass UCapsuleComponent::StaticClass()
```
