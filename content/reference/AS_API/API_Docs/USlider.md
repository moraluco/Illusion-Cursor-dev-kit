# USlider

**Visibility:** public

## Inheritance

UWidget → USlider

## Description

A simple widget that shows a sliding bar with a handle that allows you to control the value between 0..1.

## Members

### Children

```
No Children
```

---

## APPEARANCE

### IndentHandle

```
bool IndentHandle
```

Whether the slidable area should be indented to fit the handle.

### Orientation

```
EOrientation Orientation
```

The slider's orientation.

### MouseUsesStep

```
bool MouseUsesStep
```

Sets new value if mouse position is greater/less than half the step size.

### RequiresControllerLock

```
bool RequiresControllerLock
```

Sets whether we have to lock input to change the slider value.

### SliderBarColor

```
FLinearColor SliderBarColor
```

The color to draw the slider bar in.

### Locked

```
bool Locked
```

Whether the handle is interactive or fixed.

### MaxValue

```
float32 MaxValue
```

The maximum value the slider can be set to.

### SliderHandleColor

```
FLinearColor SliderHandleColor
```

The color to draw the slider handle in.

### StepSize

```
float32 StepSize
```

The amount to adjust the value by, when using a controller or keyboard

### Value

```
float32 Value
```

The volume value to display.

### MinValue

```
float32 MinValue
```

The minimum value the slider can be set to.

---

## BEHAVIOR

NormalizedValue

### NormalizedValue

```
const float32 NormalizedValue
```

Get the current value scaled from 0 to 1

---

## INTERACTION

### IsFocusable

```
bool IsFocusable
```

Should the slider be focusable?

---

## STYLE

### WidgetStyle

```
FSliderStyle WidgetStyle
```

The progress bar style

### EVENT

```
WIDGET EVENT
```
### OnControllerCaptureBegin

```
FOnControllerCaptureBeginEvent OnControllerCaptureBegin
```

Invoked when the controller capture begins.

### OnMouseCaptureEnd

```
FOnMouseCaptureEndEvent OnMouseCaptureEnd
```

Invoked when the mouse is released and a capture ends.

### OnMouseCaptureBegin

```
FOnMouseCaptureBeginEvent OnMouseCaptureBegin
```

Invoked when the mouse is pressed and a capture begins.

### OnControllerCaptureEnd

```
FOnControllerCaptureEndEvent OnControllerCaptureEnd
```

Invoked when the controller capture ends.

### OnValueChanged

```
FOnFloatValueChangedEvent OnValueChanged
```

Called when the value is changed by slider or typing.

---

## APPEARANCE

### SetSliderBarColor

```
void SetSliderBarColor(FLinearColor InValue)
```

Sets the color of the slider bar

### SetSliderHandleColor

```
void SetSliderHandleColor(FLinearColor InValue)
```

Sets the color of the handle bar

---

## BEHAVIOR

### SetLocked

```
void SetLocked(bool InValue)
```

Sets the handle to be interactive or fixed

### SetMaxValue

```
void SetMaxValue(float32 InValue)
```

Sets the maximum value of the slider.

### SetMinValue

```
void SetMinValue(float32 InValue)
```

Sets the minimum value of the slider.

### SetIndentHandle

```
void SetIndentHandle(bool InValue)
```

Sets if the slidable area should be indented to fit the handle

### GetValue

```
float32 GetValue()const
```

Gets the current value of the slider.

### SetValue

```
void SetValue(float32 InValue)
```

Sets the current value of the slider.

### SetStepSize

```
void SetStepSize(float32 InValue)
```

Sets the amount to adjust the value by, when using a controller or keyboard

### GetNormalizedValue

```
float32 GetNormalizedValue()const
```

Get the current value scaled from 0 to 1

---

## FUNCTIONS

### GetMaxValue

```
const float32& GetMaxValue()const
```

GetSliderBarColor

### const FLinearColor& GetSliderBarColor

```
const FLinearColor& GetSliderBarColor()const GetSliderHandleColor
```

const FLinearColor& GetSliderHandleColor() const

### GetIndentHandle

```
const bool& GetIndentHandle()const
```

GetLocked

### const bool& GetLocked

```
const bool& GetLocked()const GetStepSize
```

const float32& GetStepSize() const

### GetMinValue

```
const float32& GetMinValue()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USlider::StaticClass()
```
