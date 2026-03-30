# ANavigationData

**Visibility:** public

## Inheritance

AActor → ANavigationData → AAbstractNavData → ANavigationGraph → ARecastNavMesh

## Description

Represents abstract Navigation Data (sub-classed as NavMesh, NavGraph, etc) Used as a common interface for all navigation types handled by NavigationSystem

## RUNTIME

### ObservedPathsTickInterval

```
float32 ObservedPathsTickInterval
```

all observed paths will be processed every ObservedPathsTickInterval seconds

### RuntimeGeneration

```
ERuntimeGenerationType RuntimeGeneration
```

Navigation data runtime generation options

---

## FUNCTIONS

### SetbForceRebuildOnLoad

```
void SetbForceRebuildOnLoad(bool Value)
```

SetbAutoDestroyWhenNoNavigation

### void SetbAutoDestroyWhenNoNavigation

```
void SetbAutoDestroyWhenNoNavigation(bool Value)
```

SetbCanBeMainNavData

### void SetbCanBeMainNavData

```
void SetbCanBeMainNavData(bool Value)
```

SetbEnableDrawing

### void SetbEnableDrawing

```
void SetbEnableDrawing(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ANavigationData ANavigationData::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ANavigationData::StaticClass

```
static UClass ANavigationData::StaticClass()
```
