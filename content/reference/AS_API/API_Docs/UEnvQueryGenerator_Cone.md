# UEnvQueryGenerator_Cone

**Visibility:** public

## Inheritance

UEnvQueryGenerator_ProjectedPoints → UEnvQueryGenerator_Cone → GENERATOR → ConeDegrees

## Description

FAIDataProviderFloatValue ConeDegrees

Maximum degrees of the generated cone

AngleStep FAIDataProviderFloatValue AngleStep

The step of the angle increase. Angle step must be >=1 Smaller values generate less items

Range FAIDataProviderFloatValue Range

### Generation distance

```
Generation distance
```

CenterActor

### TSubclassOf<UEnvQueryContext> CenterActor

```
TSubclassOf<UEnvQueryContext> CenterActor
```

The actor (or actors) that will generate a cone in their facing direction

## Members

### AlignedPointsDistance

```
FAIDataProviderFloatValue AlignedPointsDistance
```

Distance between each point of the same angle

---

## FUNCTIONS

### SetbIncludeContextLocation

```
void SetbIncludeContextLocation(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEnvQueryGenerator_Cone::StaticClass()
```
