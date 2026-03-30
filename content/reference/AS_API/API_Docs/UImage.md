# UImage

**Visibility:** public

## Inheritance

UWidget → UImage

## Description

The image widget allows you to display a Slate Brush, or texture or material in the UI.

## Members

### Children

```
No Children
```

---

## APPEARANCE

### Brush

```
FSlateBrush Brush
```

Image to draw

### DynamicMaterial

```
const UMaterialInstanceDynamic DynamicMaterial
```
### ColorAndOpacity

```
FLinearColor ColorAndOpacity
```

Color and opacity

---

## EVENTS

### OnMouseButtonDownEvent

```
FOnPointerEvent__Widget OnMouseButtonDownEvent
```

---

## LOCALIZATION

### bFlipForRightToLeftFlowDirection

```
bool bFlipForRightToLeftFlowDirection
```

Flips the image if the localization's flow direction is RightToLeft

---

## APPEARANCE

### SetBrushResourceObject

```
void SetBrushResourceObject(UObject ResourceObject)
```

SetBrush

### void SetBrush

```
void SetBrush(FSlateBrush InBrush)
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

SetBrushFromSoftMaterial

### void SetBrushFromSoftMaterial

```
void SetBrushFromSoftMaterial(TSoftObjectPtr<UMaterialInterface> SoftMaterial)
```

SetBrushFromSoftTexture

### void SetBrushFromSoftTexture

```
void SetBrushFromSoftTexture(TSoftObjectPtr<UTexture2D> SoftTexture, bool bMatchSize = false)
```

Sets the Brush to the specified Soft Texture.

**Parameters**

SoftTexture
TSoftObjectPtr<UTexture2D>

Soft Texture to use to set on Brush.

bMatchSize
bool

If true, image will change its size to texture size. If false, texture will be stretched to image size.

SetBrushFromTexture
void SetBrushFromTexture(
UTexture2D 	Texture,
bool 	bMatchSize	 = 	false
	)

Sets the Brush to the specified Texture.

**Parameters**

Texture
UTexture2D

Texture to use to set on Brush.

bMatchSize
bool

If true, image will change its size to texture size. If false, texture will be stretched to image size.

SetBrushFromTextureDynamic
void SetBrushFromTextureDynamic(
UTexture2DDynamic 	Texture,
bool 	bMatchSize	 = 	false
	)

Sets the Brush to the specified Dynamic Texture.

**Parameters**

Texture
UTexture2DDynamic

Dynamic Texture to use to set on Brush.

bMatchSize
bool

If true, image will change its size to texture size. If false, texture will be stretched to image size.

GetDynamicMaterial
UMaterialInstanceDynamic GetDynamicMaterial()
SetBrushTintColor
void SetBrushTintColor(
FSlateColor 	TintColor
	)
SetColorAndOpacity
void SetColorAndOpacity(
FLinearColor 	InColorAndOpacity
	)
SetDesiredSizeOverride
void SetDesiredSizeOverride(
FVector2D 	DesiredSize
	)
SetOpacity
void SetOpacity(
float32 	InOpacity
	)

---

## FUNCTIONS

### GetColorAndOpacity

```
const FLinearColor& GetColorAndOpacity()const
```

GetBrush

### const FSlateBrush& GetBrush

```
const FSlateBrush& GetBrush()const STATIC FUNCTIONS
```

StaticClass

### static UClass UImage::StaticClass

```
static UClass UImage::StaticClass()
```
