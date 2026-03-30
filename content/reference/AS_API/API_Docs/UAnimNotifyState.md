# UAnimNotifyState

**Visibility:** public

## Inheritance

UObject → UAnimNotifyState → UAnimNotify_PlayMontageNotifyWindow → UAnimNotifyState_DisableRootMotion → UAnimNotifyState_TimedNiagaraEffect → UAnimNotifyState_TimedParticleEffect → UAnimNotifyState_Trail → ANIMNOTIFY

## Description

bShouldFireInEditor bool bShouldFireInEditor

Whether this notify state instance should fire in animation editors

NotifyColor FColor NotifyColor

Color of Notify in editor

## VARIABLES

### NotifyName

```
const FString NotifyName
```

Implementable event to get a custom name for the notify

### DefaultTriggerWeightThreshold

```
const float32 DefaultTriggerWeightThreshold
```

TriggerWeightThreshold to use when creating notifies of this type

---

## FUNCTIONS

### GetNotifyName

```
FString GetNotifyName()const
```

Implementable event to get a custom name for the notify

### NotifyBegin

```
bool NotifyBegin(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, float32 TotalDuration, FAnimNotifyEventReference EventReference)const
```

NotifyEnd

### bool NotifyEnd

```
bool NotifyEnd(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, FAnimNotifyEventReference EventReference)const
```

NotifyTick

### bool NotifyTick

```
bool NotifyTick(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, float32 FrameDeltaTime, FAnimNotifyEventReference EventReference)const
```

GetDefaultTriggerWeightThreshold

### float32 GetDefaultTriggerWeightThreshold

```
float32 GetDefaultTriggerWeightThreshold()const
```

TriggerWeightThreshold to use when creating notifies of this type

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimNotifyState::StaticClass()
```
