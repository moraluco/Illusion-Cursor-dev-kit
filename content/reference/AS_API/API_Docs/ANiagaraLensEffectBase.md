# ANiagaraLensEffectBase

**Visibility:** public

## Inheritance

ANiagaraActor → ANiagaraLensEffectBase

## Description

Niagara equivalent of AEmitterCameraLensEffectBase.  This class is supported by APlayerCameraManager (via ICameraLensEffectInterface) as a camera lens effect.

## Members

### ACTIVATION

```
EFFECT ACTIVATION
```
### EmittersToTreatAsSame

```
TArray<TSubclassOf<AActor>> EmittersToTreatAsSame
```

If an effect class in this array is currently playing, do not play this effect.  Useful for preventing multiple similar or expensive camera effects from playing simultaneously.

### SCALE

```
POSITIONING AND SCALE
```
### BaseAuthoredFOV

```
float32 BaseAuthoredFOV
```

FOVs that differ from this may cause adjustments in positioning.  This is the FOV which the effect was tested with.

### DesiredRelativeTransform

```
FTransform DesiredRelativeTransform
```

Relative offset from the camera (where X is out from the camera) Might be changed slightly when the FOV is different than expected.

---

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

Spawn static ANiagaraLensEffectBase ANiagaraLensEffectBase::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass ANiagaraLensEffectBase::StaticClass()
```
