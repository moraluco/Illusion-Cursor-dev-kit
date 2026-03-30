# ANiagaraActor

**Visibility:** public

## Inheritance

AActor → ANiagaraActor → ANiagaraLensEffectBase → NIAGARAACTOR → NiagaraComponent

## Description

UNiagaraComponent NiagaraComponent

Pointer to System component

## NIAGARAACTOR

### SetDestroyOnSystemFinish

```
void SetDestroyOnSystemFinish(bool bShouldDestroyOnSystemFinish)
```

Set true for this actor to self-destruct when the Niagara system finishes, false otherwise

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ANiagaraActor ANiagaraActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ANiagaraActor::StaticClass

```
static UClass ANiagaraActor::StaticClass()
```
