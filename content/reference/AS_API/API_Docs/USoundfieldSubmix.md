# USoundfieldSubmix

**Visibility:** public

## Inheritance

USoundSubmixWithParentBase → USoundfieldSubmix

## Description

Sound Submix class meant for use with soundfield formats, such as Ambisonics.

## SOUNDFIELD

### EncodingSettings

```
USoundfieldEncodingSettingsBase EncodingSettings
```

Which encoding settings to use the sound field.

### SoundfieldEffectChain

```
TArray<TObjectPtr<USoundfieldEffectBase>> SoundfieldEffectChain
```

Soundfield effect chain to use for the sound field.

### SoundfieldEncodingFormat

```
FName SoundfieldEncodingFormat
```

Currently used format.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundfieldSubmix::StaticClass()
```
