# UBackgroundBlur

**Visibility:** public

## Inheritance

UContentWidget → UBackgroundBlur

## Description

A background blur is a container widget that can contain one child widget, providing an opportunity to surround it with adjustable padding and apply a post-process Gaussian blur to all content beneath the widget.

## Members

### Child

```
Single Child
```
### Effect

```
Blur Effect
```

---

## APPEARANCE

### LowQualityFallbackBrush

```
FSlateBrush LowQualityFallbackBrush
```

An image to draw instead of applying a blur when low quality override mode is enabled.  You can enable low quality mode for background blurs by setting the cvar Slate.ForceBackgroundBlurLowQualityOverride to 1.  This is usually done in the project's scalability settings

### CornerRadius

```
FVector4 CornerRadius
```

This is the number of pixels which will be weighted in each direction from any given pixel when computing the blur A larger value is more costly but allows for stronger blurs.

### BlurRadius

```
int BlurRadius
```

This is the number of pixels which will be weighted in each direction from any given pixel when computing the blur A larger value is more costly but allows for stronger blurs.

### BlurStrength

```
float32 BlurStrength
```

How blurry the background is.  Larger numbers mean more blurry but will result in larger runtime cost on the gpu.

### bApplyAlphaToBlur

```
bool bApplyAlphaToBlur
```

True to modulate the strength of the blur based on the widget alpha.

---

## CONTENT

### VerticalAlignment

```
EVerticalAlignment VerticalAlignment
```

The alignment of the content vertically.

### HorizontalAlignment

```
EHorizontalAlignment HorizontalAlignment
```

The alignment of the content horizontally.

### Padding

```
FMargin Padding
```

The padding area between the slot and the content it contains.

---

## APPEARANCE

### SetBlurRadius

```
void SetBlurRadius(int InBlurRadius)
```

SetBlurStrength

### void SetBlurStrength

```
void SetBlurStrength(float32 InStrength)
```

SetCornerRadius

### void SetCornerRadius

```
void SetCornerRadius(FVector4 InCornerRadius)
```

SetHorizontalAlignment

### void SetHorizontalAlignment

```
void SetHorizontalAlignment(EHorizontalAlignment InHorizontalAlignment)
```

SetLowQualityFallbackBrush

### void SetLowQualityFallbackBrush

```
void SetLowQualityFallbackBrush(FSlateBrush InBrush)
```

SetPadding

### void SetPadding

```
void SetPadding(FMargin InPadding)
```

SetVerticalAlignment

### void SetVerticalAlignment

```
void SetVerticalAlignment(EVerticalAlignment InVerticalAlignment)
```

SetApplyAlphaToBlur

### void SetApplyAlphaToBlur

```
void SetApplyAlphaToBlur(bool bInApplyAlphaToBlur)
```

---

## FUNCTIONS

### GetPadding

```
const FMargin& GetPadding()const
```

GetHorizontalAlignment

### const EHorizontalAlignment& GetHorizontalAlignment

```
const EHorizontalAlignment& GetHorizontalAlignment()const GetVerticalAlignment
```

const EVerticalAlignment& GetVerticalAlignment() const

### GetBlurStrength

```
const float32& GetBlurStrength()const
```

GetBlurRadius

### const int& GetBlurRadius

```
const int& GetBlurRadius()const GetCornerRadius
```

const FVector4& GetCornerRadius() const

### GetLowQualityFallbackBrush

```
const FSlateBrush& GetLowQualityFallbackBrush()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBackgroundBlur::StaticClass()
```
