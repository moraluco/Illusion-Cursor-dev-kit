# USpinBox

**Visibility:** public

## Inheritance

UWidget → USpinBox

## Description

A numerical entry box that allows for direct entry of the number or allows the user to click and slide the number.

## BEHAVIOR

### AlwaysUsesDeltaSnap

```
bool AlwaysUsesDeltaSnap
```

Get whether the spin box uses delta snap on type.

---

## CONTENT

### MinValue

```
float32 MinValue
```

The minimum allowable value that can be manually entered into the spin box

### MinSliderValue

```
float32 MinSliderValue
```

The minimum allowable value that can be specified using the slider

### Value

```
float32 Value
```

Value stored in this spin box

### MaxValue

```
float32 MaxValue
```

The maximum allowable value that can be manually entered into the spin box

### MaxSliderValue

```
float32 MaxSliderValue
```

The maximum allowable value that can be specified using the slider

---

## DISPLAY

### Font

```
FSlateFontInfo Font
```

Font color and opacity (overrides style)

### Justification

```
ETextJustify Justification
```

The justification the value text should appear as.

### MinDesiredWidth

```
float32 MinDesiredWidth
```

The minimum width of the spin box

---

## INPUT

### ClearKeyboardFocusOnCommit

```
bool ClearKeyboardFocusOnCommit
```

Whether to remove the keyboard focus from the spin box when the value is committed

### SelectAllTextOnCommit

```
bool SelectAllTextOnCommit
```

Whether to select the text in the spin box when the value is committed

---

## SLIDER

### bAlwaysUsesDeltaSnap

```
bool bAlwaysUsesDeltaSnap
```

Whether this spin box should use the delta snapping logic for typed values

### false

```
default false
```
### Delta

```
float32 Delta
```

The amount by which to change the spin box value as the slider moves.

### MaxFractionalDigits

```
int MaxFractionalDigits
```

The maximume required fractional digits

### 6

```
default 6
```
### MinFractionalDigits

```
int MinFractionalDigits
```

The minimum required fractional digits

### default 1

```
default 1
```

SliderExponent

### float32 SliderExponent

```
float32 SliderExponent
```

The exponent by which to increase the delta as the mouse moves. 1 is constant (never increases the delta).

---

## SPINBOX \| EVENTS

### OnValueChanged

```
FOnSpinBoxValueChangedEvent__SpinBox OnValueChanged
```

Called when the value is changed interactively by the user

### OnBeginSliderMovement

```
FOnSpinBoxBeginSliderMovement__SpinBox OnBeginSliderMovement
```

Called right before the slider begins to move

### OnValueCommitted

```
FOnSpinBoxValueCommittedEvent__SpinBox OnValueCommitted
```

Called when the value is committed. Occurs when the user presses Enter or the text box loses focus.

### OnEndSliderMovement

```
FOnSpinBoxValueChangedEvent__SpinBox OnEndSliderMovement
```

Called right after the slider handle is released by the user

---

## STYLE

### ForegroundColor

```
FSlateColor ForegroundColor
```
### WidgetStyle

```
FSpinBoxStyle WidgetStyle
```
### The Style

```
The Style
```

---

## APPEARANCE

### SetForegroundColor

```
void SetForegroundColor(FSlateColor InForegroundColor)
```

---

## BEHAVIOR

### ClearMinSliderValue

```
void ClearMinSliderValue()
```

Clear the minimum value that can be specified using the slider.

### ClearMinValue

```
void ClearMinValue()
```

Clear the minimum value that can be manually set in the spin box.

### GetAlwaysUsesDeltaSnap

```
bool GetAlwaysUsesDeltaSnap()const
```

Get whether the spin box uses delta snap on type.

### GetDelta

```
float32 GetDelta()const
```

Get the current delta for the spin box.

### GetMaxFractionalDigits

```
int GetMaxFractionalDigits()const
```

Get the current Max Fractional Digits for the spin box.

### ClearMaxValue

```
void ClearMaxValue()
```

Clear the maximum value that can be manually set in the spin box.

### GetMaxSliderValue

```
float32 GetMaxSliderValue()const
```

Get the current maximum value that can be specified using the slider.

### GetMaxValue

```
float32 GetMaxValue()const
```

Get the current maximum value that can be manually set in the spin box.

### GetMinFractionalDigits

```
int GetMinFractionalDigits()const
```

Get the current Min Fractional Digits for the spin box.

### GetMinSliderValue

```
float32 GetMinSliderValue()const
```

Get the current minimum value that can be specified using the slider.

### GetMinValue

```
float32 GetMinValue()const
```

Get the current minimum value that can be manually set in the spin box.

### GetValue

```
float32 GetValue()const
```

Get the current value of the spin box.

### SetAlwaysUsesDeltaSnap

```
void SetAlwaysUsesDeltaSnap(bool bNewValue)
```

Set whether the spin box uses delta snap on type.

### ClearMaxSliderValue

```
void ClearMaxSliderValue()
```

Clear the maximum value that can be specified using the slider.

### SetDelta

```
void SetDelta(float32 NewValue)
```

Set the delta for the spin box.

### SetMaxFractionalDigits

```
void SetMaxFractionalDigits(int NewValue)
```

Set the Max Fractional Digits for the spin box.

### SetMaxSliderValue

```
void SetMaxSliderValue(float32 NewValue)
```

Set the maximum value that can be specified using the slider.

### SetMaxValue

```
void SetMaxValue(float32 NewValue)
```

Set the maximum value that can be manually set in the spin box.

### SetMinFractionalDigits

```
void SetMinFractionalDigits(int NewValue)
```

Set the Min Fractional Digits for the spin box.

### SetMinSliderValue

```
void SetMinSliderValue(float32 NewValue)
```

Set the minimum value that can be specified using the slider.

### SetMinValue

```
void SetMinValue(float32 NewValue)
```

Set the minimum value that can be manually set in the spin box.

### SetValue

```
void SetValue(float32 NewValue)
```

Set the value of the spin box.

---

## FUNCTIONS

### SetbOverride_MinValue

```
void SetbOverride_MinValue(bool Value)
```

SetbOverride_MaxValue

### void SetbOverride_MaxValue

```
void SetbOverride_MaxValue(bool Value)
```

SetbOverride_MinSliderValue

### void SetbOverride_MinSliderValue

```
void SetbOverride_MinSliderValue(bool Value)
```

SetbOverride_MaxSliderValue

### void SetbOverride_MaxSliderValue

```
void SetbOverride_MaxSliderValue(bool Value)
```

GetForegroundColor

### const FSlateColor& GetForegroundColor

```
const FSlateColor& GetForegroundColor()const STATIC FUNCTIONS
```

StaticClass

### static UClass USpinBox::StaticClass

```
static UClass USpinBox::StaticClass()
```
