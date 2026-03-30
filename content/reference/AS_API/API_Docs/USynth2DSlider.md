# USynth2DSlider

**Visibility:** public

## Inheritance

UWidget → USynth2DSlider

## Description

A simple widget that shows a sliding bar with a handle that allows you to control the value between 0..1.

## Members

### Children

```
No Children
```

---

## APPEARANCE

### ValueX

```
float32 ValueX
```
### ValueY

```
float32 ValueY
```
### StepSize

```
float32 StepSize
```

The amount to adjust the value by, when using a controller or keyboard

### Locked

```
bool Locked
```

Whether the handle is interactive or fixed.

### SliderHandleColor

```
FLinearColor SliderHandleColor
```

The color to draw the slider handle in.

### IndentHandle

```
bool IndentHandle
```

Whether the slidable area should be indented to fit the handle.

---

## BEHAVIOR

### Value

```
FVector2D Value
```

Gets the current value of the slider.

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
FSynth2DSliderStyle WidgetStyle
```

The progress bar style

### EVENT

```
WIDGET EVENT
```
### OnControllerCaptureBegin

```
FOnControllerCaptureBeginEventSynth2D OnControllerCaptureBegin
```

Invoked when the controller capture begins.

### OnMouseCaptureEnd

```
FOnMouseCaptureEndEventSynth2D OnMouseCaptureEnd
```

Invoked when the mouse is released and a capture ends.

### OnMouseCaptureBegin

```
FOnMouseCaptureBeginEventSynth2D OnMouseCaptureBegin
```

Invoked when the mouse is pressed and a capture begins.

### OnValueChangedY

```
FOnFloatValueChangedEventSynth2D OnValueChangedY
```

Called when the value is changed by slider or typing.

### OnValueChangedX

```
FOnFloatValueChangedEventSynth2D OnValueChangedX
```

Called when the value is changed by slider or typing.

### OnControllerCaptureEnd

```
FOnControllerCaptureEndEventSynth2D OnControllerCaptureEnd
```

Invoked when the controller capture ends.

---

## APPEARANCE

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

### SetIndentHandle

```
void SetIndentHandle(bool InValue)
```

Sets if the slidable area should be indented to fit the handle

### SetValue

```
void SetValue(FVector2D InValue)
```

Sets the current value of the slider.

### SetStepSize

```
void SetStepSize(float32 InValue)
```

Sets the amount to adjust the value by, when using a controller or keyboard

### GetValue

```
FVector2D GetValue()const
```

Gets the current value of the slider.

---

## FUNCTIONS

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

### GetSliderHandleColor

```
const FLinearColor& GetSliderHandleColor()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USynth2DSlider::StaticClass()
```
