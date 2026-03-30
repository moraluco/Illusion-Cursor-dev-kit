# UAtmosphericFogComponent

**Visibility:** public

## Inheritance

USkyAtmosphereComponent → UAtmosphericFogComponent

## Description

Used to create fogging effects such as clouds.

## RENDERING \| COMPONENTS \| ATMOSPHERICFOG

### SetDistanceScale

```
void SetDistanceScale(float32 NewDistanceScale)
```

Deprecated

### DisableSunDisk

```
void DisableSunDisk(bool NewSunDisk)
```

Deprecated

### SetAltitudeScale

```
void SetAltitudeScale(float32 NewAltitudeScale)
```

Deprecated

### SetDefaultBrightness

```
void SetDefaultBrightness(float32 NewBrightness)
```

Deprecated

### SetDefaultLightColor

```
void SetDefaultLightColor(FLinearColor NewLightColor)
```

Deprecated

### SetDensityMultiplier

```
void SetDensityMultiplier(float32 NewDensityMultiplier)
```

Deprecated

### SetDensityOffset

```
void SetDensityOffset(float32 NewDensityOffset)
```

Deprecated

### SetDistanceOffset

```
void SetDistanceOffset(float32 NewDistanceOffset)
```

Deprecated

### DisableGroundScattering

```
void DisableGroundScattering(bool NewGroundScattering)
```

Deprecated

### SetFogMultiplier

```
void SetFogMultiplier(float32 NewFogMultiplier)
```

Deprecated

### SetPrecomputeParams

```
void SetPrecomputeParams(float32 DensityHeight, int MaxScatteringOrder, int InscatterAltitudeSampleNum)
```

Deprecated

### SetStartDistance

```
void SetStartDistance(float32 NewStartDistance)
```

Deprecated

### SetSunMultiplier

```
void SetSunMultiplier(float32 NewSunMultiplier)
```

Deprecated

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UAtmosphericFogComponent UAtmosphericFogComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UAtmosphericFogComponent UAtmosphericFogComponent::GetOrCreate

```
static UAtmosphericFogComponent UAtmosphericFogComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UAtmosphericFogComponent UAtmosphericFogComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UAtmosphericFogComponent::StaticClass

```
static UClass UAtmosphericFogComponent::StaticClass()
```
