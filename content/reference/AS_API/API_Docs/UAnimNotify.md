# UAnimNotify

**Visibility:** public

## Inheritance

UObject → UAnimNotify → UAnimNotify_PauseClothingSimulation → UAnimNotify_PlayMontageNotify → UAnimNotify_PlayNiagaraEffect → UAnimNotify_PlayParticleEffect

## Description

and 4 other children

## ANIMNOTIFY

### bShouldFireInEditor

```
bool bShouldFireInEditor
```

Whether this notify instance should fire in animation editors

### NotifyColor

```
FColor NotifyColor
```

Color of Notify in editor

---

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

### Notify

```
bool Notify(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, FAnimNotifyEventReference EventReference)const
```

GetDefaultTriggerWeightThreshold

### float32 GetDefaultTriggerWeightThreshold

```
float32 GetDefaultTriggerWeightThreshold()const
```

TriggerWeightThreshold to use when creating notifies of this type

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimNotify::StaticClass()
```
