# UMultiLineEditableTextBox

**Visibility:** public

## Inheritance

UTextLayoutWidget → UMultiLineEditableTextBox

## Description

Allows a user to enter multiple lines of text

## APPEARANCE

### bIsReadOnly

```
bool bIsReadOnly
```

Sets whether this text block can be modified interactively by the user

---

## BEHAVIOR

### VirtualKeyboardDismissAction

```
EVirtualKeyboardDismissAction VirtualKeyboardDismissAction
```

What action should be taken when the virtual keyboard is dismissed?

### AllowContextMenu

```
bool AllowContextMenu
```

Whether the context menu can be opened

### VirtualKeyboardOptions

```
FVirtualKeyboardOptions VirtualKeyboardOptions
```

Additional options to be used by the virtual keyboard summoned from this widget

---

## CONTENT

### Text

```
FText Text
```

The text content for this editable text box widget

### HintText

```
FText HintText
```

Hint text that appears when there is no text in the text box

---

## STYLE

### WidgetStyle

```
FEditableTextBoxStyle WidgetStyle
```
### style

```
The style
```
### TextStyle

```
FTextBlockStyle TextStyle
```

The text style

### EVENT

```
WIDGET EVENT
```
### OnTextCommitted

```
FOnMultiLineEditableTextBoxCommittedEvent__MultiLineEditableTextBox OnTextCommitted
```

Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.

### OnTextChanged

```
FOnMultiLineEditableTextBoxChangedEvent__MultiLineEditableTextBox OnTextChanged
```

Called whenever the text is changed programmatically or interactively by the user

---

## WIDGET

### SetIsReadOnly

```
void SetIsReadOnly(bool bReadOnly)
```

GetText

### FText GetText

```
FText GetText()const SetError
```

void SetError(

### FText 	InError

```
FText 	InError 	)
```

SetForegroundColor

### void SetForegroundColor

```
void SetForegroundColor(FLinearColor color)
```

SetHintText

### void SetHintText

```
void SetHintText(FText InHintText)
```

GetHintText

### FText GetHintText

```
FText GetHintText()const SetText
```

void SetText(

### FText 	InText

```
FText 	InText 	)
```

---

## FUNCTIONS

### GetTextStyle

```
const FTextBlockStyle& GetTextStyle()const
```

SetTextStyle

### void SetTextStyle

```
void SetTextStyle(FTextBlockStyle InTextStyle)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMultiLineEditableTextBox::StaticClass()
```
