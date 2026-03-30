# UCheckBox

**Visibility:** public

## Inheritance

UContentWidget → UCheckBox

## Description

The checkbox widget allows you to display a toggled state of 'unchecked', 'checked' and 'indeterminable.  You can use the checkbox for a classic checkbox, or as a toggle button, or as radio buttons.

## Members

### Child

```
Single Child
```

Toggle

---

## APPEARANCE

### HorizontalAlignment

```
EHorizontalAlignment HorizontalAlignment
```

How the content of the toggle button should align within the given space

### CheckedState

```
ECheckBoxState CheckedState
```

Whether the check box is currently in a checked state

---

## CHECKBOX \| EVENT

### OnCheckStateChanged

```
FOnCheckBoxComponentStateChanged OnCheckStateChanged
```

Called when the checked state has changed

---

## INTERACTION

### IsFocusable

```
bool IsFocusable
```

Sometimes a button should only be mouse-clickable and never keyboard focusable.

### ClickMethod

```
EButtonClickMethod ClickMethod
```

The type of mouse action required by the user to trigger the buttons 'Click'

### TouchMethod

```
EButtonTouchMethod TouchMethod
```

The type of touch action required by the user to trigger the buttons 'Click'

### PressMethod

```
EButtonPressMethod PressMethod
```

The type of keyboard/gamepad button press action required by the user to trigger the buttons 'Click'

---

## STYLE

### WidgetStyle

```
FCheckBoxStyle WidgetStyle
```

The checkbox bar style

---

## BUTTON

### SetPressMethod

```
void SetPressMethod(EButtonPressMethod InPressMethod)
```

SetClickMethod

### void SetClickMethod

```
void SetClickMethod(EButtonClickMethod InClickMethod)
```

SetTouchMethod

### void SetTouchMethod

```
void SetTouchMethod(EButtonTouchMethod InTouchMethod)
```

---

## WIDGET

### SetCheckedState

```
void SetCheckedState(ECheckBoxState InCheckedState)
```

Sets the checked state.

### SetIsChecked

```
void SetIsChecked(bool InIsChecked)
```

Sets the checked state.

### IsChecked

```
bool IsChecked()const
```

Returns true if the checkbox is currently checked

### IsPressed

```
bool IsPressed()const
```

Returns true if this button is currently pressed

### GetCheckedState

```
ECheckBoxState GetCheckedState()const
```

Returns the full current checked state.

---

## FUNCTIONS

### GetTouchMethod

```
const EButtonTouchMethod& GetTouchMethod()const
```

GetPressMethod

### const EButtonPressMethod& GetPressMethod

```
const EButtonPressMethod& GetPressMethod()const GetClickMethod
```

const EButtonClickMethod& GetClickMethod() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCheckBox::StaticClass()
```
