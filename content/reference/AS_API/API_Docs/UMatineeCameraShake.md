# UMatineeCameraShake

**Visibility:** public

## Inheritance

UCameraShakeBase → UMatineeCameraShake

## Description

Legacy camera shake which can do either oscillation or run camera anims.

## ANIMSHAKE

### AnimScale

```
float32 AnimScale
```

Scalar defining how "intense" to play the anim.

### AnimBlendInTime

```
float32 AnimBlendInTime
```

Linear blend-in time.

### RandomAnimSegmentDuration

```
float32 RandomAnimSegmentDuration
```

When bRandomAnimSegment is true, this defines how long the anim should play.

### AnimSequence

```
UCameraAnimationSequence AnimSequence
```

Source camera animation sequence to play. Can be null, but can't have both Anim and AnimSequence.

### Anim

```
UCameraAnim Anim
```

Source camera animation to play. Can be null.

### AnimPlayRate

```
float32 AnimPlayRate
```

Scalar defining how fast to play the anim.

### AnimBlendOutTime

```
float32 AnimBlendOutTime
```

Linear blend-out time.

---

## CAMERASHAKE

### OscillatorTimeRemaining

```
float32 OscillatorTimeRemaining
```

Time remaining for oscillation shakes. Less than 0.f means shake infinitely.

### AnimInst

```
UCameraAnimInst AnimInst
```

The playing instance of the CameraAnim-based shake, if any.

---

## OSCILLATION

### FOVOscillation

```
FFOscillator FOVOscillation
```
### oscillation

```
FOV oscillation
```
### RotOscillation

```
FROscillator RotOscillation
```
### oscillation

```
Rotational oscillation
```
### LocOscillation

```
FVOscillator LocOscillation
```
### oscillation

```
Positional oscillation
```
### OscillationDuration

```
float32 OscillationDuration
```

Duration in seconds of current screen shake. Less than 0 means indefinite, 0 means no oscillation.

### OscillationBlendOutTime

```
float32 OscillationBlendOutTime
```

Duration of the blend-out, where the oscillation scales from 1 to 0.

### OscillationBlendInTime

```
float32 OscillationBlendInTime
```

Duration of the blend-in, where the oscillation scales from 0 to 1.

### SHAKES

```
CAMERA SHAKES
```

StartMatineeCameraShakeFromSource static UMatineeCameraShake UMatineeCameraShake::StartMatineeCameraShakeFromSource(

### APlayerCameraManager 	PlayerCameraManager,

```
APlayerCameraManager PlayerCameraManager, TSubclassOf<UMatineeCameraShake> ShakeClass, UCameraShakeSourceComponent SourceComponent, float32 Scale = 1.000000, ECameraShakePlaySpace PlaySpace = ECameraShakePlaySpace :: CameraLocal, FRotator UserPlaySpaceRot = FRotator()
```

)

Backwards compatible method used by core BP redirectors. This is needed because the return value is specifically a Matinee camera shake, which some BP logic often uses directly to set oscillator/anim properties.

### StartMatineeCameraShake

```
static UMatineeCameraShake UMatineeCameraShake::StartMatineeCameraShake(
```

APlayerCameraManager 	PlayerCameraManager,

### TSubclassOf<UMatineeCameraShake> 	ShakeClass,

```
TSubclassOf<UMatineeCameraShake> ShakeClass, float32 Scale = 1.000000, ECameraShakePlaySpace PlaySpace = ECameraShakePlaySpace :: CameraLocal, FRotator UserPlaySpaceRot = FRotator()
```

)

### Backwards compatible method used by core BP redirectors. This is needed because the return value is specifically a Matinee camera shake, which some BP logic often uses directly to set oscillator/anim properties.

```
Backwards compatible method used by core BP redirectors. This is needed because the return value is specifically a Matinee camera shake, which some BP logic often uses directly to set oscillator/anim properties.
```

---

## CAMERASHAKE

### StopShake

```
void StopShake(bool bImmediately)
```

Called when the shake is explicitly stopped.

### PlayShake

```
void PlayShake(float32 Scale)
```

Called when the shake starts playing

### IsFinished

```
bool IsFinished()const
```

Called to allow a shake to decide when it's finished playing.

### BlueprintUpdateCameraShake

```
void BlueprintUpdateCameraShake(float32 DeltaTime, float32 Alpha, FMinimalViewInfo POV, FMinimalViewInfo& ModifiedPOV)
```

Called every tick to let the shake modify the point of view

---

## FUNCTIONS

### SetbRandomAnimSegment

```
void SetbRandomAnimSegment(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMatineeCameraShake::StaticClass()
```
