# UPostProcessComponent

**Visibility:** public

## Inheritance

USceneComponent → UPostProcessComponent

## Description

PostProcessComponent. Enables Post process controls for blueprints.  Will use a parent UShapeComponent to provide volume data if available.

## POSTPROCESSVOLUME

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

set this to false to use the parent shape component as volume bounds. True affects the whole world regardless.

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

Get

### static UPostProcessComponent UPostProcessComponent::Get

```
static UPostProcessComponent UPostProcessComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPostProcessComponent UPostProcessComponent::GetOrCreate

```
static UPostProcessComponent UPostProcessComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPostProcessComponent UPostProcessComponent::Create

```
static UPostProcessComponent UPostProcessComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPostProcessComponent::StaticClass

```
static UClass UPostProcessComponent::StaticClass()
```
