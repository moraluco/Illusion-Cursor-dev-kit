# UTextBlock

**Visibility:** public

## Inheritance

UTextLayoutWidget → UTextBlock

## Description

A simple static text widget.

## Members

### Children

```
No Children
```

Text

---

## APPEARANCE

### Font

```
FSlateFontInfo Font
```

The font to render the text with

### StrikeBrush

```
FSlateBrush StrikeBrush
```

The brush to strike through text with

### DynamicFontMaterial

```
const UMaterialInstanceDynamic DynamicFontMaterial
```
### DynamicOutlineMaterial

```
const UMaterialInstanceDynamic DynamicOutlineMaterial
```
### ShadowOffset

```
FVector2D ShadowOffset
```

The direction the shadow is cast

### ColorAndOpacity

```
FSlateColor ColorAndOpacity
```

The color of the text

### TextTransformPolicy

```
ETextTransformPolicy TextTransformPolicy
```

The text transformation policy to apply to this text block

### MinDesiredWidth

```
float32 MinDesiredWidth
```

The minimum desired size for the text

### ShadowColorAndOpacity

```
FLinearColor ShadowColorAndOpacity
```

The color of the shadow

---

## CLIPPING

### TextOverflowPolicy

```
ETextOverflowPolicy TextOverflowPolicy
```

Sets what happens to text that is clipped and doesn't fit within the clip rect for this widget

---

## CONTENT

### Text

```
FText Text
```

The text to display

---

## PERFORMANCE

### bSimpleTextMode

```
bool bSimpleTextMode
```

If this is enabled, text shaping, wrapping, justification are disabled in favor of much faster text layout and measurement.  This feature is only suitable for "simple" text (ie, text containing only numbers or basic ASCII) as it disables the complex text rendering support required for certain languages (such as Arabic and Thai).  It is significantly faster for text that can take advantage of it (particularly if that text changes frequently), but shouldn't be used for localized user-facing text.

### bWrapWithInvalidationPanel

```
bool bWrapWithInvalidationPanel
```

If true, it will automatically wrap this text widget with an invalidation panel

---

## APPEARANCE

### SetMinDesiredWidth

```
void SetMinDesiredWidth(float32 InMinDesiredWidth)
```

Set the minimum desired width for this text block

**Parameters**

InMinDesiredWidth
float32

new minimum desired width

GetDynamicOutlineMaterial
UMaterialInstanceDynamic GetDynamicOutlineMaterial()
SetOpacity
void SetOpacity(
float32 	InOpacity
	)

Sets the opacity of the text in this text block

**Parameters**

InOpacity
float32

The new text opacity

SetAutoWrapText
void SetAutoWrapText(
bool 	InAutoTextWrap
	)

Set the auto wrap for this text block.

**Parameters**

InAutoTextWrap
bool

to turn wrap on or off.

SetColorAndOpacity
void SetColorAndOpacity(
FSlateColor 	InColorAndOpacity
	)

Sets the color and opacity of the text in this text block

**Parameters**

InColorAndOpacity
FSlateColor

The new text color and opacity

SetFont
void SetFont(
FSlateFontInfo 	InFontInfo
	)

Dynamically set the font info for this text block

**Parameters**

InFontInfo
FSlateFontInfo

The new font info

SetTextTransformPolicy
void SetTextTransformPolicy(
ETextTransformPolicy 	InTransformPolicy
	)

Set the text transformation policy for this text block.

**Parameters**

InTransformPolicy
ETextTransformPolicy

the new text transformation policy.

SetShadowColorAndOpacity
void SetShadowColorAndOpacity(
FLinearColor 	InShadowColorAndOpacity
	)

Sets the color and opacity of the text drop shadow Note: if opacity is zero no shadow will be drawn

**Parameters**

InShadowColorAndOpacity
FLinearColor

The new drop shadow color and opacity

SetShadowOffset
void SetShadowOffset(
FVector2D 	InShadowOffset
	)

Sets the offset that the text drop shadow should be drawn at

**Parameters**

InShadowOffset
FVector2D

The new offset

SetStrikeBrush
void SetStrikeBrush(
FSlateBrush 	InStrikeBrush
	)

Dynamically set the strike brush for this text block

**Parameters**

InStrikeBrush
FSlateBrush

The new brush to use to strike through text

GetDynamicFontMaterial
UMaterialInstanceDynamic GetDynamicFontMaterial()
SetTextOverflowPolicy
void SetTextOverflowPolicy(
ETextOverflowPolicy 	InOverflowPolicy
	)

Set the text overflow policy for this text block.

**Parameters**

InOverflowPolicy
ETextOverflowPolicy

the new text overflow policy.

---

## WIDGET

### GetText

```
FText GetText()const
```

Gets the widget text

**Returns**

The widget text

SetText
void SetText(
FText 	InText
	)

Directly sets the widget text.  Warning: This will wipe any binding created for the Text property!

**Parameters**

InText
FText

The text to assign to the widget

---

## FUNCTIONS

### GetShadowColorAndOpacity

```
const FLinearColor& GetShadowColorAndOpacity()const
```

GetFont

### const FSlateFontInfo& GetFont

```
const FSlateFontInfo& GetFont()const GetStrikeBrush
```

const FSlateBrush& GetStrikeBrush() const

### GetShadowOffset

```
const FVector2D& GetShadowOffset()const
```

GetColorAndOpacity

### const FSlateColor& GetColorAndOpacity

```
const FSlateColor& GetColorAndOpacity()const GetMinDesiredWidth
```

const float32& GetMinDesiredWidth() const

### GetTextTransformPolicy

```
const ETextTransformPolicy& GetTextTransformPolicy()const
```

GetTextOverflowPolicy

### const ETextOverflowPolicy& GetTextOverflowPolicy

```
const ETextOverflowPolicy& GetTextOverflowPolicy()const STATIC FUNCTIONS
```

StaticClass

### static UClass UTextBlock::StaticClass

```
static UClass UTextBlock::StaticClass()
```
