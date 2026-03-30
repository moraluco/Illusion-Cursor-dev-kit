# UEditableText

**Visibility:** public

## Inheritance

UWidget → UEditableText

## Description

Editable text box widget

## APPEARANCE

### Justification

```
ETextJustify Justification
```

How the text should be aligned with the margin.

### MinimumDesiredWidth

```
float32 MinimumDesiredWidth
```

Minimum width that a text block should be

### OverflowPolicy

```
ETextOverflowPolicy OverflowPolicy
```

Sets what should happen when text is clipped because the block does not have enough space

### WidgetStyle

```
FEditableTextStyle WidgetStyle
```
### style

```
The style
```

---

## BEHAVIOR

### ClearKeyboardFocusOnCommit

```
bool ClearKeyboardFocusOnCommit
```

Whether to clear keyboard focus when pressing enter to commit changes

### RevertTextOnEscape

```
bool RevertTextOnEscape
```

Whether to allow the user to back out of changes when they press the escape key

### IsCaretMovedWhenGainFocus

```
bool IsCaretMovedWhenGainFocus
```

Workaround as we lose focus when the auto completion closes.

### KeyboardType

```
EVirtualKeyboardType KeyboardType
```

If we're on a platform that requires a virtual keyboard, what kind of keyboard should this widget use?

### SelectAllTextWhenFocused

```
bool SelectAllTextWhenFocused
```

Whether to select all text when the user clicks to give focus on the widget

### AllowContextMenu

```
bool AllowContextMenu
```

Whether the context menu can be opened

### VirtualKeyboardTrigger

```
EVirtualKeyboardTrigger VirtualKeyboardTrigger
```
### VirtualKeyboardDismissAction

```
EVirtualKeyboardDismissAction VirtualKeyboardDismissAction
```

What action should be taken when the virtual keyboard is dismissed?

### SelectAllTextOnCommit

```
bool SelectAllTextOnCommit
```

Whether to select all text when pressing enter to commit changes

### VirtualKeyboardOptions

```
FVirtualKeyboardOptions VirtualKeyboardOptions
```

Additional options for the virtual keyboard

---

## CONTENT

### HintText

```
FText HintText
```

Hint text that appears when there is no text in the text box

### Text

```
FText Text
```

The text content for this editable text box widget

---

## LOCALIZATION

### ShapedTextOptions

```
FShapedTextOptions ShapedTextOptions
```

Controls how the text within this widget should be shaped.

### EVENT

```
WIDGET EVENT
```
### OnTextCommitted

```
FOnEditableTextCommittedEvent__EditableText OnTextCommitted
```

Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.

### OnTextChanged

```
FOnEditableTextChangedEvent__EditableText OnTextChanged
```

Called whenever the text is changed programmatically or interactively by the user

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

SetHintText
void SetHintText(
FText 	InHintText
	)
SetIsPassword
void SetIsPassword(
bool 	InbIsPassword
	)
SetIsReadOnly
void SetIsReadOnly(
bool 	InbIsReadyOnly
	)
GetText
FText GetText() const

Gets the widget text

**Returns**

The widget text

---

## FUNCTIONS

### SetTextOverflowPolicy

```
void SetTextOverflowPolicy(ETextOverflowPolicy InOverflowPolicy)
```

GetHintText

### const FText& GetHintText

```
const FText& GetHintText()const GetJustification
```

const ETextJustify& GetJustification() const

### SetJustification

```
void SetJustification(ETextJustify InJustification)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditableText::StaticClass()
```
