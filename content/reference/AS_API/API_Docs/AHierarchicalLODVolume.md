# AHierarchicalLODVolume

**Visibility:** public

## Inheritance

AVolume → AHierarchicalLODVolume

## Description

An invisible volume used to manually define/create an HLOD cluster.

## Members

### VOLUME

```
HLOD VOLUME
```
### ApplyOnlyToSpecificHLODLevels

```
TArray<int> ApplyOnlyToSpecificHLODLevels
```

If set, this volume will only be applied to HLOD levels contained in the array.  If empty, it will apply to ALL HLOD levels

### bIncludeOverlappingActors

```
bool bIncludeOverlappingActors
```

When set this volume will incorporate actors which bounds overlap with the volume, otherwise only actors which are completely inside of the volume are incorporated

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static AHierarchicalLODVolume AHierarchicalLODVolume::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AHierarchicalLODVolume::StaticClass()
```
