# AVolume

**Visibility:** public

## Inheritance

ABrush → AVolume → AAudioVolume → ABlockingVolume → ACameraBlockingVolume → ACullDistanceVolume

## Description

and 17 other children

An editable 3D volume placed in a level. Different types of volumes perform different functions @see https://​docs​.unrealengine​.com​/latest​/INT​/Engine​/Actors​/Volumes

## VARIABLES

### Bounds

```
const FBoxSphereBounds Bounds FUNCTIONS EncompassesPoint bool EncompassesPoint(FVector Point, float32 SphereRadius = 0.f)const
```

EncompassesPoint

### bool EncompassesPoint

```
bool EncompassesPoint(FVector Point, float32 SphereRadius, float32& OutDistanceToPoint)const
```

SetBrushColor

### void SetBrushColor

```
void SetBrushColor(FLinearColor InBrushColor)
```

GetBounds

### FBoxSphereBounds GetBounds

```
FBoxSphereBounds GetBounds()const STATIC FUNCTIONS
```

Spawn

### static AVolume AVolume::Spawn

```
static AVolume AVolume::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AVolume::StaticClass

```
static UClass AVolume::StaticClass()
```
