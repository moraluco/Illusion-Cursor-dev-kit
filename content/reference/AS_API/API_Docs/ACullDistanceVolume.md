# ACullDistanceVolume

**Visibility:** public

## Inheritance

AVolume → ACullDistanceVolume → CULLDISTANCEVOLUME

## Description

bEnabled bool bEnabled

Whether the volume is currently enabled or not.

CullDistances TArray<FCullDistanceSizePair> CullDistances

Array of size and cull distance pairs. The code will calculate the sphere diameter of a primitive's BB and look for a best fit in this array to determine which cull distance to use.

## FUNCTIONS

### SetbEnabled

```
void SetbEnabled(bool Value)
```

GetbEnabled

### bool GetbEnabled

```
bool GetbEnabled()const STATIC FUNCTIONS
```

Spawn

### static ACullDistanceVolume ACullDistanceVolume::Spawn

```
static ACullDistanceVolume ACullDistanceVolume::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ACullDistanceVolume::StaticClass

```
static UClass ACullDistanceVolume::StaticClass()
```
