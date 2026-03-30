# UNiagaraBaselineController

**Visibility:** public

## Inheritance

UObject → UNiagaraBaselineController → UNiagaraBaselineController_Basic

## Description

Base class for baseline controllers. These can are responsible for spawning and manipulating the FX needed for the baseline perf tests.

## BASELINE

### EffectType

```
UNiagaraEffectType EffectType
```

The effect type this controller is in use by.

### Owner

```
ANiagaraPerfBaselineActor Owner
```

The owning actor for this baseline controller.

### System

```
UNiagaraSystem System
```

The baseline system to spawn.

### TestDuration

```
float32 TestDuration
```

Duration to gather performance stats for the given system.

---

## BASELINE

### GetSystem

```
UNiagaraSystem GetSystem()
```

Returns the System for this baseline. Will synchronously load the system if needed.

---

## FUNCTIONS

### OnEndTest

```
void OnEndTest(FNiagaraPerfBaselineStats Stats)
```

Called from the stats system on completion of the test with the final stats for the given system asset.

### OnOwnerTick

```
void OnOwnerTick(float32 DeltaTime)
```

Called when the owning actor is ticked.

### OnTickTest

```
bool OnTickTest()
```

Returns whether the baseline test is complete.

### SetSystem

```
void SetSystem(TSoftObjectPtr<UNiagaraSystem> Value)
```

OnBeginTest

### void OnBeginTest

```
void OnBeginTest()
```

Called from the stats system when we begin gathering stats for the given System asset.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraBaselineController::StaticClass()
```
