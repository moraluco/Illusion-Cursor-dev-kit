# UAnimNotifyState_TimedParticleEffect

**Visibility:** public

## Inheritance

UAnimNotifyState → UAnimNotifyState_TimedParticleEffect

## Description

Timed Particle Effect Notify Allows a looping particle effect to be played in an animation that will activate at the beginning of the notify and deactivate at the end.

## PARTICLESYSTEM

### SocketName

```
FName SocketName
```

The socket or bone to attach the system to

### LocationOffset

```
FVector LocationOffset
```

Offset from the socket or bone to place the particle system

### RotationOffset

```
FRotator RotationOffset
```

Rotation offset from the socket or bone for the particle system

### bDestroyAtEnd

```
bool bDestroyAtEnd
```

Whether the particle system should be immediately destroyed at the end of the notify state or be allowed to finish

### PSTemplate

```
UParticleSystem PSTemplate
```

The particle system to spawn for the notify state

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimNotifyState_TimedParticleEffect::StaticClass()
```
