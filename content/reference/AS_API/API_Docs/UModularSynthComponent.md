# UModularSynthComponent

**Visibility:** public

## Inheritance

USynthComponent → UModularSynthComponent

## Description

UModularSynthComponent Implementation of a USynthComponent.

## SYNTH \| VOICECOUNT

### VoiceCount

```
int VoiceCount
```

The voice count to use for the synthesizer. Cannot be changed

---

## SYNTH \| COMPONENTS \| AUDIO

### SetModEnvDecayTime

```
void SetModEnvDecayTime(float32 DecayTimeMsec)
```

Sets the envelope modulator attack time in msec

### NoteOff

```
void NoteOff(float32 Note, bool bAllNotesOff = false, bool bKillAllNotes = false)
```

Stop the note (will only do anything if a voice is playing with that note)

### NoteOn

```
void NoteOn(float32 Note, int Velocity, float32 Duration = - 1.000000)
```

Play a new note. Optionally pass in a duration to automatically turn off the note.

### SetAttackTime

```
void SetAttackTime(float32 AttackTimeMsec)
```

Sets the envelope attack time in msec.

### SetChorusDepth

```
void SetChorusDepth(float32 Depth)
```

Sets the chorus depth

### SetChorusEnabled

```
void SetChorusEnabled(bool EnableChorus)
```

Sets whether or not chorus is enabled.

### SetChorusFeedback

```
void SetChorusFeedback(float32 Feedback)
```

Sets the chorus feedback

### SetChorusFrequency

```
void SetChorusFrequency(float32 Frequency)
```

Sets the chorus frequency

### SetDecayTime

```
void SetDecayTime(float32 DecayTimeMsec)
```

Sets the envelope decay time in msec.

### SetEnableLegato

```
void SetEnableLegato(bool LegatoEnabled)
```

Sets whether or not to use legato for the synthesizer.

### SetEnablePatch

```
bool SetEnablePatch(const FPatchId PatchId, bool bIsEnabled)
```

SetEnablePolyphony

### void SetEnablePolyphony

```
void SetEnablePolyphony(bool bEnablePolyphony)
```

Sets whether or not to use polyphony for the synthesizer.

**Parameters**

bEnablePolyphony
bool

Whether or not to enable polyphony for the synth.

SetEnableRetrigger
void SetEnableRetrigger(
bool 	RetriggerEnabled
	)

Sets whether or not to retrigger envelope per note on.

SetEnableUnison
void SetEnableUnison(
bool 	EnableUnison
	)

Sets whether or not the synth is in unison mode (i.e. no spread)

SetFilterAlgorithm
void SetFilterAlgorithm(
ESynthFilterAlgorithm 	FilterAlgorithm
	)

Sets the filter algorithm.

SetFilterFrequency
void SetFilterFrequency(
float32 	FilterFrequencyHz
	)

Sets the filter cutoff frequency in hz.

SetFilterFrequencyMod
void SetFilterFrequencyMod(
float32 	FilterFrequencyHz
	)

Sets the filter cutoff frequency in hz.

SetFilterQ
void SetFilterQ(
float32 	FilterQ
	)

Sets the filter Q (resonance)

SetFilterQMod
void SetFilterQMod(
float32 	FilterQ
	)

Sets a modulated filter Q (resonance)

SetFilterType
void SetFilterType(
ESynthFilterType 	FilterType
	)

Sets the filter type.

SetGainDb
void SetGainDb(
float32 	GainDb
	)

Sets the synth gain in decibels.

SetLFOFrequency
void SetLFOFrequency(
int 	LFOIndex,
float32 	FrequencyHz
	)

Sets the LFO frequency in hz

**Parameters**

LFOIndex
int

Which LFO to set the frequency for.

FrequencyHz
float32

The LFO frequency to use.

SetLFOFrequencyMod
void SetLFOFrequencyMod(
int 	LFOIndex,
float32 	FrequencyModHz
	)

Sets the LFO frequency modulation in hz

**Parameters**

LFOIndex
int

Which LFO to set the frequency for.

FrequencyModHz
float32

The LFO frequency to use.

SetLFOGain
void SetLFOGain(
int 	LFOIndex,
float32 	Gain
	)

Sets the LFO gain factor

**Parameters**

LFOIndex
int

Which LFO to set the frequency for.

Gain
float32

The gain factor to use for the LFO.

SetLFOGainMod
void SetLFOGainMod(
int 	LFOIndex,
float32 	GainMod
	)

Sets the LFO gain mod factor (external modulation)

**Parameters**

LFOIndex
int

Which LFO to set the frequency for.

SetLFOMode
void SetLFOMode(
int 	LFOIndex,
ESynthLFOMode 	LFOMode
	)

Sets the LFO type

**Parameters**

LFOIndex
int

Which LFO to set the frequency for.

LFOMode
ESynthLFOMode

The LFO mode to use.

SetLFOPatch
void SetLFOPatch(
int 	LFOIndex,
ESynthLFOPatchType 	LFOPatchType
	)

Sets the LFO patch type. LFO patch determines what parameter is modulated by the LFO.

**Parameters**

LFOIndex
int

Which LFO to set the frequency for.

LFOPatchType
ESynthLFOPatchType

The LFO patch type to use.

SetLFOType
void SetLFOType(
int 	LFOIndex,
ESynthLFOType 	LFOType
	)

Sets the LFO type

**Parameters**

LFOIndex
int

Which LFO to set the frequency for.

LFOType
ESynthLFOType

The LFO type to use.

SetModEnvAttackTime
void SetModEnvAttackTime(
float32 	AttackTimeMsec
	)

Sets the envelope modulator attack time in msec

SetModEnvBiasInvert
void SetModEnvBiasInvert(
bool 	bInvert
	)

Sets whether or not to invert the bias output of the envelope modulator.

SetModEnvBiasPatch
void SetModEnvBiasPatch(
ESynthModEnvBiasPatch 	InPatchType
	)

Sets whether or not to modulate a param based on the envelope. Uses bias envelope output (offset from sustain gain).

CreatePatch
FPatchId CreatePatch(
ESynth1PatchSource 	PatchSource,
TArray<FSynth1PatchCable> 	PatchCables,
bool 	bEnableByDefault
	)

Creates a new modular synth patch between a modulation source and a set of modulation destinations

SetModEnvDepth
void SetModEnvDepth(
float32 	Depth
	)

Sets the envelope modulator depth (amount to apply the output modulation)

SetModEnvInvert
void SetModEnvInvert(
bool 	bInvert
	)

Sets whether or not to invert the envelope modulator.

SetModEnvPatch
void SetModEnvPatch(
ESynthModEnvPatch 	InPatchType
	)

Sets whether or not to modulate a param based on the envelope. Uses bias envelope output (offset from sustain gain).

SetModEnvReleaseTime
void SetModEnvReleaseTime(
float32 	Release
	)

Sets the envelope modulator release

SetModEnvSustainGain
void SetModEnvSustainGain(
float32 	SustainGain
	)

Sets the envelope modulator sustain gain

SetOscCents
void SetOscCents(
int 	OscIndex,
float32 	Cents
	)

Sets the oscillator cents.

**Parameters**

OscIndex
int

Which oscillator to set the type for.

Cents
float32

The amount of cents to set the oscillator to (relative to base frequency/pitch)..

SetOscFrequencyMod
void SetOscFrequencyMod(
int 	OscIndex,
float32 	OscFreqMod
	)

Set the oscillator frequency modulation

**Parameters**

OscIndex
int

Which oscillator to set the type for.

OscFreqMod
float32

The oscillator frequency modulation to use.

SetOscGain
void SetOscGain(
int 	OscIndex,
float32 	OscGain
	)

Set the oscillator gain.

**Parameters**

OscIndex
int

Which oscillator to set the type for.

OscGain
float32

The oscillator gain.

SetOscGainMod
void SetOscGainMod(
int 	OscIndex,
float32 	OscGainMod
	)

Set the oscillator gain modulation.

**Parameters**

OscIndex
int

Which oscillator to set the type for.

OscGainMod
float32

The oscillator gain modulation to use.

SetOscOctave
void SetOscOctave(
int 	OscIndex,
float32 	Octave
	)

Sets the oscillator octaves

**Parameters**

OscIndex
int

Which oscillator to set the type for.

Octave
float32

Which octave to set the oscillator to (relative to base frequency/pitch).

SetOscPulsewidth
void SetOscPulsewidth(
int 	OscIndex,
float32 	Pulsewidth
	)

Sets the square wave pulsewidth [0.0, 1.0]

SetOscSemitones
void SetOscSemitones(
int 	OscIndex,
float32 	Semitones
	)

Sets the oscillator semitones.

**Parameters**

OscIndex
int

Which oscillator to set the type for.

Semitones
float32

The amount of semitones to set the oscillator to (relative to base frequency/pitch).

SetOscSync
void SetOscSync(
bool 	bIsSynced
	)

Set whether or not to slave the phase of osc2 to osc1

SetOscType
void SetOscType(
int 	OscIndex,
ESynth1OscType 	OscType
	)

Set the oscillator type.

**Parameters**

OscIndex
int

Which oscillator to set the type for.

OscType
ESynth1OscType

The oscillator type to set.

SetPan
void SetPan(
float32 	Pan
	)

Sets the pan of the synth [-1.0, 1.0].

SetPitchBend
void SetPitchBend(
float32 	PitchBend
	)

Sets the synth pitch bend amount.

SetPortamento
void SetPortamento(
float32 	Portamento
	)

Sets the synth portamento [0.0, 1.0]

SetReleaseTime
void SetReleaseTime(
float32 	ReleaseTimeMsec
	)

Sets the envelope release time in msec.

SetSpread
void SetSpread(
float32 	Spread
	)

Sets the amount of spread of the oscillators. [0.0, 1.0]

SetStereoDelayFeedback
void SetStereoDelayFeedback(
float32 	DelayFeedback
	)

Sets the amount of stereo delay feedback [0.0, 1.0]

SetStereoDelayIsEnabled
void SetStereoDelayIsEnabled(
bool 	StereoDelayEnabled
	)

Sets whether not stereo delay is enabled.

SetStereoDelayMode
void SetStereoDelayMode(
ESynthStereoDelayMode 	StereoDelayMode
	)

Sets whether not stereo delay is enabled.

SetStereoDelayRatio
void SetStereoDelayRatio(
float32 	DelayRatio
	)

Sets the amount of stereo delay ratio between left and right delay lines [0.0, 1.0]

SetStereoDelayTime
void SetStereoDelayTime(
float32 	DelayTimeMsec
	)

Sets the amount of stereo delay time in msec.

SetStereoDelayWetlevel
void SetStereoDelayWetlevel(
float32 	DelayWetlevel
	)

Sets the amount of stereo delay wetlevel [0.0, 1.0]

SetSustainGain
void SetSustainGain(
float32 	SustainGain
	)

Sets the envelope sustain gain value.

SetSynthPreset
void SetSynthPreset(
FModularSynthPreset 	SynthPreset
	)

Sets the preset struct for the synth

STATIC FUNCTIONS
Get
static UModularSynthComponent UModularSynthComponent::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UModularSynthComponent UModularSynthComponent::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UModularSynthComponent UModularSynthComponent::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UModularSynthComponent::StaticClass()
