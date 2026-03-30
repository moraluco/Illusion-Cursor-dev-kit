# UGranularSynth

**Visibility:** public

## Inheritance

USynthComponent → UGranularSynth

## SYNTH \| COMPONENTS \| AUDIO

### SampleDuration

```
const float32 SampleDuration CurrentPlayheadTime const float32 CurrentPlayheadTime SYNTH|COMPONENTS|AUDIO SetGrainsPerSecond void SetGrainsPerSecond(float32 InGrainsPerSecond)
```

GetSampleDuration

### float32 GetSampleDuration

```
float32 GetSampleDuration()const IsLoaded
```

bool IsLoaded() const

### NoteOff

```
void NoteOff(float32 Note, bool bKill = false)
```

NoteOn

### void NoteOn

```
void NoteOn(float32 Note, int Velocity, float32 Duration = - 1.000000)
```

SetAttackTime

### void SetAttackTime

```
void SetAttackTime(float32 AttackTimeMsec)
```

SetDecayTime

### void SetDecayTime

```
void SetDecayTime(float32 DecayTimeMsec)
```

SetGrainDuration

### void SetGrainDuration

```
void SetGrainDuration(float32 BaseDurationMsec, const FVector2D DurationRange)
```

SetGrainEnvelopeType

### void SetGrainEnvelopeType

```
void SetGrainEnvelopeType(EGranularSynthEnvelopeType EnvelopeType)
```

SetGrainPan

### void SetGrainPan

```
void SetGrainPan(float32 BasePan, const FVector2D PanRange)
```

SetGrainPitch

### void SetGrainPitch

```
void SetGrainPitch(float32 BasePitch, const FVector2D PitchRange)
```

SetGrainProbability

### void SetGrainProbability

```
void SetGrainProbability(float32 InGrainProbability)
```

GetCurrentPlayheadTime

### float32 GetCurrentPlayheadTime

```
float32 GetCurrentPlayheadTime()const SetGrainVolume
```

void SetGrainVolume(

### float32 	BaseVolume,

```
float32 	BaseVolume, const 	FVector2D 	VolumeRange 	)
```

SetPlaybackSpeed

### void SetPlaybackSpeed

```
void SetPlaybackSpeed(float32 InPlayheadRate)
```

SetPlayheadTime

### void SetPlayheadTime

```
void SetPlayheadTime(float32 InPositionSec, float32 LerpTimeSec = 0.000000, EGranularSynthSeekType SeekType = EGranularSynthSeekType :: FromBeginning)
```

SetReleaseTimeMsec

### void SetReleaseTimeMsec

```
void SetReleaseTimeMsec(float32 ReleaseTimeMsec)
```

SetScrubMode

### void SetScrubMode

```
void SetScrubMode(bool bScrubMode)
```

SetSoundWave

### void SetSoundWave

```
void SetSoundWave(USoundWave InSoundWave)
```

This will override the current sound wave if one is set, stop audio, and reload the new sound wave

### SetSustainGain

```
void SetSustainGain(float32 SustainGain)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UGranularSynth UGranularSynth::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UGranularSynth UGranularSynth::GetOrCreate

```
static UGranularSynth UGranularSynth::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UGranularSynth UGranularSynth::Create

```
static UGranularSynth UGranularSynth::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UGranularSynth::StaticClass

```
static UClass UGranularSynth::StaticClass()
```
