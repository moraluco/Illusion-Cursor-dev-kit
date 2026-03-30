# UCameraShakeBase

**Visibility:** public

## Inheritance

UObject → UCameraShakeBase → UDefaultCameraShakeBase → UMatineeCameraShake → UTestCameraShake

## Description

Base class for a camera shake. A camera shake contains a root shake "pattern" which is the object that contains the actual logic driving how the camera is shaken. Keeping the two separate makes it possible to completely change how a shake works without having to create a completely different asset.

## CAMERASHAKE

### ShakeScale

```
float32 ShakeScale
```

The overall scale to apply to the shake. Only valid when the shake is active.

### bSingleInstance

```
bool bSingleInstance
```

If true to only allow a single instance of this shake class to play at any given time.  Subsequent attempts to play this shake will simply restart the timer.

---

## CAMERASHAKEPATTERN

### RootShakePattern

```
UCameraShakePattern RootShakePattern
```

The root pattern for this camera shake

---

## CAMERASHAKE

### SetRootShakePattern

```
void SetRootShakePattern(UCameraShakePattern InPattern)
```

Sets the root pattern of this camera shake

### GetRootShakePattern

```
UCameraShakePattern GetRootShakePattern()const
```

Gets the root pattern of this camera shake

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCameraShakeBase::StaticClass()
```
