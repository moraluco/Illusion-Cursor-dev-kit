# URichTextBlock

**Visibility:** public

## Inheritance

UTextLayoutWidget → URichTextBlock

## Description

The rich text block

## Members

### Text

```
Fancy Text
```
### Children

```
No Children
```

---

## APPEARANCE

### bOverrideDefaultStyle

```
bool bOverrideDefaultStyle
```

True to specify the default text style for this rich text inline, overriding any default provided in the style set table

### DefaultTextStyleOverride

```
FTextBlockStyle DefaultTextStyleOverride
```

Text style to apply by default to text in this block

### DefaultDynamicMaterial

```
const UMaterialInstanceDynamic DefaultDynamicMaterial
```

Creates a dynamic material for the default font or returns it if it already exists

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

### DecoratorClasses

```
TArray<TSubclassOf<URichTextBlockDecorator>> DecoratorClasses
```

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

## APPEARANCE

### SetDefaultTextStyle

```
void SetDefaultTextStyle(FTextBlockStyle InDefaultTextStyle)
```

Wholesale override of the currently established default text style

**Parameters**

InDefaultTextStyle
FTextBlockStyle

The new text style to apply to all default (i.e. undecorated) text in the block

GetDefaultDynamicMaterial
UMaterialInstanceDynamic GetDefaultDynamicMaterial()

Creates a dynamic material for the default font or returns it if it already exists

SetMinDesiredWidth
void SetMinDesiredWidth(
float32 	InMinDesiredWidth
	)

Set the minimum desired width for this rich text block

**Parameters**

InMinDesiredWidth
float32

new minimum desired width

SetDefaultStrikeBrush
void SetDefaultStrikeBrush(
FSlateBrush& 	InStrikeBrush
	)

Dynamically set the default strike brush for this rich text block

**Parameters**

InStrikeBrush
FSlateBrush&

The new brush to use to strike through text

SetAutoWrapText
void SetAutoWrapText(
bool 	InAutoTextWrap
	)

Set the auto wrap for this rich text block

**Parameters**

InAutoTextWrap
bool

to turn wrap on or off

SetDefaultColorAndOpacity
void SetDefaultColorAndOpacity(
FSlateColor 	InColorAndOpacity
	)

Sets the color and opacity of the default text in this rich text block

**Parameters**

InColorAndOpacity
FSlateColor

The new text color and opacity

SetDefaultFont
void SetDefaultFont(
FSlateFontInfo 	InFontInfo
	)

Dynamically set the default font info for this rich text block

**Parameters**

InFontInfo
FSlateFontInfo

The new font info

SetDefaultShadowColorAndOpacity
void SetDefaultShadowColorAndOpacity(
FLinearColor 	InShadowColorAndOpacity
	)

Sets the color and opacity of the default text drop shadow Note: if opacity is zero no shadow will be drawn

**Parameters**

InShadowColorAndOpacity
FLinearColor

The new drop shadow color and opacity

SetDefaultShadowOffset
void SetDefaultShadowOffset(
FVector2D 	InShadowOffset
	)

Sets the offset that the default text drop shadow should be drawn at

**Parameters**

InShadowOffset
FVector2D

The new offset

SetTextTransformPolicy
void SetTextTransformPolicy(
ETextTransformPolicy 	InTransformPolicy
	)

Set the text transformation policy for this text block.

**Parameters**

InTransformPolicy
ETextTransformPolicy

the new text transformation policy.

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

### SetText

```
void SetText(FText InText)
```

Directly sets the widget text.  Warning: This will wipe any binding created for the Text property!

**Parameters**

InText
FText

The text to assign to the widget

RefreshTextLayout
void RefreshTextLayout()

Causes the text to reflow it's layout and re-evaluate any decorators

SetTextStyleSet
void SetTextStyleSet(
UDataTable 	NewTextStyleSet
	)
GetDecoratorByClass
URichTextBlockDecorator GetDecoratorByClass(
TSubclassOf<URichTextBlockDecorator> 	DecoratorClass
	)
GetText
FText GetText() const

Returns widgets text.

---

## FUNCTIONS

### GetTextTransformPolicy

```
const ETextTransformPolicy& GetTextTransformPolicy()const
```

GetTextOverflowPolicy

### const ETextOverflowPolicy& GetTextOverflowPolicy

```
const ETextOverflowPolicy& GetTextOverflowPolicy()const GetMinDesiredWidth
```

const float32& GetMinDesiredWidth() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URichTextBlock::StaticClass()
```
