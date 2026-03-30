# ADatasmithAreaLightActor

**Visibility:** public

## Inheritance

AActor → ADatasmithAreaLightActor → LIGHT → IESTexture

## Description

UTextureLightProfile IESTexture LightType EDatasmithAreaLightActorType LightType LightShape EDatasmithAreaLightActorShape LightShape Dimensions FVector2D Dimensions Intensity float32 Intensity IntensityUnits ELightUnits IntensityUnits Color FLinearColor Color Temperature float32 Temperature SourceRadius float32 SourceRadius bUseIESBrightness bool bUseIESBrightness IESBrightnessScale float32 IESBrightnessScale Rotation FRotator Rotation SourceLength float32 SourceLength AttenuationRadius float32 AttenuationRadius SpotlightInnerAngle float32 SpotlightInnerAngle SpotlightOuterAngle float32 SpotlightOuterAngle

## MOBILITY

### Mobility

```
EComponentMobility Mobility
```
### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static ADatasmithAreaLightActor ADatasmithAreaLightActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass ADatasmithAreaLightActor::StaticClass()
```
