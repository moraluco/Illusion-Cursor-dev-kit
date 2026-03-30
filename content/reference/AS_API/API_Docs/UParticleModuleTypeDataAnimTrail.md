# UParticleModuleTypeDataAnimTrail

**Visibility:** public

## Inheritance

UParticleModuleTypeDataBase → UParticleModuleTypeDataAnimTrail → RENDERING → DistanceTessellationStepSize

## Description

float32 DistanceTessellationStepSize

The distance step size for tessellation.  # Tessellation Points = TruncToInt((Distance Between Spawned Particles) / DistanceTessellationStepSize)). If 0 then there is no distance tessellation.

TangentTessellationStepSize float32 TangentTessellationStepSize

The tangent scalar for tessellation.  This is the degree change in the tangent direction [0...180] required to warrant an additional tessellation point. If 0 then there is no tangent tessellation.

WidthTessellationStepSize float32 WidthTessellationStepSize

The width step size for tessellation.  This is the number of world units change in the width required to warrant an additional tessellation point. If 0 then there is no width tessellation.

TilingDistance float32 TilingDistance

The (estimated) covered distance to tile the 2nd UV set at.  If 0.0, a second UV set will not be passed in.

## FUNCTIONS

### SetbEnablePreviousTangentRecalculation

```
void SetbEnablePreviousTangentRecalculation(bool Value)
```

SetbTangentRecalculationEveryFrame

### void SetbTangentRecalculationEveryFrame

```
void SetbTangentRecalculationEveryFrame(bool Value)
```

SetbDeadTrailsOnDeactivate

### void SetbDeadTrailsOnDeactivate

```
void SetbDeadTrailsOnDeactivate(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleTypeDataAnimTrail::StaticClass()
```
