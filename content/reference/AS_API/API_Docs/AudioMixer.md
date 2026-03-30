# AudioMixer

## Inheritance

AudioMixer → AUDIO → GetAvailableAudioOutputDevices

## Description

static void AudioMixer::GetAvailableAudioOutputDevices(

FOnAudioOutputDevicesObtained 	OnObtainDevicesEvent	 = 	FOnAudioOutputDevicesObtained ( )

)

Gets information about all audio output devices available in the system

Parameters OnObtainDevicesEvent FOnAudioOutputDevicesObtained

the event to fire when the audio endpoint devices have been retrieved

SwapAudioOutputDevice static void AudioMixer::SwapAudioOutputDevice(

FString 	NewDeviceId, FOnCompletedDeviceSwap 	OnCompletedDeviceSwap	 = 	FOnCompletedDeviceSwap ( )

)

Hotswaps to the requested audio output device

Parameters NewDeviceId FString

the device Id to swap to

OnCompletedDeviceSwap FOnCompletedDeviceSwap

the event to fire when the audio endpoint devices have been retrieved

GetCurrentAudioOutputDeviceName static void AudioMixer::GetCurrentAudioOutputDeviceName(

FOnMainAudioOutputDeviceObtained 	OnObtainCurrentDeviceEvent	 = 	FOnMainAudioOutputDeviceObtained ( )

)

Gets information about the currently used audio output device

Parameters OnObtainCurrentDeviceEvent FOnMainAudioOutputDeviceObtained

the event to fire when the audio endpoint devices have been retrieved

Conv_AudioOutputDeviceInfoToString static FString AudioMixer::Conv_AudioOutputDeviceInfoToString( FAudioOutputDeviceInfo 	Info 	)

Returns the device info in a human readable format

Parameters Info FAudioOutputDeviceInfo

The audio device data to print

Returns

The data in a string format

## AUDIO \| ANALYSIS

### StopAnalyzingOutput

```
static void AudioMixer::StopAnalyzingOutput(USoundSubmix SubmixToStopAnalyzing = nullptr)
```

Stop spectrum analysis.

StartAnalyzingOutput

### static void AudioMixer::StartAnalyzingOutput

```
static void AudioMixer::StartAnalyzingOutput(
```

USoundSubmix 	SubmixToAnalyze	 = 	nullptr,

EFFTSize 	FFTSize	 = 	EFFTSize :: DefaultSize,

EFFTPeakInterpolationMethod 	InterpolationMethod	 = 	EFFTPeakInterpolationMethod :: Linear,

EFFTWindowType 	WindowType	 = 	EFFTWindowType :: Hann,

float32 	HopSize	 = 	0.000000,

EAudioSpectrumType 	SpectrumType	 = 	EAudioSpectrumType :: MagnitudeSpectrum

)

Start spectrum analysis of the audio output. By leaving the Submix To Analyze blank, you can analyze the master output of the game.

MakeMusicalSpectralAnalysisBandSettings

### static TArray<FSoundSubmixSpectralAnalysisBandSettings> AudioMixer::MakeMusicalSpectralAnalysisBandSettings

```
static TArray<FSoundSubmixSpectralAnalysisBandSettings> AudioMixer::MakeMusicalSpectralAnalysisBandSettings(
```

int 	InNumSemitones	 = 	60,

EMusicalNoteName 	InStartingMusicalNote	 = 	EMusicalNoteName :: C,

int 	InStartingOctave	 = 	2,

int 	InAttackTimeMsec	 = 	10,

int 	InReleaseTimeMsec	 = 	10

)

Make an array of musically spaced bands with ascending frequency.

**Parameters**

InNumSemitones
int

The number of semitones to represent.

InStartingOctave
int

The octave of the first note in the array.

InAttackTimeMsec
int

The attack time (in milliseconds) to apply to each band's envelope tracker.

InReleaseTimeMsec
int

The release time (in milliseconds) to apply to each band's envelope tracker.

MakeFullSpectrumSpectralAnalysisBandSettings
static TArray<FSoundSubmixSpectralAnalysisBandSettings> AudioMixer::MakeFullSpectrumSpectralAnalysisBandSettings(

int 	InNumBands	 = 	30,
float32 	InMinimumFrequency	 = 	40.000000,
float32 	InMaximumFrequency	 = 	16000.000000,
int 	InAttackTimeMsec	 = 	10,
int 	InReleaseTimeMsec	 = 	10

)

Make an array of logarithmically spaced bands.

**Parameters**

InNumBands
int

The number of bands to used to represent the spectrum.

InMinimumFrequency
float32

The center frequency of the first band.

InMaximumFrequency
float32

The center frequency of the last band.

InAttackTimeMsec
int

The attack time (in milliseconds) to apply to each band's envelope tracker.

InReleaseTimeMsec
int

The release time (in milliseconds) to apply to each band's envelope tracker.

GetMagnitudeForFrequencies
static void AudioMixer::GetMagnitudeForFrequencies(
TArray<float32> 	Frequencies,
TArray<float32>& 	Magnitudes,
USoundSubmix 	SubmixToAnalyze	 = 	nullptr
	)

Retrieve the magnitudes for the given frequencies.

MakePresetSpectralAnalysisBandSettings
static TArray<FSoundSubmixSpectralAnalysisBandSettings> AudioMixer::MakePresetSpectralAnalysisBandSettings(

EAudioSpectrumBandPresetType 	InBandPresetType,
int 	InNumBands	 = 	10,
int 	InAttackTimeMsec	 = 	10,
int 	InReleaseTimeMsec	 = 	10

)

Make an array of bands which span the frequency range of a given EAudioSpectrumBandPresetType.

**Parameters**

InBandPresetType
EAudioSpectrumBandPresetType

The type audio content which the bands encompass.

InNumBands
int

The number of bands used to represent the spectrum.

InAttackTimeMsec
int

The attack time (in milliseconds) to apply to each band's envelope tracker.

InReleaseTimeMsec
int

The release time (in milliseconds) to apply to each band's envelope tracker.

GetPhaseForFrequencies
static void AudioMixer::GetPhaseForFrequencies(
TArray<float32> 	Frequencies,
TArray<float32>& 	Phases,
USoundSubmix 	SubmixToAnalyze	 = 	nullptr
	)

Retrieve the phases for the given frequencies.

---

## AUDIO \| BUS

### IsAudioBusActive

```
static bool AudioMixer::IsAudioBusActive(UAudioBus AudioBus)
```

Queries if the given audio bus is active (and audio can be mixed to it).

### StartAudioBus

```
static void AudioMixer::StartAudioBus(UAudioBus AudioBus)
```

Starts the given audio bus.

### StopAudioBus

```
static void AudioMixer::StopAudioBus(UAudioBus AudioBus)
```

Stops the given audio bus.

---

## AUDIO \| CACHE

### PrimeSoundCueForPlayback

```
static void AudioMixer::PrimeSoundCueForPlayback(USoundCue SoundCue)
```

Begin loading any sounds referenced by a sound cue into the cache so that it can be played immediately.

### TrimAudioCache

```
static float32 AudioMixer::TrimAudioCache(float32 InMegabytesToFree)
```

Trim memory used by the audio cache. Returns the number of megabytes freed.

### PrimeSoundForPlayback

```
static void AudioMixer::PrimeSoundForPlayback(
```

	USoundWave 	SoundWave,

### const 	FOnSoundLoadComplete 	OnLoadCompletion	 = 	FOnSoundLoadComplete

```
const FOnSoundLoadComplete OnLoadCompletion = FOnSoundLoadComplete()
```

)

### Begin loading a sound into the cache so that it can be played immediately.

```
Begin loading a sound into the cache so that it can be played immediately.
```

---

## AUDIO \| EFFECTS

### AddMasterSubmixEffect

```
static void AudioMixer::AddMasterSubmixEffect(USoundEffectSubmixPreset SubmixEffectPreset)
```

Adds a submix effect preset to the master submix.

### SetBypassSourceEffectChainEntry

```
static void AudioMixer::SetBypassSourceEffectChainEntry(
```

USoundEffectSourcePresetChain 	PresetChain,

### int 	EntryIndex,

```
bool 	bBypassed
```

)

### Set whether or not to bypass the effect at the source effect chain index.

```
Set whether or not to bypass the effect at the source effect chain index.
```

RemoveMasterSubmixEffect

### static void AudioMixer::RemoveMasterSubmixEffect

```
static void AudioMixer::RemoveMasterSubmixEffect(USoundEffectSubmixPreset SubmixEffectPreset)
```

Removes a submix effect preset from the master submix.

### RemoveSourceEffectFromPresetChain

```
static void AudioMixer::RemoveSourceEffectFromPresetChain(
```

USoundEffectSourcePresetChain 	PresetChain,

### EntryIndex

```
int EntryIndex
```

)

### Adds source effect entry to preset chain. Only affects the instance of preset chain.

```
Adds source effect entry to preset chain. Only affects the instance of preset chain.
```

RemoveSubmixEffect

### static void AudioMixer::RemoveSubmixEffect

```
static void AudioMixer::RemoveSubmixEffect(USoundSubmix SoundSubmix, USoundEffectSubmixPreset SubmixEffectPreset)
```

Removes all instances of a submix effect preset from the given submix.

### RemoveSubmixEffectAtIndex

```
static void AudioMixer::RemoveSubmixEffectAtIndex(USoundSubmix SoundSubmix, int SubmixChainIndex)
```

Removes the submix effect at the given submix chain index, if there is a submix effect at that index.

### ReplaceSubmixEffect

```
static void AudioMixer::ReplaceSubmixEffect(USoundSubmix InSoundSubmix, int SubmixChainIndex, USoundEffectSubmixPreset SubmixEffectPreset)
```

Replaces the submix effect at the given submix chain index, adds the effect if there is none at that index.

### ClearSubmixEffectChainOverride

```
static void AudioMixer::ClearSubmixEffectChainOverride(USoundSubmix SoundSubmix, float32 FadeTimeSec)
```

Clears all submix effect overrides on the given submix and returns it to the default effect chain.

### GetNumberOfEntriesInSourceEffectChain

```
static int AudioMixer::GetNumberOfEntriesInSourceEffectChain(
```

### PresetChain

```
USoundEffectSourcePresetChain PresetChain
```

)

Returns the number of effect chain entries in the given source effect chain.

### SetSubmixEffectChainOverride

```
static void AudioMixer::SetSubmixEffectChainOverride(
```

USoundSubmix 	SoundSubmix,

### TArray<USoundEffectSubmixPreset> 	SubmixEffectPresetChain,

```
float32 	FadeTimeSec
```

)

### Sets a submix effect chain override on the given submix. The effect chain will cross fade from the base effect chain or current override to the new override.

```
Sets a submix effect chain override on the given submix. The effect chain will cross fade from the base effect chain or current override to the new override.
```

ClearSubmixEffects

### static void AudioMixer::ClearSubmixEffects

```
static void AudioMixer::ClearSubmixEffects(USoundSubmix SoundSubmix)
```

Clears all submix effects on the given submix.

### AddSourceEffectToPresetChain

```
static void AudioMixer::AddSourceEffectToPresetChain(
```

USoundEffectSourcePresetChain 	PresetChain,

### FSourceEffectChainEntry 	Entry

```
FSourceEffectChainEntry 	Entry
```

)

### Adds source effect entry to preset chain. Only effects the instance of the preset chain

```
Adds source effect entry to preset chain. Only effects the instance of the preset chain
```

ClearMasterSubmixEffects

### static void AudioMixer::ClearMasterSubmixEffects

```
static void AudioMixer::ClearMasterSubmixEffects()
```

Clears all master submix effects.

### AddSubmixEffect

```
static int AudioMixer::AddSubmixEffect(USoundSubmix SoundSubmix, USoundEffectSubmixPreset SubmixEffectPreset)
```

Adds a submix effect preset to the given submix at the end of its submix effect chain. Returns the number of submix effects.

---

## AUDIO \| RECORDING

StopRecordingOutput

### static USoundWave AudioMixer::StopRecordingOutput

```
static USoundWave AudioMixer::StopRecordingOutput(
```

EAudioRecordingExportType 	ExportType,

### FString 	Name,

```
FString 	Name, FString 	Path, USoundSubmix 	SubmixToRecord	 = 	nullptr, USoundWave 	ExistingSoundWaveToOverwrite	 = 	nullptr
```

)

### Stop recording audio. Path can be absolute, or relative

```
Stop recording audio. Path can be absolute, or relative(to the /Saved/BouncedWavFiles folder). By leaving the Submix To Record field blank, you can record the master output of the game.
```

ResumeRecordingOutput

### static void AudioMixer::ResumeRecordingOutput

```
static void AudioMixer::ResumeRecordingOutput(USoundSubmix SubmixToPause = nullptr)
```

Resume recording audio after pausing. By leaving the Submix To Pause field blank, you can record the master output of the game.

### StartRecordingOutput

```
static void AudioMixer::StartRecordingOutput(float32 ExpectedDuration, USoundSubmix SubmixToRecord = nullptr)
```

Start recording audio. By leaving the Submix To Record field blank, you can record the master output of the game.

### PauseRecordingOutput

```
static void AudioMixer::PauseRecordingOutput(USoundSubmix SubmixToPause = nullptr)
```

Pause recording audio, without finalizing the recording to disk. By leaving the Submix To Record field blank, you can record the master output of the game.
