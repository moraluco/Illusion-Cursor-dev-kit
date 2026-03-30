# USoundSubmixBase

**Visibility:** public

## Inheritance

UObject → USoundSubmixBase → UEndpointSubmix → USoundfieldEndpointSubmix → USoundSubmixWithParentBase → AUTODISABLEMENT → AutoDisableTime

## Description

float32 AutoDisableTime

The minimum amount of time to wait before automatically disabling a submix if it is silent. Will immediately re-enable if source audio is sent to it.

bAutoDisable bool bAutoDisable

Auto-manage enabling and disabling the submix as a CPU optimization. It will be disabled if the submix and all child submixes are silent. It will re-enable if a sound is sent to the submix or a child submix is audible.

## SOUNDSUBMIX

### ChildSubmixes

```
TArray<TObjectPtr<USoundSubmixBase>> ChildSubmixes
```

Child submixes to this sound mix

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundSubmixBase::StaticClass()
```
