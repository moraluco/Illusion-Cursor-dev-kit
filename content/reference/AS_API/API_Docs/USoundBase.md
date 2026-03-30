# USoundBase

**Visibility:** public

## Inheritance

UObject → USoundBase → UDialogueSoundWaveProxy → USoundCue → USoundWave

## Description

The base class for a playable sound object

## ADVANCED

### AssetUserData

```
TArray<TObjectPtr<UAssetUserData>> AssetUserData
```

Array of user data stored with the asset

---

## ATTENUATION

### AttenuationSettings

```
USoundAttenuation AttenuationSettings
```

Attenuation settings package for the sound

---

## DEVELOPER

### Duration

```
float32 Duration
```

Duration of sound in seconds.

### MaxDistance

```
float32 MaxDistance
```

The max distance of the asset, as determined by attenuation settings.

### TotalSamples

```
float32 TotalSamples
```

Total number of samples (in the thousands). Useful as a metric to analyze the relative size of a given sound asset in content browser.

---

## EFFECTS \| SOURCE

### SourceEffectChain

```
USoundEffectSourcePresetChain SourceEffectChain
```

The source effect chain to use for this sound.

### BusSends

```
TArray<FSoundSourceBusSendInfo> BusSends
```

This sound will send its audio output to this list of buses if there are bus instances playing after source effects are processed.

### bEnableBusSends

```
bool bEnableBusSends
```

Whether or not to enable sending this audio's output to buses.

### PreEffectBusSends

```
TArray<FSoundSourceBusSendInfo> PreEffectBusSends
```

This sound will send its audio output to this list of buses if there are bus instances playing before source effects are processed.

---

## EFFECTS \| SUBMIX

### SoundSubmixObject

```
USoundSubmixBase SoundSubmixObject
```

Submix to route sound output to. If unset, falls back to referenced SoundClass submix.  If SoundClass submix is unset, sends to the 'Master Submix' as set in the 'Audio' category of Project Settings'.

### SoundSubmixSends

```
TArray<FSoundSubmixSendInfo> SoundSubmixSends
```

Array of submix sends to which a prescribed amount (see 'Send Level') of this sound is sent.

---

## SOUND

### SoundClassObject

```
USoundClass SoundClassObject
```

Sound class this sound belongs to

### VOICE MANAGEMENT

```
VOICE MANAGEMENT VirtualizationMode EVirtualizationMode VirtualizationMode
```

Virtualization behavior, determining if a sound may revive and how it continues playing when culled or evicted (limited to looping sounds).

### VOICE MANAGEMENT|CONCURRENCY

```
VOICE MANAGEMENT|CONCURRENCY ConcurrencySet TSet<TObjectPtr<USoundConcurrency>> ConcurrencySet
```

Set of concurrency settings to observe (if override is set to false).  Sound must pass all concurrency settings to play.

### bOverrideConcurrency

```
bool bOverrideConcurrency
```

Whether or not to override the sound concurrency object with local concurrency settings.

### ConcurrencyOverrides

```
FSoundConcurrencySettings ConcurrencyOverrides
```

If Override Concurrency is true, concurrency settings to use.

### VOICE MANAGEMENT|PRIORITY

```
VOICE MANAGEMENT|PRIORITY bBypassVolumeScaleForPriority bool bBypassVolumeScaleForPriority
```

Bypass volume weighting priority upon evaluating whether sound should remain active when max channel count is met (See platform Audio Settings).

### Priority

```
float32 Priority
```

Used to determine whether sound can play or remain active if channel limit is met, where higher value is higher priority (see platform's Audio Settings 'Max Channels' property). Unless bypassed, value is weighted with the final volume of the sound to produce final runtime priority value.

---

## FUNCTIONS

### SetbEnableBaseSubmix

```
void SetbEnableBaseSubmix(bool Value)
```

GetbOverrideConcurrency

### bool GetbOverrideConcurrency

```
bool GetbOverrideConcurrency()const SetbOverrideConcurrency
```

void SetbOverrideConcurrency(

### bool 	Value

```
bool 	Value 	)
```

GetbEnableBusSends

### bool GetbEnableBusSends

```
bool GetbEnableBusSends()const SetbEnableBusSends
```

void SetbEnableBusSends(

### bool 	Value

```
bool 	Value 	)
```

SetbDebug

### void SetbDebug

```
void SetbDebug(bool Value)
```

SetbEnableSubmixSends

### void SetbEnableSubmixSends

```
void SetbEnableSubmixSends(bool Value)
```

GetbBypassVolumeScaleForPriority

### bool GetbBypassVolumeScaleForPriority

```
bool GetbBypassVolumeScaleForPriority()const SetbBypassVolumeScaleForPriority
```

void SetbBypassVolumeScaleForPriority(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundBase::StaticClass()
```
