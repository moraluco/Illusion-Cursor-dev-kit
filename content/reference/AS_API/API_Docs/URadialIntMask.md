# URadialIntMask

**Visibility:** public

## Inheritance

UFieldNodeInt → URadialIntMask

## Description

This function first defines a radial integer field equal to Interior-value inside a sphere / Exterior-value outside. This field will be used alongside the particle input value and the mask condition to compute the particle output value.

## FIELD

### Position

```
FVector Position
```

Center position of the radial mask field

### InteriorValue

```
int InteriorValue
```

If the sample distance from the center is less than radius, the intermediate value will be set the interior value

### ExteriorValue

```
int ExteriorValue
```

If the sample distance from the center is greater than radius, the intermediate value will be set the exterior value

### SetMaskCondition

```
ESetMaskConditionType SetMaskCondition
```

If the mask condition is set to always the output value will be the intermediate one. If set to not interior/exterior the output value will be the intermediate one if the input is different from the interior/exterior value

### Radius

```
float32 Radius
```

Radius of the radial mask field

---

## FIELD

### SetRadialIntMask

```
URadialIntMask SetRadialIntMask(float32 Radius, FVector Position, int InteriorValue, int ExteriorValue, ESetMaskConditionType SetMaskConditionIn)
```

This function first defines a radial integer field equal to Interior-value inside a sphere / Exterior-value outside. This field will be used alongside the particle input value and the mask condition to compute the particle output value.  - If Mask-condition = set-always : the particle output value will be equal to Interior-value if the particle position is inside a sphere / Exterior-value otherwise.  - If Mask-condition = merge-interior : the particle output value will be equal to Interior-value if the particle position is inside the sphere or if the particle input value is already Interior-Value / Exterior-value otherwise.  - If Mask-condition = merge-exterior : the particle output value will be equal to Exterior-value if the particle position is outside the sphere or if the particle input value is already Exterior-Value / Interior-value otherwise.

**Parameters**

Radius
float32

Radius of the radial field

Position
FVector

Center position of the radial field"

InteriorValue
int

If the sample distance from the center is less than radius, the intermediate value will be set the interior value

ExteriorValue
int

If the sample distance from the center is greater than radius, the intermediate value will be set the exterior value

SetMaskConditionIn
ESetMaskConditionType

If the mask condition is set to always the output value will be the intermediate one. If set to not interior/exterior the output value will be the intermediate one if the input is different from the interior/exterior value

STATIC FUNCTIONS
Get
static URadialIntMask URadialIntMask::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static URadialIntMask URadialIntMask::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static URadialIntMask URadialIntMask::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass URadialIntMask::StaticClass()
