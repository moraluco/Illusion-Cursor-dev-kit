# UComboBoxString

**Visibility:** public

## Inheritance

UWidget → UComboBoxString

## Description

The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.

## COMBOBOX

OptionCount

### OptionCount

```
const int OptionCount
```

Returns the number of options

### SelectedIndex

```
int SelectedIndex
```

---

## CONTENT

### SelectedOption

```
FString SelectedOption
```

The item in the combobox to select by default

### ContentPadding

```
FMargin ContentPadding
```
### MaxListHeight

```
float32 MaxListHeight
```

The max height of the combobox list that opens

### HasDownArrow

```
bool HasDownArrow
```

When false, the down arrow is not generated and it is up to the API consumer to make their own visual hint that this is a drop down.

### EnableGamepadNavigationMode

```
bool EnableGamepadNavigationMode
```

When false, directional keys will change the selection. When true, ComboBox must be activated and will only capture arrow input while activated.

### DefaultOptions

```
TArray<FString> DefaultOptions
```

The default list of items to be displayed on the combobox.

---

## EVENTS

### OnSelectionChanged

```
FOnSelectionChangedEvent__ComboBoxString OnSelectionChanged
```

Called when a new item is selected in the combobox.

### OnGenerateWidgetEvent

```
FGenerateWidgetForString__Widget OnGenerateWidgetEvent
```

Called when the widget is needed for the item.

### OnOpening

```
FOnOpeningEvent__ComboBoxString OnOpening
```

Called when the combobox is opening

---

## INTERACTION

### bIsFocusable

```
bool bIsFocusable
```

---

## STYLE

### WidgetStyle

```
FComboBoxStyle WidgetStyle
```

The style.

### ItemStyle

```
FTableRowStyle ItemStyle
```

The item row style.

### Font

```
FSlateFontInfo Font
```

The default font to use in the combobox, only applies if you're not implementing OnGenerateWidgetEvent to factory each new entry.

### ForegroundColor

```
FSlateColor ForegroundColor
```

The foreground color to pass through the hierarchy.

---

## COMBOBOX

### GetSelectedOption

```
FString GetSelectedOption()const
```

ClearOptions

### void ClearOptions

```
void ClearOptions()
```

ClearSelection

### void ClearSelection

```
void ClearSelection()
```

FindOptionIndex

### int FindOptionIndex

```
int FindOptionIndex(FString Option)const
```

GetOptionAtIndex

### FString GetOptionAtIndex

```
FString GetOptionAtIndex(int Index)const
```

GetOptionCount

### int GetOptionCount

```
int GetOptionCount()const
```

Returns the number of options

### GetSelectedIndex

```
int GetSelectedIndex()const
```

AddOption

### void AddOption

```
void AddOption(FString Option)
```

IsOpen

### bool IsOpen

```
bool IsOpen()const RefreshOptions
```

void RefreshOptions()

### Refreshes the list of options.  If you added new ones, and want to update the list even if it's currently being displayed use this.

```
Refreshes the list of options.  If you added new ones, and want to update the list even if it's currently being displayed use this.
```

RemoveOption

### bool RemoveOption

```
bool RemoveOption(FString Option)
```

SetSelectedIndex

### void SetSelectedIndex

```
void SetSelectedIndex(int Index)
```

SetSelectedOption

### void SetSelectedOption

```
void SetSelectedOption(FString Option)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UComboBoxString::StaticClass()
```
