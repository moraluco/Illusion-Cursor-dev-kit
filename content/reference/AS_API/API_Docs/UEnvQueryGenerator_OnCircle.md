# UEnvQueryGenerator_OnCircle

**Visibility:** public

## Inheritance

UEnvQueryGenerator_ProjectedPoints → UEnvQueryGenerator_OnCircle → GENERATOR → ArcAngle

## Description

FAIDataProviderFloatValue ArcAngle

If you generate items on a piece of circle you define angle of Arc cut here

SpaceBetween FAIDataProviderFloatValue SpaceBetween

items will be generated on a circle this much apart

NumberOfPoints FAIDataProviderIntValue NumberOfPoints

this many items will be generated on a circle

PointOnCircleSpacingMethod EPointOnCircleSpacingMethod PointOnCircleSpacingMethod

how we are choosing where the points are in the circle

ArcDirection FEnvDirection ArcDirection

If you generate items on a piece of circle you define direction of Arc cut here

CircleRadius FAIDataProviderFloatValue CircleRadius

max distance of path between point and context

CircleCenter TSubclassOf<UEnvQueryContext> CircleCenter

context

bIgnoreAnyContextActorsWhenGeneratingCircle bool bIgnoreAnyContextActorsWhenGeneratingCircle

ignore tracing into context actors when generating the circle

CircleCenterZOffset FAIDataProviderFloatValue CircleCenterZOffset

## Members

### offset

```
context offset
```
### TraceData

```
FEnvTraceData TraceData
```

horizontal trace for nearest obstacle

---

## FUNCTIONS

### SetbDefineArc

```
void SetbDefineArc(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEnvQueryGenerator_OnCircle::StaticClass()
```
