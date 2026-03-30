# UEnvQueryGenerator_Donut

**Visibility:** public

## Inheritance

UEnvQueryGenerator_ProjectedPoints → UEnvQueryGenerator_Donut → GENERATOR → OuterRadius

## Description

FAIDataProviderFloatValue OuterRadius

max distance between point and context

NumberOfRings FAIDataProviderIntValue NumberOfRings

number of rings to generate

PointsPerRing FAIDataProviderIntValue PointsPerRing

number of items to generate for each ring

ArcDirection FEnvDirection ArcDirection

If you generate items on a piece of circle you define direction of Arc cut here

ArcAngle FAIDataProviderFloatValue ArcAngle

If you generate items on a piece of circle you define angle of Arc cut here

bUseSpiralPattern bool bUseSpiralPattern

If true, the rings of the wheel will be rotated in a spiral pattern.  If false, they will all be at a zero rotation, looking more like the spokes on a wheel.

Center TSubclassOf<UEnvQueryContext> Center

context

InnerRadius FAIDataProviderFloatValue InnerRadius

min distance between point and context

## FUNCTIONS

### SetbDefineArc

```
void SetbDefineArc(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEnvQueryGenerator_Donut::StaticClass()
```
