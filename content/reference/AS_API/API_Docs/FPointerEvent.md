# FPointerEvent

## Inheritance

FPointerEvent → VARIABLES → WheelDelta

## Description

const float32 WheelDelta ScreenSpacePosition const FVector2D ScreenSpacePosition LastScreenSpacePosition const FVector2D LastScreenSpacePosition CursorDelta const FVector2D CursorDelta EffectingButton const FKey EffectingButton UserIndex const uint UserIndex PointerIndex const uint PointerIndex TouchpadIndex const uint TouchpadIndex TouchForce const float32 TouchForce GestureDelta const FVector2D GestureDelta

## FUNCTIONS

### GetScreenSpacePosition

```
const FVector2D& GetScreenSpacePosition()const
```

IsShiftDown

### bool IsShiftDown

```
bool IsShiftDown()const IsLeftShiftDown
```

bool IsLeftShiftDown() const

### IsRightShiftDown

```
bool IsRightShiftDown()const
```

IsControlDown

### bool IsControlDown

```
bool IsControlDown()const IsLeftControlDown
```

bool IsLeftControlDown() const

### IsRightControlDown

```
bool IsRightControlDown()const
```

IsAltDown

### bool IsAltDown

```
bool IsAltDown()const IsLeftAltDown
```

bool IsLeftAltDown() const

### IsRightAltDown

```
bool IsRightAltDown()const
```

IsCommandDown

### bool IsCommandDown

```
bool IsCommandDown()const IsLeftCommandDown
```

bool IsLeftCommandDown() const

### IsRightCommandDown

```
bool IsRightCommandDown()const
```

AreCapsLocked

### bool AreCapsLocked

```
bool AreCapsLocked()const GetUserIndex
```

uint GetUserIndex() const

### IsRepeat

```
bool IsRepeat()const
```

GetLastScreenSpacePosition

### const FVector2D& GetLastScreenSpacePosition

```
const FVector2D& GetLastScreenSpacePosition()const GetCursorDelta
```

const FVector2D& GetCursorDelta() const

### IsMouseButtonDown

```
bool IsMouseButtonDown(FKey MouseButton)const
```

GetEffectingButton

### FKey GetEffectingButton

```
FKey GetEffectingButton()const GetWheelDelta
```

float32 GetWheelDelta() const

### GetPointerIndex

```
uint GetPointerIndex()const
```

GetTouchpadIndex

### uint GetTouchpadIndex

```
uint GetTouchpadIndex()const GetTouchForce
```

float32 GetTouchForce() const

### IsTouchEvent

```
bool IsTouchEvent()const
```

IsTouchForceChangedEvent

### bool IsTouchForceChangedEvent

```
bool IsTouchForceChangedEvent()const IsTouchFirstMoveEvent
```

bool IsTouchFirstMoveEvent() const

### GetGestureDelta

```
const FVector2D& GetGestureDelta()const
```

IsDirectionInvertedFromDevice

### bool IsDirectionInvertedFromDevice

```
bool IsDirectionInvertedFromDevice()const opAssign
```

FPointerEvent& opAssign(

### Other

```
FPointerEvent Other
```

)
