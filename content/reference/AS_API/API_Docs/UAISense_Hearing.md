# UAISense_Hearing

**Visibility:** public

## Inheritance

UAISense → UAISense_Hearing

## AI \| PERCEPTION

### ReportNoiseEvent

```
static void UAISense_Hearing::ReportNoiseEvent(FVector NoiseLocation, float32 Loudness = 1.000000, AActor Instigator = nullptr, float32 MaxRange = 0.000000, FName Tag = NAME_None)
```

Report a noise event.

**Parameters**

NoiseLocation
FVector

Location of the noise.

Loudness
float32

Loudness of the noise. If MaxRange is non-zero, modifies MaxRange, otherwise modifies the squared distance of the sensor's range.

Instigator
AActor

Actor that triggered the noise.

MaxRange
float32

Max range at which the sound can be heard, multiplied by Loudness. Values <= 0 mean no limit (still limited by listener's range however).

Tag
FName

Identifier for the event.

STATIC FUNCTIONS
StaticClass
static UClass UAISense_Hearing::StaticClass()
