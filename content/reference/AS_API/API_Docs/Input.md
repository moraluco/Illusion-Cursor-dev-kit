# Input

## Inheritance

Input

## INPUT \| ANALOGEVENT

### Key_GetNavigationDirectionFromAnalog

```
static EUINavigation Input::Key_GetNavigationDirectionFromAnalog(
```

### InAnalogEvent

```
FAnalogInputEvent InAnalogEvent
```

)

### Returns the navigation action corresponding to this key, or Invalid if not found

```
Returns the navigation action corresponding to this key, or Invalid if not found
```

---

## INPUT \| INPUTEVENT

### InputEvent_IsRightCommandDown

```
static bool Input::InputEvent_IsRightCommandDown(FInputEvent Input)
```

Returns true if right command key was down when this event occurred

### InputEvent_IsRightControlDown

```
static bool Input::InputEvent_IsRightControlDown(FInputEvent Input)
```

Returns true if left control key was down when this event occurred

### GetAnalogValue

```
static float32 Input::GetAnalogValue(FAnalogInputEvent Input)
```

InputEvent_IsRightShiftDown

### static bool Input::InputEvent_IsRightShiftDown

```
static bool Input::InputEvent_IsRightShiftDown(FInputEvent Input)
```

Returns true if right shift key was down when this event occurred

### InputEvent_IsShiftDown

```
static bool Input::InputEvent_IsShiftDown(FInputEvent Input)
```

Returns true if either shift key was down when this event occurred

### InputEvent_IsAltDown

```
static bool Input::InputEvent_IsAltDown(FInputEvent Input)
```

Returns true if either alt key was down when this event occurred

### InputEvent_IsCommandDown

```
static bool Input::InputEvent_IsCommandDown(FInputEvent Input)
```

Returns true if either command key was down when this event occurred

### InputEvent_IsControlDown

```
static bool Input::InputEvent_IsControlDown(FInputEvent Input)
```

Returns true if either control key was down when this event occurred

### InputEvent_IsLeftAltDown

```
static bool Input::InputEvent_IsLeftAltDown(FInputEvent Input)
```

Returns true if left alt key was down when this event occurred

### InputEvent_IsLeftCommandDown

```
static bool Input::InputEvent_IsLeftCommandDown(FInputEvent Input)
```

Returns true if left command key was down when this event occurred

### InputEvent_IsLeftControlDown

```
static bool Input::InputEvent_IsLeftControlDown(FInputEvent Input)
```

Returns true if left control key was down when this event occurred

### InputEvent_IsLeftShiftDown

```
static bool Input::InputEvent_IsLeftShiftDown(FInputEvent Input)
```

Returns true if left shift key was down when this event occurred

### InputEvent_IsRepeat

```
static bool Input::InputEvent_IsRepeat(FInputEvent Input)
```

Returns whether or not this character is an auto-repeated keystroke

### InputEvent_IsRightAltDown

```
static bool Input::InputEvent_IsRightAltDown(FInputEvent Input)
```

Returns true if right alt key was down when this event occurred

---

## INPUT \| KEY

### InputChord_GetDisplayName

```
static FText Input::InputChord_GetDisplayName(FInputChord Key)
```

**Returns**

The display name of the input chord

Key_IsMouseButton
static bool Input::Key_IsMouseButton(
FKey 	Key
	)

Returns true if the key is a mouse button

EqualEqual_KeyKey
static bool Input::EqualEqual_KeyKey(
FKey 	A,
FKey 	B
	)

Test if the input key are equal (A == B)

**Parameters**

A
FKey

The key to compare against

B
FKey

The key to compare Returns true if the key are equal, false otherwise

Key_IsKeyboardKey
static bool Input::Key_IsKeyboardKey(
FKey 	Key
	)

Returns true if the key is a keyboard button

Key_GetDisplayName
static FText Input::Key_GetDisplayName(
FKey 	Key
	)

Returns the display name of the key.

Key_IsModifierKey
static bool Input::Key_IsModifierKey(
FKey 	Key
	)

Returns true if the key is a modifier key: Ctrl, Command, Alt, Shift

EqualEqual_InputChordInputChord
static bool Input::EqualEqual_InputChordInputChord(
FInputChord 	A,
FInputChord 	B
	)

Test if the input chords are equal (A == B)

**Parameters**

A
FInputChord

The chord to compare against

B
FInputChord

The chord to compare Returns true if the chords are equal, false otherwise

Key_IsValid
static bool Input::Key_IsValid(
FKey 	Key
	)

Returns true if this is a valid key.

Key_IsAnalog
static bool Input::Key_IsAnalog(
FKey 	Key
	)

Returns true if the key is an analog axis

Key_IsAxis1D
static bool Input::Key_IsAxis1D(
FKey 	Key
	)

Returns true if the key is a 1D (float) axis

Key_IsAxis2D
static bool Input::Key_IsAxis2D(
FKey 	Key
	)

Returns true if the key is a 2D (vector) axis

Key_IsAxis3D
static bool Input::Key_IsAxis3D(
FKey 	Key
	)

Returns true if the key is a 3D (vector) axis

Key_IsButtonAxis
static bool Input::Key_IsButtonAxis(
FKey 	Key
	)

Returns true if the key is a 1D axis emulating a digital button press.

Key_IsDigital
static bool Input::Key_IsDigital(
FKey 	Key
	)

Returns true if the key is a digital button press

Key_IsGamepadKey
static bool Input::Key_IsGamepadKey(
FKey 	Key
	)

Returns true if the key is a gamepad button

---

## INPUT \| KEYEVENT

### Key_GetNavigationActionFromKey

```
static EUINavigationAction Input::Key_GetNavigationActionFromKey(FKeyEvent InKeyEvent)
```

Returns the navigation action corresponding to this key, or Invalid if not found

### GetKey

```
static FKey Input::GetKey(FKeyEvent Input)
```

Returns the key for this event.

**Returns**

Key name

GetUserIndex
static int Input::GetUserIndex(
FKeyEvent 	Input
	)
Key_GetNavigationDirectionFromKey
static EUINavigation Input::Key_GetNavigationDirectionFromKey(
FKeyEvent 	InKeyEvent
	)

Returns the navigation action corresponding to this key, or Invalid if not found

---

## INPUT \| MOTIONTRACKING

### CalibrateTilt

```
static void Input::CalibrateTilt()
```

Calibrate the tilt for the input device

---

## INPUT \| POINTEREVENT

### PointerEvent_GetEffectingButton

```
static FKey Input::PointerEvent_GetEffectingButton(FPointerEvent Input)
```

Mouse button that caused this event to be raised (possibly FKey::Invalid)

### PointerEvent_GetGestureDelta

```
static FVector2D Input::PointerEvent_GetGestureDelta(FPointerEvent Input)
```

Returns the change in gesture value since the last gesture event of the same type.

### PointerEvent_GetGestureType

```
static ESlateGesture Input::PointerEvent_GetGestureType(FPointerEvent Input)
```

Returns the type of touch gesture

### PointerEvent_GetLastScreenSpacePosition

```
static FVector2D Input::PointerEvent_GetLastScreenSpacePosition(FPointerEvent Input)
```

Returns the position of the cursor in screen space last time we handled an input event

### PointerEvent_GetCursorDelta

```
static FVector2D Input::PointerEvent_GetCursorDelta(FPointerEvent Input)
```

Returns the distance the mouse traveled since the last event was handled.

### PointerEvent_GetPointerIndex

```
static int Input::PointerEvent_GetPointerIndex(FPointerEvent Input)
```

Returns the unique identifier of the pointer (e.g., finger index)

### PointerEvent_GetScreenSpacePosition

```
static FVector2D Input::PointerEvent_GetScreenSpacePosition(FPointerEvent Input)
```

Returns The position of the cursor in screen space

### PointerEvent_GetTouchpadIndex

```
static int Input::PointerEvent_GetTouchpadIndex(FPointerEvent Input)
```

Returns the index of the touch pad that generated this event (for platforms with multiple touch pads per user)

### PointerEvent_GetUserIndex

```
static int Input::PointerEvent_GetUserIndex(FPointerEvent Input)
```

Returns the index of the user that caused the event

### PointerEvent_GetWheelDelta

```
static float32 Input::PointerEvent_GetWheelDelta(FPointerEvent Input)
```

How much did the mouse wheel turn since the last mouse event

### PointerEvent_IsMouseButtonDown

```
static bool Input::PointerEvent_IsMouseButtonDown(FPointerEvent Input, FKey MouseButton)
```

Mouse buttons that are currently pressed

### PointerEvent_IsTouchEvent

```
static bool Input::PointerEvent_IsTouchEvent(FPointerEvent Input)
```

Returns true if this event a result from a touch (as opposed to a mouse)
