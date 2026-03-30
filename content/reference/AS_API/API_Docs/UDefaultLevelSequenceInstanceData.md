# UDefaultLevelSequenceInstanceData

**Visibility:** public

## Inheritance

UObject → UDefaultLevelSequenceInstanceData

## Description

Default instance data class that level sequences understand. Implements IMovieSceneTransformOrigin.

## GENERAL

### TransformOrigin

```
FTransform TransformOrigin
```

Specifies a transform that offsets all absolute transform sections in this sequence. Will compound with attach tracks. Scale is ignored. Not applied to Relative or Additive sections.

### TransformOriginActor

```
AActor TransformOriginActor
```

When set, this actor's world position will be used as the transform origin for all absolute transform sections

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDefaultLevelSequenceInstanceData::StaticClass()
```
