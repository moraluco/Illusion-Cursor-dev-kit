# UMultiLineEditableText

**Visibility:** public

## Inheritance

UTextLayoutWidget → UMultiLineEditableText

## Description

Editable text box widget

## APPEARANCE

### bIsReadOnly

```
bool bIsReadOnly
```

Sets whether this text block can be modified interactively by the user

---

## BEHAVIOR

### ClearTextSelectionOnFocusLoss

```
bool ClearTextSelectionOnFocusLoss
```

Whether to clear text selection when focus is lost

### RevertTextOnEscape

```
bool RevertTextOnEscape
```

Whether to allow the user to back out of changes when they press the escape key

### ClearKeyboardFocusOnCommit

```
bool ClearKeyboardFocusOnCommit
```

Whether to clear keyboard focus when pressing enter to commit changes

### AllowContextMenu

```
bool AllowContextMenu
```

Whether the context menu can be opened

### SelectAllTextWhenFocused

```
bool SelectAllTextWhenFocused
```

Whether to select all text when the user clicks to give focus on the widget

### VirtualKeyboardOptions

```
FVirtualKeyboardOptions VirtualKeyboardOptions
```

Additional options for the virtual keyboard

### VirtualKeyboardDismissAction

```
EVirtualKeyboardDismissAction VirtualKeyboardDismissAction
```

What action should be taken when the virtual keyboard is dismissed?

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
FTextBlockStyle WidgetStyle
```
### style

```
The style
```
### EVENT

```
WIDGET EVENT
```
### OnTextCommitted

```
FOnMultiLineEditableTextCommittedEvent__MultiLineEditableText OnTextCommitted
```

Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.

### OnTextChanged

```
FOnMultiLineEditableTextChangedEvent__MultiLineEditableText OnTextChanged
```

Called whenever the text is changed programmatically or interactively by the user

---

## WIDGET

### GetText

```
FText GetText()const
```

SetHintText

### void SetHintText

```
void SetHintText(FText InHintText)
```

SetIsReadOnly

### void SetIsReadOnly

```
void SetIsReadOnly(bool bReadOnly)
```

SetText

### void SetText

```
void SetText(FText InText)
```

GetHintText

### FText GetHintText

```
FText GetHintText()const FUNCTIONS
```

GetWidgetStyle

### const FTextBlockStyle& GetWidgetStyle

```
const FTextBlockStyle& GetWidgetStyle()const SetWidgetStyle
```

void SetWidgetStyle(

### FTextBlockStyle 	InWidgetStyle

```
FTextBlockStyle 	InWidgetStyle 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMultiLineEditableText::StaticClass()
```
