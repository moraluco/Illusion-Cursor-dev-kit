# APrecomputedVisibilityOverrideVolume

**Visibility:** public

## Inheritance

AVolume → APrecomputedVisibilityOverrideVolume → PRECOMPUTEDVISIBILITYOVERRIDEVOLUME → OverrideInvisibleActors

## Description

TArray<TObjectPtr<AActor>> OverrideInvisibleActors

Array of actors that will always be considered invisible by Precomputed Visibility when viewed from inside this volume.

OverrideInvisibleLevels TArray<FName> OverrideInvisibleLevels

Array of level names whose actors will always be considered invisible by Precomputed Visibility when viewed from inside this volume.

OverrideVisibleActors TArray<TObjectPtr<AActor>> OverrideVisibleActors

Array of actors that will always be considered visible by Precomputed Visibility when viewed from inside this volume.

## Members

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static APrecomputedVisibilityOverrideVolume APrecomputedVisibilityOverrideVolume::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass APrecomputedVisibilityOverrideVolume::StaticClass()
```
