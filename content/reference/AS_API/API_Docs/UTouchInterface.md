# UTouchInterface

**Visibility:** public

## Inheritance

UObject → UTouchInterface

## Description

Defines an interface by which touch input can be controlled using any number of buttons and virtual joysticks

## TOUCHINTERFACE

### ActiveOpacity

```
float32 ActiveOpacity Opacity(0.0
```

1.0) of all controls while any control is active

### InactiveOpacity

```
float32 InactiveOpacity Opacity(0.0
```

1.0) of all controls while no controls are active

### TimeUntilDeactive

```
float32 TimeUntilDeactive
```

How long after user interaction will all controls fade out to Inactive Opacity

### TimeUntilReset

```
float32 TimeUntilReset
```

How long after going inactive will controls reset/recenter themselves (0.0 will disable this feature)

### ActivationDelay

```
float32 ActivationDelay
```

How long after joystick enabled for touch (0.0 will disable this feature)

### bPreventRecenter

```
bool bPreventRecenter
```

Whether to prevent joystick re-center

### StartupDelay

```
float32 StartupDelay
```

Delay at startup before virtual joystick is drawn

### Controls

```
TArray<FTouchInputControl> Controls STATIC FUNCTIONS StaticClass static UClass UTouchInterface::StaticClass()
```
