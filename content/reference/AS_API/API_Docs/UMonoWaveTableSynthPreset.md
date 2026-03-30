# UMonoWaveTableSynthPreset

**Visibility:** public

## Inheritance

UObject → UMonoWaveTableSynthPreset

## Description

UStruct Mono Wave Table Synth Preset

## SYNTH \| PRESET

### LockKeyframesToGrid

```
int LockKeyframesToGrid
```

How many evenly-spaced keyframes to use when LockKeyframesToGrid is true

### WaveTableResolution

```
int WaveTableResolution
```

How many samples will be taken of the curve from time = [0.0, 1.0]

### WaveTable

```
TArray<FRuntimeFloatCurve> WaveTable
```

### Wave Table Editor

```
Wave Table Editor
```

bLockKeyframesToGridBool

### bool bLockKeyframesToGridBool

```
bool bLockKeyframesToGridBool
```

Lock wavetables to evenly spaced keyframes that can be edited vertically only (will re-sample)

### bNormalizeWaveTables

```
bool bNormalizeWaveTables
```

Normalize the WaveTable data? False will allow clipping, True will normalize the tables when sent to the synth for rendering

### PresetName

```
FString PresetName
```

Name the preset

---

## FUNCTIONS

### SetbLockKeyframesToGridBool

```
void SetbLockKeyframesToGridBool(bool Value)
```

GetbNormalizeWaveTables

### bool GetbNormalizeWaveTables

```
bool GetbNormalizeWaveTables()const SetbNormalizeWaveTables
```

void SetbNormalizeWaveTables(

### bool 	Value

```
bool 	Value 	)
```

GetbLockKeyframesToGridBool

### bool GetbLockKeyframesToGridBool

```
bool GetbLockKeyframesToGridBool()const STATIC FUNCTIONS
```

StaticClass

### static UClass UMonoWaveTableSynthPreset::StaticClass

```
static UClass UMonoWaveTableSynthPreset::StaticClass()
```
