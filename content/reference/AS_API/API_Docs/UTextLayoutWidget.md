# UTextLayoutWidget

**Visibility:** public

## Inheritance

UWidget → UTextLayoutWidget → UMultiLineEditableText → UMultiLineEditableTextBox → URichTextBlock → UTextBlock

## Description

Base class for all widgets that use a text layout.  Contains the common options that should be exposed for the underlying Slate widget.

## APPEARANCE

### Justification

```
ETextJustify Justification
```

How the text should be aligned with the margin.

### LineHeightPercentage

```
float32 LineHeightPercentage
```

The amount to scale each lines height by.

### Margin

```
FMargin Margin
```

The amount of blank space left around the edges of text area.

---

## LOCALIZATION

### ShapedTextOptions

```
FShapedTextOptions ShapedTextOptions
```

Controls how the text within this widget should be shaped.

---

## WRAPPING

### WrapTextAt

```
float32 WrapTextAt
```

Whether text wraps onto a new line when it's length exceeds this width; if this value is zero or negative, no wrapping occurs.

### AutoWrapText

```
bool AutoWrapText
```

True if we're wrapping text automatically based on the computed horizontal space for this widget.

### WrappingPolicy

```
ETextWrappingPolicy WrappingPolicy
```

The wrapping policy to use.

---

## FUNCTIONS

### GetJustification

```
const ETextJustify& GetJustification()const
```

GetAutoWrapText

### bool GetAutoWrapText

```
bool GetAutoWrapText()const SetAutoWrapText
```

void SetAutoWrapText(

### bool 	Value

```
bool 	Value 	)
```

SetJustification

### void SetJustification

```
void SetJustification(ETextJustify InJustification)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTextLayoutWidget::StaticClass()
```
