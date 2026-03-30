# UNiagaraSimulationStageGeneric

**Visibility:** public

## Inheritance

UNiagaraSimulationStageBase → UNiagaraSimulationStageGeneric

## Description

SIMULATION STAGE Iterations int Iterations

The number of times we run this simulation stage before moving to the next stage.

ExecuteBehavior ENiagaraSimStageExecuteBehavior ExecuteBehavior

Controls when the simulation stage should execute, only valid for data interface iteration stages

ParticleIterationStateRange FIntPoint ParticleIterationStateRange

The inclusive range used to check particle state binding against when enabled.

OverrideGpuDispatchNumThreads FIntVector OverrideGpuDispatchNumThreads IterationSource ENiagaraIterationSource IterationSource

Determine which elements this script is iterating over. You are not allowed to

## FUNCTIONS

### SetbParticleIterationStateEnabled

```
void SetbParticleIterationStateEnabled(bool Value)
```

SetbGpuDispatchForceLinear

### void SetbGpuDispatchForceLinear

```
void SetbGpuDispatchForceLinear(bool Value)
```

SetbOverrideGpuDispatchNumThreads

### void SetbOverrideGpuDispatchNumThreads

```
void SetbOverrideGpuDispatchNumThreads(bool Value)
```

SetbDisablePartialParticleUpdate

### void SetbDisablePartialParticleUpdate

```
void SetbDisablePartialParticleUpdate(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraSimulationStageGeneric::StaticClass()
```
