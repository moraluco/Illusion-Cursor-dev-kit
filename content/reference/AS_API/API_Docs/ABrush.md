# ABrush

**Visibility:** public

## Inheritance

AActor → ABrush → ABrushShape → AVolume → BRUSH → BrushType

## Description

EBrushType BrushType

Type of brush

## BRUSHBUILDER

### BrushBuilder

```
UBrushBuilder BrushBuilder
```

---

## BRUSHSETTINGS

### ShadedVolumeOpacityValue

```
float32 ShadedVolumeOpacityValue
```

Value used to set the opacity for the shaded volume, between 0-1

---

## COLLISION

### BrushComponent

```
UBrushComponent BrushComponent FUNCTIONS SetbDisplayShadedVolume void SetbDisplayShadedVolume(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ABrush ABrush::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ABrush::StaticClass

```
static UClass ABrush::StaticClass()
```
