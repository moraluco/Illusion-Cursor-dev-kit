# USoundfieldEndpointSubmix

**Visibility:** public

## Inheritance

USoundSubmixBase → USoundfieldEndpointSubmix

## Description

Sound Submix class meant for sending soundfield-encoded audio to an external endpoint, such as a hardware binaural renderer that supports ambisonics.

## ENDPOINT

### EndpointSettings

```
USoundfieldEndpointSettingsBase EndpointSettings
```
### SoundfieldEndpointType

```
FName SoundfieldEndpointType
```

Currently used format.

---

## SOUNDFIELD

### SoundfieldEffectChain

```
TArray<TObjectPtr<USoundfieldEffectBase>> SoundfieldEffectChain EncodingSettings USoundfieldEncodingSettingsBase EncodingSettings STATIC FUNCTIONS StaticClass static UClass USoundfieldEndpointSubmix::StaticClass()
```
