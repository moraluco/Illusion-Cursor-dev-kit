# USoundSubmix

**Visibility:** public

## Inheritance

USoundSubmixWithParentBase → USoundSubmix

## Description

Sound Submix class meant for applying an effect to the downmixed sum of multiple audio sources.

## AUDIOLINK

### AudioLinkSettings

```
UAudioLinkSettingsAbstract AudioLinkSettings
```
### Object

```
Optional Audio Link Settings Object
```

---

## ENVELOPEFOLLOWER

### EnvelopeFollowerAttackTime

```
int EnvelopeFollowerAttackTime
```

The attack time in milliseconds for the envelope follower. Delegate callbacks can be registered to get the envelope value of sounds played with this submix.

### EnvelopeFollowerReleaseTime

```
int EnvelopeFollowerReleaseTime
```

The release time in milliseconds for the envelope follower. Delegate callbacks can be registered to get the envelope value of sounds played with this submix.

---

## SOUNDSUBMIX

### AmbisonicsPluginSettings

```
USoundfieldEncodingSettingsBase AmbisonicsPluginSettings
```

Optional settings used by plugins which support ambisonics file playback.

### SubmixEffectChain

```
TArray<TObjectPtr<USoundEffectSubmixPreset>> SubmixEffectChain
```
### bMuteWhenBackgrounded

```
bool bMuteWhenBackgrounded
```

Mute this submix when the application is muted or in the background. Used to prevent submix effect tails from continuing when tabbing out of application or if application is muted.

---

## SUBMIXLEVEL

### DryLevelModulation

```
FSoundModulationDestinationSettings DryLevelModulation
```

The dry level of the submix in Decibels. Applied before submix effects and analysis are performed.

### OutputVolumeModulation

```
FSoundModulationDestinationSettings OutputVolumeModulation
```

The output volume of the submix in Decibels. Applied after submix effects and analysis are performed.

### WetLevelModulation

```
FSoundModulationDestinationSettings WetLevelModulation
```

The wet level of the submixin Decibels. Applied after submix effects and analysis are performed.

---

## VARIABLES

### OnSubmixRecordedFileDone

```
FOnSubmixRecordedFileDone OnSubmixRecordedFileDone
```

Blueprint delegate for when a recorded file is finished exporting.

---

## AUDIO

### SetSubmixOutputVolume

```
void SetSubmixOutputVolume(float32 InOutputVolume)
```

Sets the output volume of the submix in linear gain. This dynamic volume acts as a multiplier on the OutputVolume property of this submix.

### SetSubmixDryLevel

```
void SetSubmixDryLevel(float32 InDryLevel)
```

Sets the output volume of the submix in linear gain. This dynamic level acts as a multiplier on the DryLevel property of this submix.

### SetSubmixWetLevel

```
void SetSubmixWetLevel(float32 InWetLevel)
```

Sets the output volume of the submix in linear gain. This dynamic level acts as a multiplier on the WetLevel property of this submix.

---

## AUDIO \| ANALYSIS

StartSpectralAnalysis

### void StartSpectralAnalysis

```
void StartSpectralAnalysis(
```

EFFTSize 	FFTSize	 = 	EFFTSize :: DefaultSize,

EFFTPeakInterpolationMethod 	InterpolationMethod	 = 	EFFTPeakInterpolationMethod :: Linear,

EFFTWindowType 	WindowType	 = 	EFFTWindowType :: Hann,

### float32 	HopSize	 = 	0.000000,

```
float32 	HopSize	 = 	0.000000, EAudioSpectrumType 	SpectrumType	 = 	EAudioSpectrumType :: MagnitudeSpectrum
```

)

### Start spectrum analysis of the audio output.

```
Start spectrum analysis of the audio output.
```

StopSpectralAnalysis

### void StopSpectralAnalysis

```
void StopSpectralAnalysis()
```

Stop spectrum analysis of the audio output.

---

## AUDIO \| BOUNCE

### StartRecordingOutput

```
void StartRecordingOutput(float32 ExpectedDuration)
```

Start recording the audio from this submix.

### StopRecordingOutput

```
void StopRecordingOutput(EAudioRecordingExportType ExportType, FString Name, FString Path, USoundWave ExistingSoundWaveToOverwrite = nullptr)
```

Finish recording the audio from this submix and export it as a wav file or a USoundWave.

---

## AUDIO \| ENVELOPEFOLLOWING

### StartEnvelopeFollowing

```
void StartEnvelopeFollowing()
```

Start envelope following the submix output. Register with OnSubmixEnvelope to receive envelope follower data in BP.

### StopEnvelopeFollowing

```
void StopEnvelopeFollowing()
```

Start envelope following the submix output. Register with OnSubmixEnvelope to receive envelope follower data in BP.

### AddEnvelopeFollowerDelegate

```
void AddEnvelopeFollowerDelegate(FOnSubmixEnvelopeBP OnSubmixEnvelopeBP = FOnSubmixEnvelopeBP()
```

	)

Adds an envelope follower delegate to the submix when envelope following is enabled on this submix.

**Parameters**

OnSubmixEnvelopeBP
FOnSubmixEnvelopeBP

Event to fire when new envelope data is available.

---

## AUDIO \| SPECTRUM

### AddSpectralAnalysisDelegate

```
void AddSpectralAnalysisDelegate(
```

TArray<FSoundSubmixSpectralAnalysisBandSettings> 	InBandSettings,

### FOnSubmixSpectralAnalysisBP 	OnSubmixSpectralAnalysisBP	 = 	FOnSubmixSpectralAnalysisBP

```
FOnSubmixSpectralAnalysisBP OnSubmixSpectralAnalysisBP = FOnSubmixSpectralAnalysisBP(), float32 UpdateRate = 10.000000,
```

float32 	DecibelNoiseFloor	 = 	- 40.000000,

bool 	bDoNormalize	 = 	true,

bool 	bDoAutoRange	 = 	false,

float32 	AutoRangeAttackTime	 = 	0.100000,

float32 	AutoRangeReleaseTime	 = 	60.000000

)

Adds a spectral analysis delegate to receive notifications when this submix has spectrum analysis enabled.

**Parameters**

InBandSettings
TArray<FSoundSubmixSpectralAnalysisBandSettings>

The frequency bands to analyze and their envelope-following settings.

OnSubmixSpectralAnalysisBP
FOnSubmixSpectralAnalysisBP

Event to fire when new spectral data is available.

UpdateRate
float32

How often to retrieve the data from the spectral analyzer and broadcast the event. Max is 30 times per second.

DecibelNoiseFloor
float32

Decibel Noise Floor to consider as silence silence when using a Decibel Spectrum Type.

bDoNormalize
bool

If true, output band values will be normalized between zero and one.

bDoAutoRange
bool

If true, output band values will have their ranges automatically adjusted to the minimum and maximum values in the audio. Output band values will be normalized between zero and one.

AutoRangeAttackTime
float32

The time (in seconds) it takes for the range to expand to 90% of a larger range.

AutoRangeReleaseTime
float32

The time (in seconds) it takes for the range to shrink to 90% of a smaller range.

RemoveSpectralAnalysisDelegate
void RemoveSpectralAnalysisDelegate(

FOnSubmixSpectralAnalysisBP 	OnSubmixSpectralAnalysisBP	 = 	FOnSubmixSpectralAnalysisBP ( )

)

Remove a spectral analysis delegate.

**Parameters**

OnSubmixSpectralAnalysisBP
FOnSubmixSpectralAnalysisBP

The event delegate to remove.

---

## FUNCTIONS

### SetbMuteWhenBackgrounded

```
void SetbMuteWhenBackgrounded(bool Value)
```

GetbMuteWhenBackgrounded

### bool GetbMuteWhenBackgrounded

```
bool GetbMuteWhenBackgrounded()const STATIC FUNCTIONS
```

StaticClass

### static UClass USoundSubmix::StaticClass

```
static UClass USoundSubmix::StaticClass()
```
