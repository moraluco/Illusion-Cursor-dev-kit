# UBorder

**Visibility:** public

## Inheritance

UContentWidget → UBorder

## Description

A border is a container widget that can contain one child widget, providing an opportunity to surround it with a background image and adjustable padding.

## Members

### Child

```
Single Child
```

Image

---

## APPEARANCE

### DesiredSizeScale

```
FVector2D DesiredSizeScale
```

Scales the computed desired size of this border and its contents. Useful for making things that slide open without having to hard-code their size.  Note: if the parent widget is set up to ignore this widget's desired size, then changing this value will have no effect.

### BrushColor

```
FLinearColor BrushColor
```

Color and opacity of the actual border image

### bShowEffectWhenDisabled

```
bool bShowEffectWhenDisabled
```

Whether or not to show the disabled effect when this border is disabled

### Background

```
FSlateBrush Background
```

Brush to drag as the background

### DynamicMaterial

```
const UMaterialInstanceDynamic DynamicMaterial
```

---

## CONTENT

### HorizontalAlignment

```
EHorizontalAlignment HorizontalAlignment
```

The alignment of the content horizontally.

### ContentColorAndOpacity

```
FLinearColor ContentColorAndOpacity
```

Color and opacity multiplier of content in the border

### VerticalAlignment

```
EVerticalAlignment VerticalAlignment
```

The alignment of the content vertically.

### Padding

```
FMargin Padding
```

The padding area between the slot and the content it contains.

---

## EVENTS

### OnMouseButtonUpEvent

```
FOnPointerEvent__Widget OnMouseButtonUpEvent
```
### OnMouseMoveEvent

```
FOnPointerEvent__Widget OnMouseMoveEvent
```
### OnMouseButtonDownEvent

```
FOnPointerEvent__Widget OnMouseButtonDownEvent
```
### OnMouseDoubleClickEvent

```
FOnPointerEvent__Widget OnMouseDoubleClickEvent
```

---

## LOCALIZATION

### bFlipForRightToLeftFlowDirection

```
bool bFlipForRightToLeftFlowDirection
```

Flips the background image if the localization's flow direction is RightToLeft

---

## APPEARANCE

### SetVerticalAlignment

```
void SetVerticalAlignment(EVerticalAlignment InVerticalAlignment)
```

SetBrush

### void SetBrush

```
void SetBrush(FSlateBrush InBrush)
```

SetBrushColor

### void SetBrushColor

```
void SetBrushColor(FLinearColor InBrushColor)
```

SetBrushFromAsset

### void SetBrushFromAsset

```
void SetBrushFromAsset(USlateBrushAsset Asset)
```

SetBrushFromMaterial

### void SetBrushFromMaterial

```
void SetBrushFromMaterial(UMaterialInterface Material)
```

SetBrushFromTexture

### void SetBrushFromTexture

```
void SetBrushFromTexture(UTexture2D Texture)
```

SetContentColorAndOpacity

### void SetContentColorAndOpacity

```
void SetContentColorAndOpacity(FLinearColor InContentColorAndOpacity)
```

SetDesiredSizeScale

### void SetDesiredSizeScale

```
void SetDesiredSizeScale(FVector2D InScale)
```

Sets the DesireSizeScale of this border.

**Parameters**

InScale
FVector2D

The X and Y multipliers for the desired size

SetHorizontalAlignment
void SetHorizontalAlignment(
EHorizontalAlignment 	InHorizontalAlignment
	)
SetPadding
void SetPadding(
FMargin 	InPadding
	)
GetDynamicMaterial
UMaterialInstanceDynamic GetDynamicMaterial()

---

## FUNCTIONS

### GetContentColorAndOpacity

```
const FLinearColor& GetContentColorAndOpacity()const
```

GetVerticalAlignment

### const EVerticalAlignment& GetVerticalAlignment

```
const EVerticalAlignment& GetVerticalAlignment()const GetbShowEffectWhenDisabled
```

bool GetbShowEffectWhenDisabled() const

### SetbShowEffectWhenDisabled

```
void SetbShowEffectWhenDisabled(bool Value)
```

GetHorizontalAlignment

### const EHorizontalAlignment& GetHorizontalAlignment

```
const EHorizontalAlignment& GetHorizontalAlignment()const GetPadding
```

const FMargin& GetPadding() const

### GetBrushColor

```
const FLinearColor& GetBrushColor()const
```

GetDesiredSizeScale

### const FVector2D& GetDesiredSizeScale

```
const FVector2D& GetDesiredSizeScale()const STATIC FUNCTIONS
```

StaticClass

### static UClass UBorder::StaticClass

```
static UClass UBorder::StaticClass()
```
