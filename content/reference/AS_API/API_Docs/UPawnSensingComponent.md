# UPawnSensingComponent

**Visibility:** public

## Inheritance

UActorComponent → UPawnSensingComponent

## Description

SensingComponent encapsulates sensory (ie sight and hearing) settings and functionality for an Actor, allowing the actor to see/hear Pawns in the world. It does nothing on network clients.

## AI

### PeripheralVisionAngle

```
float32 PeripheralVisionAngle
```

How far to the side AI can see, in degrees. Use SetPeripheralVisionAngle to change the value at runtime.

### LOSHearingThreshold

```
float32 LOSHearingThreshold
```

Max distance at which a makenoise(1.0) loudness sound can be heard if unoccluded (LOSHearingThreshold should be > HearingThreshold)

### SightRadius

```
float32 SightRadius
```

Maximum sight distance.

### HearingMaxSoundAge

```
float32 HearingMaxSoundAge
```

Max age of sounds we can hear. Should be greater than SensingInterval, or you might miss hearing some sounds!

### SensingInterval

```
float32 SensingInterval
```

Amount of time between pawn sensing updates. Use SetSensingInterval() to adjust this at runtime. A value <= 0 prevents any updates.

### HearingThreshold

```
float32 HearingThreshold
```

Max distance at which a makenoise(1.0) loudness sound can be heard, regardless of occlusion

### bSeePawns

```
bool bSeePawns
```

If true, we will perform visibility tests and will trigger notifications when a Pawn is visible. Default: true

### bOnlySensePlayers

```
bool bOnlySensePlayers
```

If true, will only sense player-controlled pawns in the world. Default: true

### bEnableSensingUpdates

```
bool bEnableSensingUpdates
```

If true, component will perform sensing updates. At runtime change this using SetSensingUpdatesEnabled().

### bHearNoises

```
bool bHearNoises
```

If true, we will perform audibility tests and will be notified when a Pawn makes a noise that can be heard. Default: true IMPORTANT NOTE: If we can see pawns (bSeePawns is true), and the pawn is visible, noise notifications are not triggered.

---

## VARIABLES

### OnSeePawn

```
FSeePawnDelegate__PawnSensingComponent OnSeePawn
```

Delegate to execute when we see a Pawn.

PeripheralVisionCosine

### PeripheralVisionCosine

```
const float32 PeripheralVisionCosine
```

Cosine of limits of peripheral vision. Computed from PeripheralVisionAngle.

### OnHearNoise

```
FHearNoiseDelegate__PawnSensingComponent OnHearNoise
```

Delegate to execute when we hear a noise from a Pawn's PawnNoiseEmitterComponent.

---

## AI \| COMPONENTS \| PAWNSENSING

### SetSensingUpdatesEnabled

```
void SetSensingUpdatesEnabled(bool bEnabled)
```

Enables or disables sensing updates. The timer is reset in either case.

### GetPeripheralVisionCosine

```
float32 GetPeripheralVisionCosine()const
```

SetPeripheralVisionAngle

### void SetPeripheralVisionAngle

```
void SetPeripheralVisionAngle(float32 NewPeripheralVisionAngle)
```

Sets PeripheralVisionAngle. Calculates PeripheralVisionCosine from PeripheralVisionAngle

### SetSensingInterval

```
void SetSensingInterval(float32 NewSensingInterval)
```

Changes the SensingInterval.  If we are currently waiting for an interval, this can either extend or shorten that interval.  A value <= 0 prevents any updates.

### GetPeripheralVisionAngle

```
float32 GetPeripheralVisionAngle()const
```

---

## FUNCTIONS

### GetbEnableSensingUpdates

```
bool GetbEnableSensingUpdates()const
```

SetbEnableSensingUpdates

### void SetbEnableSensingUpdates

```
void SetbEnableSensingUpdates(bool Value)
```

GetbOnlySensePlayers

### bool GetbOnlySensePlayers

```
bool GetbOnlySensePlayers()const GetSensingInterval
```

const float32& GetSensingInterval() const

### SetbOnlySensePlayers

```
void SetbOnlySensePlayers(bool Value)
```

GetbSeePawns

### bool GetbSeePawns

```
bool GetbSeePawns()const SetbSeePawns
```

void SetbSeePawns(

### bool 	Value

```
bool 	Value 	)
```

GetbHearNoises

### bool GetbHearNoises

```
bool GetbHearNoises()const SetbHearNoises
```

void SetbHearNoises(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPawnSensingComponent UPawnSensingComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPawnSensingComponent UPawnSensingComponent::GetOrCreate

```
static UPawnSensingComponent UPawnSensingComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPawnSensingComponent UPawnSensingComponent::Create

```
static UPawnSensingComponent UPawnSensingComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPawnSensingComponent::StaticClass

```
static UClass UPawnSensingComponent::StaticClass()
```
