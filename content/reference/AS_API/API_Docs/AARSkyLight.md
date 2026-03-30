# AARSkyLight

**Visibility:** public

## Inheritance

ASkyLight → AARSkyLight

## Description

This sky light class forces a refresh of the cube map data when an AR environment probe changes

AR AUGMENTEDREALITY|SKYLIGHT SetEnvironmentCaptureProbe void SetEnvironmentCaptureProbe( UAREnvironmentCaptureProbe 	InCaptureProbe 	)

Sets the environment capture probe that this sky light is driven by

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AARSkyLight AARSkyLight::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AARSkyLight::StaticClass

```
static UClass AARSkyLight::StaticClass()
```
