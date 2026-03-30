# UResonanceAudioReverbPluginPreset

**Visibility:** public

## Inheritance

USoundEffectSubmixPreset → UResonanceAudioReverbPluginPreset

## Description

RESONANCE AUDIO ROOM EFFECT SETTINGS Settings FResonanceAudioReverbPluginSettings Settings RESONANCE AUDIO ROOM EFFECT SETTINGS SetRoomDimensions void SetRoomDimensions( FVector 	InDimensions 	)

Sets room dimensions in 3D space

SetReflectionScalar void SetReflectionScalar( float32 	InReflectionScalar 	)

Sets early reflections gain multiplier

SetReverbBrightness void SetReverbBrightness( float32 	InReverbBrightness 	)

Increases high frequency reverberation times when positive, decreases when negative.  Has no effect when set to 0.0

SetReverbGain void SetReverbGain( float32 	InReverbGain 	)

Sets reverb gain multiplier

SetReverbTimeModifier void SetReverbTimeModifier( float32 	InReverbTimeModifier 	)

Adjusts the reverberation time across all frequency bands by multiplying the computed values by this factor.  Has no effect when set to 1.0

SetEnableRoomEffects void SetEnableRoomEffects( bool 	bInEnableRoomEffects 	)

Enables/disables Resonance Audio room effects

SetRoomMaterials void SetRoomMaterials( TArray<ERaMaterialName> 	InMaterials 	)

Sets Resonance Audio room's acoustic materials

SetRoomPosition void SetRoomPosition( FVector 	InPosition 	)

Sets room position in 3D space

SetRoomRotation void SetRoomRotation( FQuat 	InRotation 	)

Sets room rotation in 3D space

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UResonanceAudioReverbPluginPreset::StaticClass()
```
