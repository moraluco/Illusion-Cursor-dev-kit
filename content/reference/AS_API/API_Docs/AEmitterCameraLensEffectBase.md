# AEmitterCameraLensEffectBase

**Visibility:** public

## Inheritance

AEmitter → AEmitterCameraLensEffectBase → EMITTERCAMERALENSEFFECTBASE → RelativeTransform

## Description

FTransform RelativeTransform

Effect-to-camera transform to allow arbitrary placement of the particle system .  Note the X component of the location will be scaled with camera fov to keep the lens effect the same apparent size.

BaseFOV float32 BaseFOV

This is the assumed FOV for which the effect was authored. The code will make automatic adjustments to make it look the same at different FOVs

EmittersToTreatAsSame TArray<TSubclassOf<AActor>> EmittersToTreatAsSame

If an emitter class in this array is currently playing, do not play this effect.  Useful for preventing multiple similar or expensive camera effects from playing simultaneously.

PS_CameraEffect UParticleSystem PS_CameraEffect

Particle System to use

## FUNCTIONS

### SetbResetWhenRetriggered

```
void SetbResetWhenRetriggered(bool Value)
```

SetbAllowMultipleInstances

### void SetbAllowMultipleInstances

```
void SetbAllowMultipleInstances(bool Value)
```

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static AEmitterCameraLensEffectBase AEmitterCameraLensEffectBase::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AEmitterCameraLensEffectBase::StaticClass()
```
