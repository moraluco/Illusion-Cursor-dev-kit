# USourceEffectMotionFilterPreset

**Visibility:** public

## Inheritance

USoundEffectSourcePreset → USourceEffectMotionFilterPreset

## Description

USourceEffectMotionFilterPreset This code exposes your preset settings and effect class to the editor.  And allows for a handle to setting/updating effect settings dynamically.

## AUDIO \| EFFECTS

### Settings

```
FSourceEffectMotionFilterSettings Settings
```

The copy of the settings struct. Can't be written to in BP, but can be read.  Note that the value read in BP is the serialized settings, will not reflect dynamic changes made in BP.

---

## AUDIO \| EFFECTS

### SetSettings

```
void SetSettings(FSourceEffectMotionFilterSettings InSettings)
```

Change settings of your effect from blueprints. Will broadcast changes to active instances.

---

## FUNCTIONS

### GetSettings

```
const FSourceEffectMotionFilterSettings& GetSettings()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USourceEffectMotionFilterPreset::StaticClass()
```
