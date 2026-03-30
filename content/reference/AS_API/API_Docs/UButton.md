# UButton

**Visibility:** public

## Inheritance

UContentWidget → UButton

## Description

The button is a click-able primitive widget to enable basic interaction, you can place any other widget inside a button to make a more complex and interesting click-able element in your UI.

## Members

### Child

```
Single Child
```

Clickable

---

## APPEARANCE

### BackgroundColor

```
FLinearColor BackgroundColor
```

The color multiplier for the button background

### WidgetStyle

```
FButtonStyle WidgetStyle
```

The button style used at runtime

### ColorAndOpacity

```
FLinearColor ColorAndOpacity
```

The color multiplier for the button content

---

## BUTTON \| EVENT

### OnReleased

```
FOnButtonReleasedEvent OnReleased
```

Called when the button is released

### OnHovered

```
FOnButtonHoverEvent OnHovered
```
### OnPressed

```
FOnButtonPressedEvent OnPressed
```

Called when the button is pressed

### OnClicked

```
FOnButtonClickedEvent OnClicked
```

Called when the button is clicked

### OnUnhovered

```
FOnButtonHoverEvent OnUnhovered
```

---

## INTERACTION

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

### IsFocusable

```
bool IsFocusable
```

Sometimes a button should only be mouse-clickable and never keyboard focusable.

---

## BUTTON

### SetTouchMethod

```
void SetTouchMethod(EButtonTouchMethod InTouchMethod)
```

SetClickMethod

### void SetClickMethod

```
void SetClickMethod(EButtonClickMethod InClickMethod)
```

SetPressMethod

### void SetPressMethod

```
void SetPressMethod(EButtonPressMethod InPressMethod)
```

IsPressed

### bool IsPressed

```
bool IsPressed()const
```

Returns true if the user is actively pressing the button.  Do not use this for detecting 'Clicks', use the OnClicked event instead.

**Returns**

true if the user is actively pressing the button otherwise false.

---

## BUTTON \| APPEARANCE

### SetStyle

```
void SetStyle(FButtonStyle InStyle)
```

Sets the color multiplier for the button background

### SetColorAndOpacity

```
void SetColorAndOpacity(FLinearColor InColorAndOpacity)
```

Sets the color multiplier for the button content

### SetBackgroundColor

```
void SetBackgroundColor(FLinearColor InBackgroundColor)
```

Sets the color multiplier for the button background

---

## FUNCTIONS

### GetColorAndOpacity

```
const FLinearColor& GetColorAndOpacity()const
```

GetBackgroundColor

### const FLinearColor& GetBackgroundColor

```
const FLinearColor& GetBackgroundColor()const GetClickMethod
```

const EButtonClickMethod& GetClickMethod() const

### GetTouchMethod

```
const EButtonTouchMethod& GetTouchMethod()const
```

GetPressMethod

### const EButtonPressMethod& GetPressMethod

```
const EButtonPressMethod& GetPressMethod()const STATIC FUNCTIONS
```

StaticClass

### static UClass UButton::StaticClass

```
static UClass UButton::StaticClass()
```
