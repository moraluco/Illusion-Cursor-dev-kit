# UParticleModuleTypeDataRibbon

**Visibility:** public

## Inheritance

UParticleModuleTypeDataBase → UParticleModuleTypeDataRibbon → RENDERING → DistanceTessellationStepSize

## Description

float32 DistanceTessellationStepSize

The distance step size for tessellation.  # Tessellation Points = TruncToInt((Distance Between Spawned Particles) / DistanceTessellationStepSize))

TilingDistance float32 TilingDistance

The (estimated) covered distance to tile the 2nd UV set at.  If 0.0, a second UV set will not be passed in.

TangentTessellationScalar float32 TangentTessellationScalar

The tangent scalar for tessellation.  Angles between tangent A and B are mapped to [0.0f .. 1.0f] This is then multiplied by TangentTessellationScalar to give the number of points to tessellate

## SPAWN

### TangentSpawningScalar

```
float32 TangentSpawningScalar
```

The tangent scalar for spawning.  Angles between tangent A and B are mapped to [0.0f .. 1.0f] This is then multiplied by TangentTessellationScalar to give the number of particles to spawn

---

## TRAIL

### RenderAxis

```
ETrailsRenderAxisOption RenderAxis
```

The 'render' axis for the trail (what axis the trail is stretched out on) Trails_CameraUp - Traditional camera-facing trail.  Trails_SourceUp - Use the up axis of the source for each spawned particle.  Trails_WorldUp  - Use the world up axis.

### MaxParticleInTrailCount

```
int MaxParticleInTrailCount
```

Max particles per trail

### MaxTrailCount

```
int MaxTrailCount
```

The number of live trails

### SheetsPerTrail

```
int SheetsPerTrail
```

The number of sheets to render for the trail.

---

## FUNCTIONS

### SetbRenderGeometry

```
void SetbRenderGeometry(bool Value)
```

SetbDeadTrailsOnSourceLoss

### void SetbDeadTrailsOnSourceLoss

```
void SetbDeadTrailsOnSourceLoss(bool Value)
```

SetbClipSourceSegement

### void SetbClipSourceSegement

```
void SetbClipSourceSegement(bool Value)
```

SetbEnablePreviousTangentRecalculation

### void SetbEnablePreviousTangentRecalculation

```
void SetbEnablePreviousTangentRecalculation(bool Value)
```

SetbTangentRecalculationEveryFrame

### void SetbTangentRecalculationEveryFrame

```
void SetbTangentRecalculationEveryFrame(bool Value)
```

SetbSpawnInitialParticle

### void SetbSpawnInitialParticle

```
void SetbSpawnInitialParticle(bool Value)
```

SetbDeadTrailsOnDeactivate

### void SetbDeadTrailsOnDeactivate

```
void SetbDeadTrailsOnDeactivate(bool Value)
```

SetbRenderSpawnPoints

### void SetbRenderSpawnPoints

```
void SetbRenderSpawnPoints(bool Value)
```

SetbRenderTangents

### void SetbRenderTangents

```
void SetbRenderTangents(bool Value)
```

SetbRenderTessellation

### void SetbRenderTessellation

```
void SetbRenderTessellation(bool Value)
```

SetbEnableTangentDiffInterpScale

### void SetbEnableTangentDiffInterpScale

```
void SetbEnableTangentDiffInterpScale(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleTypeDataRibbon::StaticClass()
```
