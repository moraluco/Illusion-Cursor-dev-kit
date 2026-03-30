# USourceEffectChorusPreset

**Visibility:** public

## Inheritance

USoundEffectSourcePreset → USourceEffectChorusPreset

## SOURCEEFFECT \| PRESET

### Settings

```
FSourceEffectChorusSettings Settings AUDIO|EFFECTS|CHORUS SetModulationSettings void SetModulationSettings(FSourceEffectChorusSettings ModulationSettings)
```

SetDepthModulator

### void SetDepthModulator

```
void SetDepthModulator(const USoundModulatorBase Modulator)
```

SetDry

### void SetDry

```
void SetDry(float32 DryAmount)
```

SetDryModulator

### void SetDryModulator

```
void SetDryModulator(const USoundModulatorBase Modulator)
```

SetFeedback

### void SetFeedback

```
void SetFeedback(float32 Feedback)
```

SetFeedbackModulator

### void SetFeedbackModulator

```
void SetFeedbackModulator(const USoundModulatorBase Modulator)
```

SetFrequency

### void SetFrequency

```
void SetFrequency(float32 Frequency)
```

SetFrequencyModulator

### void SetFrequencyModulator

```
void SetFrequencyModulator(const USoundModulatorBase Modulator)
```

SetDepth

### void SetDepth

```
void SetDepth(float32 Depth)
```

SetSettings

### void SetSettings

```
void SetSettings(FSourceEffectChorusBaseSettings Settings)
```

Sets just base (i.e. carrier) setting values without modifying modulation source references

### SetSpread

```
void SetSpread(float32 Spread)
```

SetSpreadModulator

### void SetSpreadModulator

```
void SetSpreadModulator(const USoundModulatorBase Modulator)
```

SetWet

### void SetWet

```
void SetWet(float32 WetAmount)
```

SetWetModulator

### void SetWetModulator

```
void SetWetModulator(const USoundModulatorBase Modulator)
```

---

## FUNCTIONS

### GetSettings

```
const FSourceEffectChorusSettings& GetSettings()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USourceEffectChorusPreset::StaticClass()
```
