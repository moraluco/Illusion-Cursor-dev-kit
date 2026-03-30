# UComboBoxKey

**Visibility:** public

## Inheritance

UWidget → UComboBoxKey

## Description

The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.  Use OnGenerateConentWidgetEvent to return a custom built widget.

## CONTENT

### SelectedOption

```
FName SelectedOption
```
### Options

```
TArray<FName> Options
```

---

## EVENTS

### OnOpening

```
FOnOpeningEvent__ComboBoxKey OnOpening
```

Called when the combobox is opening

### OnGenerateContentWidget

```
FGenerateWidgetEvent__ComboBoxKey OnGenerateContentWidget
```

Called when the widget is needed for the content.

### OnGenerateItemWidget

```
FGenerateWidgetEvent__ComboBoxKey OnGenerateItemWidget
```

Called when the widget is needed for the item.

### OnSelectionChanged

```
FOnSelectionChangedEvent__ComboBoxKey OnSelectionChanged
```

Called when a new item is selected in the combobox.

---

## STYLE

### WidgetStyle

```
FComboBoxStyle WidgetStyle
```

The combobox style.

### ForegroundColor

```
FSlateColor ForegroundColor
```

The foreground color to pass through the hierarchy.

### ContentPadding

```
FMargin ContentPadding
```
### bIsFocusable

```
bool bIsFocusable
```

When true, allows the combo box to receive keyboard focus

### MaxListHeight

```
float32 MaxListHeight
```

The max height of the combobox list that opens

### ItemStyle

```
FTableRowStyle ItemStyle
```

The item row style.

### bHasDownArrow

```
bool bHasDownArrow
```

When false, the down arrow is not generated and it is up to the API consumer to make their own visual hint that this is a drop down.

### bEnableGamepadNavigationMode

```
bool bEnableGamepadNavigationMode
```

When false, directional keys will change the selection. When true, ComboBox must be activated and will only capture arrow input while activated.

---

## COMBOBOX

### ClearOptions

```
void ClearOptions()
```

Remove all the elements of the option list.

### ClearSelection

```
void ClearSelection()
```

Clear the current selection.

### GetSelectedOption

```
FName GetSelectedOption()const
```

Get the current selected option

### IsOpen

```
bool IsOpen()const
```

Is the combobox menu openned.

### RemoveOption

```
bool RemoveOption(FName Option)
```

Remove an element to the option list.

### SetSelectedOption

```
void SetSelectedOption(FName Option)
```

Set the current selected option.

### AddOption

```
void AddOption(FName Option)
```

Add an element to the option list.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UComboBoxKey::StaticClass()
```
