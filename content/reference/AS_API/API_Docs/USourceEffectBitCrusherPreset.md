# USourceEffectBitCrusherPreset

**Visibility:** public

## Inheritance

USoundEffectSourcePreset → USourceEffectBitCrusherPreset

## SOURCEEFFECT \| PRESET

### Settings

```
FSourceEffectBitCrusherSettings Settings AUDIO|EFFECTS|BITCRUSHER SetBits void SetBits(float32 Bits)
```

SetModulationSettings

### void SetModulationSettings

```
void SetModulationSettings(FSourceEffectBitCrusherSettings ModulationSettings)
```

SetSampleRate

### void SetSampleRate

```
void SetSampleRate(float32 SampleRate)
```

SetSampleRateModulator

### void SetSampleRateModulator

```
void SetSampleRateModulator(const USoundModulatorBase Modulator)
```

SetSettings

### void SetSettings

```
void SetSettings(FSourceEffectBitCrusherBaseSettings Settings)
```

Sets just base (i.e. carrier) setting values without modifying modulation source references

### SetBitModulator

```
void SetBitModulator(const USoundModulatorBase Modulator)
```

---

## FUNCTIONS

### GetSettings

```
const FSourceEffectBitCrusherSettings& GetSettings()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USourceEffectBitCrusherPreset::StaticClass()
```
