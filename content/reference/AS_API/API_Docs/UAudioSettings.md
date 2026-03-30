# UAudioSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UAudioSettings

## Description

Audio settings.

## AUDIO

### MaximumConcurrentStreams

```
int MaximumConcurrentStreams
```

How many streaming sounds can be played at the same time (if more are played they will be sorted by priority)

### DefaultMediaSoundClassName

```
FSoftObjectPath DefaultMediaSoundClassName
```

The SoundClass assigned to media player assets

### DefaultSoundConcurrencyName

```
FSoftObjectPath DefaultSoundConcurrencyName
```

The SoundConcurrency assigned to newly created sounds

### DefaultBaseSoundMix

```
FSoftObjectPath DefaultBaseSoundMix
```

The SoundMix to use as base when no other system has specified a Base SoundMix

### VoiPSoundClass

```
FSoftObjectPath VoiPSoundClass
```

Sound class to be used for the VOIP audio component

### GlobalMaxPitchScale

```
float32 GlobalMaxPitchScale
```

The value to use to clamp the max pitch scale

### DefaultSoundClassName

```
FSoftObjectPath DefaultSoundClassName
```

The SoundClass assigned to newly created sounds

### GlobalMinPitchScale

```
float32 GlobalMinPitchScale
```

The value to use to clamp the min pitch scale

### VoiPSampleRate

```
EVoiceSampleRate VoiPSampleRate
```

Sample rate used for voice over IP. VOIP audio is resampled to the application's sample rate on the receiver side.

---

## DEBUG

### DebugSounds

```
TArray<FSoundDebugEntry> DebugSounds
```

Sounds only packaged in non-shipped builds for debugging.

---

## DIALOGUE

### DialogueFilenameFormat

```
FString DialogueFilenameFormat
```

The format string to use when generating the filename for contexts within dialogue waves. This must generate unique names for your project.  Available format markers: * {DialogueGuid} - The GUID of the dialogue wave. Guaranteed to be unique and stable against asset renames.  * {DialogueHash} - The hash of the dialogue wave. Not guaranteed to be unique or stable against asset renames, however may be unique enough if combined with the dialogue name.  * {DialogueName} - The name of the dialogue wave. Not guaranteed to be unique or stable against asset renames, however may be unique enough if combined with the dialogue hash.  * {ContextId}  - The ID of the context. Guaranteed to be unique within its dialogue wave. Not guaranteed to be stable against changes to the context.  * {ContextIndex} - The index of the context within its parent dialogue wave. Guaranteed to be unique within its dialogue wave. Not guaranteed to be stable against contexts being removed.

---

## MIX

### EQSubmix

```
FSoftObjectPath EQSubmix
```

The submix through which all sounds set to use legacy EQ system are routed

### DefaultAudioBuses

```
TArray<FDefaultAudioBusSettings> DefaultAudioBuses
```

Array of AudioBuses that are automatically initialized when the AudioEngine is initialized

### BaseDefaultSubmix

```
FSoftObjectPath BaseDefaultSubmix
```

The default submix to use for implicit submix sends (i.e. if the base submix send is null or if a submix parent is null)

### ReverbSubmix

```
FSoftObjectPath ReverbSubmix
```

The submix through which all sounds set to use reverb are routed

### MasterSubmix

```
FSoftObjectPath MasterSubmix
```

The default submix through which all sounds are routed to. The root submix that outputs to audio hardware.

---

## QUALITY

### PanningMethod

```
EPanningMethod PanningMethod
```

The method to use when doing non-binaural or object-based panning.

### NumStoppingSources

```
uint NumStoppingSources
```

The max number of sources to reserve for "stopping" sounds. A "stopping" sound applies a fast fade in the DSP render to prevent discontinuities when stopping sources.

### MonoChannelUpmixMethod

```
EMonoChannelUpmixMethod MonoChannelUpmixMethod
```

The upmixing method for mono sound sources. Defines how mono channels are up-mixed to stereo channels.

### QualityLevels

```
TArray<FAudioQualitySettings> QualityLevels FUNCTIONS SetbDisableMasterEQ void SetbDisableMasterEQ(bool Value)
```

SetbAllowCenterChannel3DPanning

### void SetbAllowCenterChannel3DPanning

```
void SetbAllowCenterChannel3DPanning(bool Value)
```

SetbAllowPlayWhenSilent

### void SetbAllowPlayWhenSilent

```
void SetbAllowPlayWhenSilent(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAudioSettings::StaticClass()
```
