# UNiagaraDataInterfaceAudioPlayer

**Visibility:** public

## Inheritance

UNiagaraDataInterface → UNiagaraDataInterfaceAudioPlayer

## Description

This Data Interface can be used to play one-shot audio effects driven by particle data.

## AUDIO

### Attenuation

```
USoundAttenuation Attenuation
```

Optional sound attenuation setting to use

### Concurrency

```
USoundConcurrency Concurrency
```

Optional sound concurrency setting to use

### bOnlyActiveDuringGameplay

```
bool bOnlyActiveDuringGameplay
```

If true then this data interface only processes sounds during active gameplay. This is useful when you are working in the preview window and the sounds annoy you.

### bLimitPlaysPerTick

```
bool bLimitPlaysPerTick
```
### MaxPlaysPerTick

```
int MaxPlaysPerTick
```

This sets the max number of sounds played each tick.  If more particles try to play a sound in a given tick, then it will play sounds until the limit is reached and discard the rest.  The particles to discard when over the limit are not chosen in a deterministic way.

### bStopWhenComponentIsDestroyed

```
bool bStopWhenComponentIsDestroyed
```

If false then it the audio component keeps playing after the niagara component was destroyed. Looping sounds are always stopped when the component is destroyed.

### SoundToPlay

```
USoundBase SoundToPlay
```

Reference to the audio asset to play

---

## PARAMETERS

### ParameterNames

```
TArray<FName> ParameterNames
```

A set of parameter names that can be referenced via index when setting sound cue parameters on persistent audio

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceAudioPlayer::StaticClass()
```
