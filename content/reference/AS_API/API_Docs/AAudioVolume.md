# AAudioVolume

**Visibility:** public

## Inheritance

AVolume → AAudioVolume → AMBIENTZONE → AmbientZoneSettings

## Description

FInteriorSettings AmbientZoneSettings

Impacts sounds that have "Apply Ambient Volumes" set to true in their Sound Class, based on whether the sound sources and the player are inside or outside the audio volume

## AUDIOVOLUME

### Priority

```
float32 Priority
```

Priority of this volume. In the case of overlapping volumes, the one with the highest priority is chosen. The order is undefined if two or more overlapping volumes have the same priority.

### bEnabled

```
bool bEnabled
```

Whether this volume is currently enabled and able to affect sounds

---

## REVERB

### Settings

```
FReverbSettings Settings
```

Reverb settings to use for this volume.

---

## SUBMIXES

### SubmixOverrideSettings

```
TArray<FAudioVolumeSubmixOverrideSettings> SubmixOverrideSettings
```

Submix effect chain override settings. Will override the effect chains on the given submixes when the conditions are met.

### SubmixSendSettings

```
TArray<FAudioVolumeSubmixSendSettings> SubmixSendSettings
```

Submix send settings to use for this volume. Allows audio to dynamically send to submixes based on source and listener locations relative to this volume.

---

## AUDIOVOLUME

### SetInteriorSettings

```
void SetInteriorSettings(FInteriorSettings NewInteriorSettings)
```

SetPriority

### void SetPriority

```
void SetPriority(float32 NewPriority)
```

SetReverbSettings

### void SetReverbSettings

```
void SetReverbSettings(FReverbSettings NewReverbSettings)
```

SetSubmixOverrideSettings

### void SetSubmixOverrideSettings

```
void SetSubmixOverrideSettings(TArray<FAudioVolumeSubmixOverrideSettings> NewSubmixOverrideSettings)
```

SetSubmixSendSettings

### void SetSubmixSendSettings

```
void SetSubmixSendSettings(TArray<FAudioVolumeSubmixSendSettings> NewSubmixSendSettings)
```

SetEnabled

### void SetEnabled

```
void SetEnabled(bool bNewEnabled)
```

---

## FUNCTIONS

### GetPriority

```
const float32& GetPriority()const
```

GetbEnabled

### bool GetbEnabled

```
bool GetbEnabled()const SetbEnabled
```

void SetbEnabled(

### bool 	Value

```
bool 	Value 	)
```

GetSubmixSendSettings

### const TArray<FAudioVolumeSubmixSendSettings>& GetSubmixSendSettings

```
const TArray<FAudioVolumeSubmixSendSettings>& GetSubmixSendSettings()const GetSubmixOverrideSettings
```

const TArray<FAudioVolumeSubmixOverrideSettings>& GetSubmixOverrideSettings() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AAudioVolume AAudioVolume::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AAudioVolume::StaticClass

```
static UClass AAudioVolume::StaticClass()
```
