# UEditableTextBox

**Visibility:** public

## Inheritance

UWidget → UEditableTextBox

## Description

Allows the user to type in custom text.  Only permits a single line of text to be entered.

## Members

### Children

```
No Children
```
### Entry

```
Text Entry
```

---

## APPEARANCE

### IsReadOnly

```
bool IsReadOnly
```

Sets whether this text box can actually be modified interactively by the user

### MinimumDesiredWidth

```
float32 MinimumDesiredWidth
```

Minimum width that a text block should be

### IsPassword

```
bool IsPassword
```

Sets whether this text box is for storing a password

### Justification

```
ETextJustify Justification
```

How the text should be aligned with the margin.

### OverflowPolicy

```
ETextOverflowPolicy OverflowPolicy
```

Sets what should happen when text is clipped because the block does not have enough space

### WidgetStyle

```
FEditableTextBoxStyle WidgetStyle
```
### style

```
The style
```

---

## BEHAVIOR

### SelectAllTextOnCommit

```
bool SelectAllTextOnCommit
```

Whether to select all text when pressing enter to commit changes

### RevertTextOnEscape

```
bool RevertTextOnEscape
```

Whether to allow the user to back out of changes when they press the escape key

### SelectAllTextWhenFocused

```
bool SelectAllTextWhenFocused
```

Whether to select all text when the user clicks to give focus on the widget

### VirtualKeyboardOptions

```
FVirtualKeyboardOptions VirtualKeyboardOptions
```

Additional options to use for the virtual keyboard summoned by this widget

### VirtualKeyboardDismissAction

```
EVirtualKeyboardDismissAction VirtualKeyboardDismissAction
```

What action should be taken when the virtual keyboard is dismissed?

### ClearKeyboardFocusOnCommit

```
bool ClearKeyboardFocusOnCommit
```

Whether to clear keyboard focus when pressing enter to commit changes

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

### AllowContextMenu

```
bool AllowContextMenu
```

Whether the context menu can be opened

### VirtualKeyboardTrigger

```
EVirtualKeyboardTrigger VirtualKeyboardTrigger
```

The type of event that will trigger the display of the virtual keyboard

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

---

## TEXTBOX \| EVENT

### OnTextChanged

```
FOnEditableTextBoxChangedEvent__EditableTextBox OnTextChanged
```

Called whenever the text is changed programmatically or interactively by the user

### OnTextCommitted

```
FOnEditableTextBoxCommittedEvent__EditableTextBox OnTextCommitted
```

Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.

---

## WIDGET

### SetForegroundColor

```
void SetForegroundColor(FLinearColor color)
```

GetText

### FText GetText

```
FText GetText()const HasError
```

bool HasError() const

### SetError

```
void SetError(FText InError)
```

SetText

### void SetText

```
void SetText(FText InText)
```

SetHintText

### void SetHintText

```
void SetHintText(FText InText)
```

SetIsPassword

### void SetIsPassword

```
void SetIsPassword(bool bIsPassword)
```

SetIsReadOnly

### void SetIsReadOnly

```
void SetIsReadOnly(bool bReadOnly)
```

ClearError

### void ClearError

```
void ClearError()
```

---

## FUNCTIONS

### SetJustification

```
void SetJustification(ETextJustify InJustification)
```

SetTextOverflowPolicy

### void SetTextOverflowPolicy

```
void SetTextOverflowPolicy(ETextOverflowPolicy InOverflowPolicy)
```

GetHintText

### const FText& GetHintText

```
const FText& GetHintText()const GetIsReadOnly
```

const bool& GetIsReadOnly() const

### GetIsPassword

```
const bool& GetIsPassword()const
```

GetJustification

### const ETextJustify& GetJustification

```
const ETextJustify& GetJustification()const STATIC FUNCTIONS
```

StaticClass

### static UClass UEditableTextBox::StaticClass

```
static UClass UEditableTextBox::StaticClass()
```
