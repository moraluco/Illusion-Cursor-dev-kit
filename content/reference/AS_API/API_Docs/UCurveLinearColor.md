# UCurveLinearColor

**Visibility:** public

## Inheritance

UCurveBase → UCurveLinearColor → COLOR → AdjustHue

## Description

float32 AdjustHue

Properties for adjusting the color of the gradient

AdjustSaturation float32 AdjustSaturation AdjustBrightness float32 AdjustBrightness AdjustBrightnessCurve float32 AdjustBrightnessCurve AdjustVibrance float32 AdjustVibrance AdjustMinAlpha float32 AdjustMinAlpha AdjustMaxAlpha float32 AdjustMaxAlpha

## VARIABLES

### FloatCurves

```
FRichCurve FloatCurves
```

Keyframe data, one curve for red, green, blue, and alpha

---

## MATH \| CURVES

### GetLinearColorValue

```
FLinearColor GetLinearColorValue(float32 InTime)const
```

GetUnadjustedLinearColorValue

### FLinearColor GetUnadjustedLinearColorValue

```
FLinearColor GetUnadjustedLinearColorValue(float32 InTime)const
```

GetClampedLinearColorValue

### FLinearColor GetClampedLinearColorValue

```
FLinearColor GetClampedLinearColorValue(float32 InTime)const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCurveLinearColor::StaticClass()
```
