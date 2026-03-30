# UNiagaraDataInterfaceActorComponent

**Visibility:** public

## Inheritance

UNiagaraDataInterface → UNiagaraDataInterfaceActorComponent

## Description

Data interface that gives you access to actor & component information.

## ACTORCOMPONENT

### ActorOrComponentParameter

```
FNiagaraUserParameterBinding ActorOrComponentParameter
```

User parameter binding to use, overrides SourceActor.  Can be set by Blueprint, etc.

---

## PERFORMANCE

### bRequireCurrentFrameData

```
bool bRequireCurrentFrameData
```

When this option is disabled, we use the previous frame's data for the skeletal mesh and can often issue the simulation early. This greatly reduces overhead and allows the game thread to run faster, but comes at a tradeoff if the dependencies might leave gaps or other visual artifacts.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceActorComponent::StaticClass()
```
