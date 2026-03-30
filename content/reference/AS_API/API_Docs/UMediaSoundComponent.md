# UMediaSoundComponent

**Visibility:** public

## Inheritance

USynthComponent → UMediaSoundComponent

## Description

Implements a sound component for playing a media player's audio output.

## MEDIA

### DynamicRateAdjustment

```
bool DynamicRateAdjustment
```

Dynamically adjust the sample rate if audio and media clock desynchronize.

### RateAdjustmentFactor

```
float32 RateAdjustmentFactor
```

Factor for calculating the sample rate adjustment.

### If dynamic rate adjustment is enabled, this number is multiplied with the drift between the audio and media clock

```
If dynamic rate adjustment is enabled, this number is multiplied with the drift between the audio and media clock(in 100ns ticks)to determine the adjustment. that is to be multiplied into the current playrate.
```

MediaPlayer

### MediaPlayer

```
UMediaPlayer MediaPlayer
```

The media player asset associated with this component.

This property is meant for design-time convenience. To change the associated media player at run-time, use the SetMediaPlayer method.

@see SetMediaPlayer

### Channels

```
EMediaSoundChannels Channels
```

Media sound channel type.

---

## TIMESYNTH

### NormalizedSpectralData

```
const TArray<FMediaSoundComponentSpectralData> NormalizedSpectralData
```

Retrieves and normalizes the spectral data if spectral analysis is enabled.

### SpectralData

```
const TArray<FMediaSoundComponentSpectralData> SpectralData
```

Retrieves the spectral data if spectral analysis is enabled.

EnvelopeValue

### EnvelopeValue

```
const float32 EnvelopeValue
```

Retrieves the current amplitude envelope.

---

## MEDIA \| MEDIASOUNDCOMPONENT

### SetEnvelopeFollowingsettings

```
void SetEnvelopeFollowingsettings(int AttackTimeMsec, int ReleaseTimeMsec)
```

Sets the envelope attack and release times (in ms).

### GetAttenuationSettingsToApply

```
bool GetAttenuationSettingsToApply(FSoundAttenuationSettings& OutAttenuationSettings)
```

Get the attenuation settings based on the current component settings.

**Parameters**

OutAttenuationSettings
FSoundAttenuationSettings&

Will contain the attenuation settings, if available.

**Returns**

true if attenuation settings were returned, false if attenuation is disabled.

GetMediaPlayer
UMediaPlayer GetMediaPlayer() const

Get the media player that provides the audio samples.

**Returns**

The component's media player, or nullptr if not set.

SetMediaPlayer
void SetMediaPlayer(
UMediaPlayer 	NewMediaPlayer
	)

Set the media player that provides the audio samples.

**Parameters**

NewMediaPlayer
UMediaPlayer

The player to set.

SetSpectralAnalysisSettings
void SetSpectralAnalysisSettings(

TArray<float32> 	InFrequenciesToAnalyze,
EMediaSoundComponentFFTSize 	InFFTSize	 = 	EMediaSoundComponentFFTSize :: Medium_512

)

Sets the settings to use for spectral analysis.

SetEnableEnvelopeFollowing
void SetEnableEnvelopeFollowing(
bool 	bInEnvelopeFollowing
	)

Turns on amplitude envelope following the audio in the media sound component.

SetEnableSpectralAnalysis
void SetEnableSpectralAnalysis(
bool 	bInSpectralAnalysisEnabled
	)

Turns on spectral analysis of the audio generated in the media sound component.

---

## TIMESYNTH

### GetNormalizedSpectralData

```
TArray<FMediaSoundComponentSpectralData> GetNormalizedSpectralData()
```

Retrieves and normalizes the spectral data if spectral analysis is enabled.

### GetSpectralData

```
TArray<FMediaSoundComponentSpectralData> GetSpectralData()
```

Retrieves the spectral data if spectral analysis is enabled.

### GetEnvelopeValue

```
float32 GetEnvelopeValue()const
```

Retrieves the current amplitude envelope.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UMediaSoundComponent UMediaSoundComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UMediaSoundComponent UMediaSoundComponent::GetOrCreate

```
static UMediaSoundComponent UMediaSoundComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UMediaSoundComponent UMediaSoundComponent::Create

```
static UMediaSoundComponent UMediaSoundComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UMediaSoundComponent::StaticClass

```
static UClass UMediaSoundComponent::StaticClass()
```
