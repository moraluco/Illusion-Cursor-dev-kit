# UHLODLayer

**Visibility:** public

## Inheritance

UObject → UHLODLayer → HLOD → HLODBuilderClass

## Description

TSubclassOf<UHLODBuilder> HLODBuilderClass

## Members

### class

```
HLODBuilder class
```
### CellSize

```
int CellSize
```

Cell size of the runtime grid created to encompass HLOD actors generated for this HLOD Layer

### LoadingRange

```
float LoadingRange
```

Loading range of the runtime grid created to encompass HLOD actors generated for this HLOD Layer

### ParentLayer

```
TSoftObjectPtr<UHLODLayer> ParentLayer
```

HLOD Layer to assign to the generated HLOD actors

### LayerType

```
EHLODLayerType LayerType
```

Type of HLOD generation to use

---

## FUNCTIONS

### SetbIsSpatiallyLoaded

```
void SetbIsSpatiallyLoaded(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UHLODLayer::StaticClass()
```
