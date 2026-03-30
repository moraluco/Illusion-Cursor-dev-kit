# UPawnNoiseEmitterComponent

**Visibility:** public

## Inheritance

UActorComponent → UPawnNoiseEmitterComponent

## Description

PawnNoiseEmitterComponent tracks noise event data used by SensingComponents to hear a Pawn.  This component is intended to exist on either a Pawn or its Controller. It does nothing on network clients.

### NOISE SETTINGS

```
NOISE SETTINGS NoiseLifetime float32 NoiseLifetime
```

After this amount of time, new sound events will overwrite previous sounds even if they are not louder (allows old sounds to decay)

## AUDIO \| COMPONENTS \| PAWNNOISEEMITTER

### MakeNoise

```
void MakeNoise(AActor NoiseMaker, float32 Loudness, FVector NoiseLocation)
```

Cache noises instigated by the owning pawn for AI sensing

**Parameters**

NoiseMaker
AActor

is the actual actor which made the noise

Loudness
float32

is the relative loudness of the noise (0.0 to 1.0)

NoiseLocation
FVector

is the position of the noise

---

## FUNCTIONS

### SetbAIPerceptionSystemCompatibilityMode

```
void SetbAIPerceptionSystemCompatibilityMode(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPawnNoiseEmitterComponent UPawnNoiseEmitterComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPawnNoiseEmitterComponent UPawnNoiseEmitterComponent::GetOrCreate

```
static UPawnNoiseEmitterComponent UPawnNoiseEmitterComponent::GetOrCreate(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UPawnNoiseEmitterComponent UPawnNoiseEmitterComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UPawnNoiseEmitterComponent::StaticClass()
```
