# ACameraRig_Crane

**Visibility:** public

## Inheritance

AActor → ACameraRig_Crane

## Description

A simple rig for simulating crane-like camera movements.

## Members

### COMPONENTS

```
CRANE COMPONENTS
```
### CranePitchControl

```
USceneComponent CranePitchControl
```

Component to control Pitch.

### CraneYawControl

```
USceneComponent CraneYawControl
```

Component to control Yaw.

### TransformComponent

```
USceneComponent TransformComponent
```

Root component to give the whole actor a transform.

### CraneCameraMount

```
USceneComponent CraneCameraMount
```

Component to define the attach point for cameras.

### CONTROLS

```
CRANE CONTROLS
```
### CranePitch

```
float32 CranePitch
```

Controls the pitch of the crane arm.

### bLockMountPitch

```
bool bLockMountPitch
```

Lock the mount pitch so that an attached camera is locked and pitched in the direction of the crane arm

### CraneArmLength

```
float32 CraneArmLength
```

Controls the length of the crane arm.

### CraneYaw

```
float32 CraneYaw
```

Controls the yaw of the crane arm.

### bLockMountYaw

```
bool bLockMountYaw
```

Lock the mount yaw so that an attached camera is locked and oriented in the direction of the crane arm

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ACameraRig_Crane ACameraRig_Crane::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ACameraRig_Crane::StaticClass

```
static UClass ACameraRig_Crane::StaticClass()
```
