# URig

**Visibility:** public

## Inheritance

UObject → URig

## Description

URig : that has rigging data for skeleton - used for retargeting - support to share different animations

## RIG

### Nodes

```
TArray<FNode> Nodes
```

Skeleton bone tree

each contains name and parent index*

### TransformBases

```
TArray<FTransformBase> TransformBases Skeleton bone tree
```

each contains name and parent index*

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URig::StaticClass()
```
