# UInputKeySelector

**Visibility:** public

## Inheritance

UWidget → UInputKeySelector

## Description

A widget for selecting a single key or a single key with a modifier.

## APPEARANCE

### TextStyle

```
FTextBlockStyle TextStyle
```

The button style used at runtime

### Margin

```
FMargin Margin
```

The amount of blank space around the text used to display the currently selected key.

### WidgetStyle

```
FButtonStyle WidgetStyle
```

The button style used at runtime

### NoKeySpecifiedText

```
FText NoKeySpecifiedText
```

Sets the text to display when no key text is available or not selecting a key.

### KeySelectionText

```
FText KeySelectionText
```

Sets the text which is displayed while selecting keys.

### SELECTION

```
KEY SELECTION
```
### bAllowGamepadKeys

```
bool bAllowGamepadKeys
```

When true gamepad keys are allowed in the input chord representing the selected key, otherwise they are ignored.

### bAllowModifierKeys

```
bool bAllowModifierKeys
```

input chord representing the selected key, if false modifier keys are ignored.

### EscapeKeys

```
TArray<FKey> EscapeKeys
```

When true gamepad keys are allowed in the input chord representing the selected key, otherwise they are ignored.

### SelectedKey

```
FInputChord SelectedKey
```

The currently selected key chord.

---

## WIDGET

IsSelectingKey

### IsSelectingKey

```
const bool IsSelectingKey
```

Returns true if the widget is currently selecting a key, otherwise returns false.

### EVENT

```
WIDGET EVENT
```
### OnKeySelected

```
FOnKeySelected__InputKeySelector OnKeySelected
```

Called whenever a new key is selected by the user.

### OnIsSelectingKeyChanged

```
FOnIsSelectingKeyChanged__InputKeySelector OnIsSelectingKeyChanged
```

Called whenever the key selection mode starts or stops.

---

## WIDGET

### SetSelectedKey

```
void SetSelectedKey(FInputChord InSelectedKey)
```

Sets the currently selected key.

### SetAllowGamepadKeys

```
void SetAllowGamepadKeys(bool bInAllowGamepadKeys)
```

Sets whether or not gamepad keys are allowed in the selected key.

### SetAllowModifierKeys

```
void SetAllowModifierKeys(bool bInAllowModifierKeys)
```

Sets whether or not modifier keys are allowed in the selected key.

### SetEscapeKeys

```
void SetEscapeKeys(TArray<FKey> InKeys)
```

Sets escape keys.

### SetKeySelectionText

```
void SetKeySelectionText(FText InKeySelectionText)
```

Sets the text which is displayed while selecting keys.

### SetNoKeySpecifiedText

```
void SetNoKeySpecifiedText(FText InNoKeySpecifiedText)
```

Sets the text to display when no key text is available or not selecting a key.

### GetIsSelectingKey

```
bool GetIsSelectingKey()const
```

Returns true if the widget is currently selecting a key, otherwise returns false.

### SetTextBlockVisibility

```
void SetTextBlockVisibility(ESlateVisibility InVisibility)
```

Sets the visibility of the text block.

---

## FUNCTIONS

### GetKeySelectionText

```
const FText& GetKeySelectionText()const
```

GetNoKeySpecifiedText

### const FText& GetNoKeySpecifiedText

```
const FText& GetNoKeySpecifiedText()const GetEscapeKeys
```

const TArray<FKey>& GetEscapeKeys() const

### GetSelectedKey

```
const FInputChord& GetSelectedKey()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInputKeySelector::StaticClass()
```
