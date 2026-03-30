# USynthSamplePlayer

**Visibility:** public

## Inheritance

USynthComponent → USynthSamplePlayer

## SYNTH \| COMPONENTS \| AUDIO

### OnSamplePlaybackProgress

```
FOnSamplePlaybackProgress OnSamplePlaybackProgress
```

CurrentPlaybackProgressPercent const float32 CurrentPlaybackProgressPercent CurrentPlaybackProgressTime const float32 CurrentPlaybackProgressTime SampleDuration const float32 SampleDuration

### OnSampleLoaded

```
FOnSampleLoaded OnSampleLoaded
```

---

## SYNTH \| PRESET

### SoundWave

```
USoundWave SoundWave SYNTH|COMPONENTS|AUDIO SetScrubTimeWidth void SetScrubTimeWidth(float32 InScrubTimeWidthSec)
```

GetCurrentPlaybackProgressTime

### float32 GetCurrentPlaybackProgressTime

```
float32 GetCurrentPlaybackProgressTime()const GetSampleDuration
```

float32 GetSampleDuration() const

### IsLoaded

```
bool IsLoaded()const
```

SeekToTime

### void SeekToTime

```
void SeekToTime(float32 TimeSec, ESamplePlayerSeekType SeekType, bool bWrap = true)
```

SetPitch

### void SetPitch

```
void SetPitch(float32 InPitch, float32 TimeSec)
```

SetScrubMode

### void SetScrubMode

```
void SetScrubMode(bool bScrubMode)
```

GetCurrentPlaybackProgressPercent

### float32 GetCurrentPlaybackProgressPercent

```
float32 GetCurrentPlaybackProgressPercent()const SetSoundWave
```

void SetSoundWave(

### USoundWave 	InSoundWave

```
USoundWave 	InSoundWave 	)
```

This will override the current sound wave if one is set, stop audio, and reload the new sound wave

---

## FUNCTIONS

### GetSoundWave

```
USoundWave GetSoundWave()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static USynthSamplePlayer USynthSamplePlayer::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USynthSamplePlayer USynthSamplePlayer::GetOrCreate

```
static USynthSamplePlayer USynthSamplePlayer::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USynthSamplePlayer USynthSamplePlayer::Create

```
static USynthSamplePlayer USynthSamplePlayer::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USynthSamplePlayer::StaticClass

```
static UClass USynthSamplePlayer::StaticClass()
```
