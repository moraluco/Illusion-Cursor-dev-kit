# USynthKnob

**Visibility:** public

## Inheritance

UWidget → USynthKnob

## Description

A simple widget that shows a sliding bar with a handle that allows you to control the value between 0..1.

## Members

### Children

```
No Children
```

---

## APPEARANCE

### MouseFineTuneSpeed

```
float32 MouseFineTuneSpeed
```

The speed of the mouse knob control when fine-tuning the knob

### Locked

```
bool Locked
```

Whether the handle is interactive or fixed.

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

### MouseSpeed

```
float32 MouseSpeed
```

The speed of the mouse knob control

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
FSynthKnobStyle WidgetStyle
```

The synth knob style

---

## SYNTHTOOLTIP

### ShowTooltipInfo

```
bool ShowTooltipInfo
```

Enable tool tip window to show parameter information while knob turns

### ParameterName

```
FText ParameterName
```

The name of the pararameter. Will show when knob turns.

### ParameterUnits

```
FText ParameterUnits
```

The parameter units (e.g. hz). Will append to synth tooltip info.

---

## BEHAVIOR

### SetLocked

```
void SetLocked(bool InValue)
```

Sets the handle to be interactive or fixed

### SetStepSize

```
void SetStepSize(float32 InValue)
```

Sets the amount to adjust the value by, when using a controller or keyboard

### SetValue

```
void SetValue(float32 InValue)
```

Sets the current value of the slider.

### GetValue

```
float32 GetValue()const
```

Gets the current value of the slider.

---

## FUNCTIONS

### GetStepSize

```
const float32& GetStepSize()const
```

GetShowTooltipInfo

### bool GetShowTooltipInfo

```
bool GetShowTooltipInfo()const SetShowTooltipInfo
```

void SetShowTooltipInfo(

### bool 	Value

```
bool 	Value 	)
```

GetLocked

### const bool& GetLocked

```
const bool& GetLocked()const STATIC FUNCTIONS
```

StaticClass

### static UClass USynthKnob::StaticClass

```
static UClass USynthKnob::StaticClass()
```
