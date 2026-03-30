# UWeightMapSetProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UWeightMapSetProperties → UOffsetWeightMapSetProperties → USmoothWeightMapSetProperties

## Description

Basic Tool Property Set that allows for selecting from a list of FNames (that we assume are Weight Maps)

## WEIGHTMAP

### bInvertWeightMap

```
bool bInvertWeightMap
```
### WeightMap

```
FName WeightMap
```

Select vertex weight map. If configured, the weight map value will be sampled to modulate displacement intensity.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UWeightMapSetProperties::StaticClass()
```
