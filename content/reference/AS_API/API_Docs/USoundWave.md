# USoundWave

**Visibility:** public

## Inheritance

USoundBase → USoundWave → USoundSourceBus → USoundWaveProcedural → ANALYSIS → OverrideSoundToUseForAnalysis

## Description

USoundWave OverrideSoundToUseForAnalysis

Specify a sound to use for the baked analysis. Will default to this USoundWave if not set.

## ANALYSIS \| ENVELOPE

### EnvelopeFollowerAttackTime

```
int EnvelopeFollowerAttackTime
```

The attack time in milliseconds. Describes how quickly the envelope analyzer responds to increasing amplitudes.

### EnvelopeFollowerReleaseTime

```
int EnvelopeFollowerReleaseTime
```

The release time in milliseconds. Describes how quickly the envelope analyzer responds to decreasing amplitudes.

### EnvelopeFollowerFrameSize

```
int EnvelopeFollowerFrameSize
```

How many audio frames to average a new envelope value. Larger values use less memory for audio envelope data but will result in lower envelope accuracy.

---

## ANALYSIS \| FFT

### FFTAnalysisFrameSize

```
int FFTAnalysisFrameSize
```

How many audio frames analyze at a time.

### FFTSize

```
ESoundWaveFFTSize FFTSize
```

The FFT window size to use for fft analysis.

### FFTAnalysisAttackTime

```
int FFTAnalysisAttackTime
```

Attack time in milliseconds of the spectral envelope follower.

### FFTAnalysisReleaseTime

```
int FFTAnalysisReleaseTime
```

Release time in milliseconds of the spectral envelope follower.

### FrequenciesToAnalyze

```
TArray<float32> FrequenciesToAnalyze
```

The frequencies (in hz) to analyze when doing baked FFT analysis.

---

## FORMAT

### SoundAssetCompressionType

```
ESoundAssetCompressionType SoundAssetCompressionType
```

The compression type to use for the sound wave asset.

---

## FORMAT \| QUALITY

### SampleRateQuality

```
ESoundwaveSampleRateSettings SampleRateQuality
```

Quality of sample rate conversion for platforms that opt into resampling during cook. The sample rate for each enumeration is definable per platform in platform target settings.

### CompressionQuality

```
int CompressionQuality
```

Platform agnostic compression quality. 1..100 with 1 being best compression and 100 being best quality. ADPCM and PCM sound asset compression types ignore this parameter.

---

## IMPORTSETTINGS

### AssetImportData

```
UAssetImportData AssetImportData
```

---

## LOADING

### InitialChunkSize

```
int InitialChunkSize
```

Use this to override how much audio data is loaded when this USoundWave is loaded.

### LoadingBehavior

```
ESoundWaveLoadingBehavior LoadingBehavior
```

Specifies how and when compressed audio data is loaded for asset if stream caching is enabled.

---

## MODULATION

### ModulationSettings

```
FSoundModulationDefaultRoutingSettings ModulationSettings
```
### Settings

```
Modulation Settings
```

---

## SOUND

### Pitch

```
float32 Pitch
```

Playback pitch for sound.

### SoundGroup

```
ESoundGroup SoundGroup
```
### Volume

```
float32 Volume
```

Playback volume of sound 0 to 1

Default is 1.0.

---

## SOUNDWAVE

### Curves

```
UCurveTable Curves
```

Curves associated with this sound wave

---

## SUBTITLES

### Comment

```
FString Comment
```

Provides contextual information for the sound to the translator.

### Subtitles

```
TArray<FSubtitleCue> Subtitles
```

Subtitle cues.

### bMature

```
bool bMature
```

If set to true if this sound is considered to contain mature/adult content.

### bManualWordWrap

```
bool bManualWordWrap
```

If set to true will disable automatic generation of line breaks

use if the subtitles have been split manually.

### bSingleLine

```
bool bSingleLine
```

If set to true the subtitles display as a sequence of single lines as opposed to multiline.

### SubtitlePriority

```
float32 SubtitlePriority
```

The priority of the subtitle.

---

## AUDIO

### SetSoundAssetCompressionType

```
void SetSoundAssetCompressionType(ESoundAssetCompressionType InSoundAssetCompressionType)
```

Procedurally set the compression type.

### GetSoundAssetCompressionType

```
ESoundAssetCompressionType GetSoundAssetCompressionType()const
```

Returns the sound's asset compression type.

---

## FUNCTIONS

### SetTreatFileAsLoopingForAnalysis

```
void SetTreatFileAsLoopingForAnalysis(bool Value)
```

SetbEnableBakedFFTAnalysis

### void SetbEnableBakedFFTAnalysis

```
void SetbEnableBakedFFTAnalysis(bool Value)
```

SetbEnableAmplitudeEnvelopeAnalysis

### void SetbEnableAmplitudeEnvelopeAnalysis

```
void SetbEnableAmplitudeEnvelopeAnalysis(bool Value)
```

GetbMature

### bool GetbMature

```
bool GetbMature()const SetbLooping
```

void SetbLooping(

### bool 	Value

```
bool 	Value 	)
```

SetbMature

### void SetbMature

```
void SetbMature(bool Value)
```

GetbManualWordWrap

### bool GetbManualWordWrap

```
bool GetbManualWordWrap()const SetbManualWordWrap
```

void SetbManualWordWrap(

### bool 	Value

```
bool 	Value 	)
```

GetbSingleLine

### bool GetbSingleLine

```
bool GetbSingleLine()const SetbSingleLine
```

void SetbSingleLine(

### bool 	Value

```
bool 	Value 	)
```

SetbIsAmbisonics

### void SetbIsAmbisonics

```
void SetbIsAmbisonics(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundWave::StaticClass()
```
