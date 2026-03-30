# APostProcessVolume

**Visibility:** public

## Inheritance

AVolume → APostProcessVolume

## Description

for FPostprocessSettings

## POSTPROCESSVOLUMESETTINGS

### Priority

```
float32 Priority
```

Priority of this volume. In the case of overlapping volumes the one with the highest priority overrides the lower priority ones. The order is undefined if two or more overlapping volumes have the same priority.

### BlendRadius

```
float32 BlendRadius
```

World space radius around the volume that is used for blending (only if not unbound).

### BlendWeight

```
float32 BlendWeight
```

0:no effect, 1:full effect

### bEnabled

```
bool bEnabled
```

Whether this volume is enabled or not.

### bUnbound

```
bool bUnbound
```

Whether this volume covers the whole world, or just the area inside its bounds.

### Settings

```
FPostProcessSettings Settings
```

Post process settings to use for this volume.

---

## FUNCTIONS

### SetbEnabled

```
void SetbEnabled(bool Value)
```

GetbUnbound

### bool GetbUnbound

```
bool GetbUnbound()const SetbUnbound
```

void SetbUnbound(

### bool 	Value

```
bool 	Value 	)
```

GetbEnabled

### bool GetbEnabled

```
bool GetbEnabled()const STATIC FUNCTIONS
```

Spawn

### static APostProcessVolume APostProcessVolume::Spawn

```
static APostProcessVolume APostProcessVolume::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APostProcessVolume::StaticClass

```
static UClass APostProcessVolume::StaticClass()
```
