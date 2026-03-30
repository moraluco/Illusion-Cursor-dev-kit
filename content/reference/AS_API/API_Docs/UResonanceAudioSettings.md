# UResonanceAudioSettings

**Visibility:** public

## Inheritance

UObject → UResonanceAudioSettings → GENERAL → QualityMode

## Description

ERaQualityMode QualityMode

Global Quality mode to use for directional sound sources.

GlobalReverbPreset FSoftObjectPath GlobalReverbPreset

Default settings for global reverb: This is overridden when a player enters Audio Volumes.

GlobalSourcePreset FSoftObjectPath GlobalSourcePreset

Default settings for global source settings

## REVERB

### OutputSubmix

```
FSoftObjectPath OutputSubmix
```

Reference to submix where reverb plugin audio is routed.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UResonanceAudioSettings::StaticClass()
```
