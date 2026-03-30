# USoundCue

**Visibility:** public

## Inheritance

USoundBase → USoundCue

## Description

The behavior of audio playback is defined within Sound Cues.

## ATTENUATION

### AttenuationOverrides

```
FSoundAttenuationSettings AttenuationOverrides
```

Attenuation settings to use if Override Attenuation is set to true

---

## SOUND

### PitchMultiplier

```
float32 PitchMultiplier
```

Base pitch multiplier

### VolumeMultiplier

```
float32 VolumeMultiplier
```

Base volume multiplier

VOICE MANAGEMENT|PRIORITY

### SubtitlePriority

```
float32 SubtitlePriority
```

The priority of the subtitle.  Defaults to 10000.  Higher values will play instead of lower values.

---

## FUNCTIONS

### SetbOverrideAttenuation

```
void SetbOverrideAttenuation(bool Value)
```

SetbExcludeFromRandomNodeBranchCulling

### void SetbExcludeFromRandomNodeBranchCulling

```
void SetbExcludeFromRandomNodeBranchCulling(bool Value)
```

SetbPrimeOnLoad

### void SetbPrimeOnLoad

```
void SetbPrimeOnLoad(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundCue::StaticClass()
```
