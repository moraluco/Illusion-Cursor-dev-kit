# USynthComponentToneGenerator

**Visibility:** public

## Inheritance

USynthComponent → USynthComponentToneGenerator → ATTENUATION → DistanceRange

## Description

FVector2D DistanceRange

A distance range overwhich to apply distance attenuation using the supplied curve.

AttenuationDbAtMaxRange float32 AttenuationDbAtMaxRange

An attenuation, in decibels, to apply to the sound at max range.

DistanceAttenuationCurve FRuntimeFloatCurve DistanceAttenuationCurve

A distance attenuation curve to use to attenuate the audio.

## Members

### GENERATOR

```
TONE GENERATOR
```
### Volume

```
float32 Volume
```

The linear volume of the tone generator.

### Frequency

```
float32 Frequency
```

The frequency (in hz) of the tone generator.

### TONE GENERATOR

```
TONE GENERATOR SetVolume void SetVolume(float32 InVolume)
```

Sets the volume of the tone generator

### SetFrequency

```
void SetFrequency(float32 InFrequency)
```

Sets the frequency of the tone generator

---

## FUNCTIONS

### GetVolume

```
const float32& GetVolume()const
```

GetFrequency

### const float32& GetFrequency

```
const float32& GetFrequency()const STATIC FUNCTIONS
```

Get

### static USynthComponentToneGenerator USynthComponentToneGenerator::Get

```
static USynthComponentToneGenerator USynthComponentToneGenerator::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static USynthComponentToneGenerator USynthComponentToneGenerator::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static USynthComponentToneGenerator USynthComponentToneGenerator::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass USynthComponentToneGenerator::StaticClass()
```
