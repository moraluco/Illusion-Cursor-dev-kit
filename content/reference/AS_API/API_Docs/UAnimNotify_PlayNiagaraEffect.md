# UAnimNotify_PlayNiagaraEffect

**Visibility:** public

## Inheritance

UAnimNotify → UAnimNotify_PlayNiagaraEffect → ANIMNOTIFY → LocationOffset

## Description

FVector LocationOffset

Location offset from the socket

RotationOffset FRotator RotationOffset

Rotation offset from socket

Scale FVector Scale

Scale to spawn the Niagara system at

bAbsoluteScale bool bAbsoluteScale

Whether or not we are in absolute scale mode

SocketName FName SocketName

SocketName to attach to

SpawnedEffect const UFXSystemComponent SpawnedEffect

Return FXSystemComponent created from SpawnEffect

Attached bool Attached

Should attach to the bone/socket

Template UNiagaraSystem Template

Niagara System to Spawn

## ANIMNOTIFY

### GetSpawnedEffect

```
UFXSystemComponent GetSpawnedEffect()const
```

Return FXSystemComponent created from SpawnEffect

---

## FUNCTIONS

### SetAttached

```
void SetAttached(bool Value)
```

GetAttached

### bool GetAttached

```
bool GetAttached()const STATIC FUNCTIONS
```

StaticClass

### static UClass UAnimNotify_PlayNiagaraEffect::StaticClass

```
static UClass UAnimNotify_PlayNiagaraEffect::StaticClass()
```
