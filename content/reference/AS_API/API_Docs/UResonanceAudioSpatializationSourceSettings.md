# UResonanceAudioSpatializationSourceSettings

**Visibility:** public

## Inheritance

USpatializationPluginSourceSettingsBase → UResonanceAudioSpatializationSourceSettings → SPATIALIZATIONSETTINGS → SpatializationMethod

## Description

ERaSpatializationMethod SpatializationMethod

Spatialization method to use for sound object(s). NOTE: Has no effect if 'Stereo Panning' global quality mode is selected for the project

## SPATIALIZATIONSETTINGS \| DIRECTIVITY

### Sharpness

```
float32 Sharpness
```

Sharpness of the directivity pattern. Higher values result in a narrower sound emission beam

### bToggleVisualization

```
bool bToggleVisualization
```

Whether to visualize directivity pattern in the viewport.

### Pattern

```
float32 Pattern
```

Directivity pattern: 0.0 (omnidirectional), 0.5 (cardioid), 1.0 (figure-of-8)

### Scale

```
float32 Scale
```

Scale (for directivity pattern visualization only).

### SPATIALIZATIONSETTINGS|DISTANCE ATTENUATION

```
SPATIALIZATIONSETTINGS|DISTANCE ATTENUATION Rolloff ERaDistanceRolloffModel Rolloff
```

Roll-off model to use for sound source distance attenuation. Select 'None' (default) to use Unreal attenuation settings

### MinDistance

```
float32 MinDistance
```

Minimum distance to apply the chosen attenuation method (default = 100.0 cm)

### MaxDistance

```
float32 MaxDistance
```

Maximum distance to apply the chosen attenuation method ((default = 50000.0 cm)

### SPATIALIZATIONSETTINGS|SOURCE SPREAD

```
SPATIALIZATIONSETTINGS|SOURCE SPREAD(WIDTH)
```

Spread

### float32 Spread

```
float32 Spread
```

Spread (width) of the sound source (in degrees). Note: spread control is not available if 'Stereo Panning' global quality mode is enabled for the project and / or 'Stereo Panning' spatialization mode is enabled for the sound source

---

## RESONANCEAUDIO \| SOUNDSOURCESPATIALIZATIONSETTINGS

### SetSoundSourceSpread

```
void SetSoundSourceSpread(float32 InSpread)
```

Sets the sound source spread (width), applies, and updates

### SetSoundSourceDirectivity

```
void SetSoundSourceDirectivity(float32 InPattern, float32 InSharpness)
```

Sets the sound source directivity, applies, and updates

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UResonanceAudioSpatializationSourceSettings::StaticClass()
```
