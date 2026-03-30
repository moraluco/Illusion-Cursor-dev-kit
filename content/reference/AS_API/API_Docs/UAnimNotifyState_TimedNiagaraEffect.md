# UAnimNotifyState_TimedNiagaraEffect

**Visibility:** public

## Inheritance

UAnimNotifyState → UAnimNotifyState_TimedNiagaraEffect → UAnimNotifyState_TimedNiagaraEffectAdvanced

## Description

Timed Niagara Effect Notify Allows a looping Niagara effect to be played in an animation that will activate at the beginning of the notify and deactivate at the end.

## NIAGARASYSTEM

### SocketName

```
FName SocketName
```

The socket or bone to attach the system to

### LocationOffset

```
FVector LocationOffset
```

Offset from the socket or bone to place the Niagara system

### RotationOffset

```
FRotator RotationOffset
```

Rotation offset from the socket or bone for the Niagara system

### bDestroyAtEnd

```
bool bDestroyAtEnd
```

Whether the Niagara system should be immediately destroyed at the end of the notify state or be allowed to finish

### Template

```
UNiagaraSystem Template
```

The niagara system to spawn for the notify state

---

## ANIMNOTIFY

### GetSpawnedEffect

```
UFXSystemComponent GetSpawnedEffect(UMeshComponent MeshComp)const
```

Return FXSystemComponent created from SpawnEffect

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimNotifyState_TimedNiagaraEffect::StaticClass()
```
