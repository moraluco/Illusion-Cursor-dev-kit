# UCurveLinearColorAtlas

**Visibility:** public

## Inheritance

UTexture2D → UCurveLinearColorAtlas

## Description

Manages gradient LUT textures for registered actors and assigns them to the corresponding materials on the actor

## CURVES

### TextureHeight

```
uint TextureHeight
```
### GradientCurves

```
TArray<TObjectPtr<UCurveLinearColor>> GradientCurves
```

Height of the lookup textures

### TextureSize

```
uint TextureSize MATH|CURVES GetCurvePosition bool GetCurvePosition(UCurveLinearColor InCurve, float32& Position)
```

---

## FUNCTIONS

### SetbDisableAllAdjustments

```
void SetbDisableAllAdjustments(bool Value)
```

SetbSquareResolution

### void SetbSquareResolution

```
void SetbSquareResolution(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCurveLinearColorAtlas::StaticClass()
```
