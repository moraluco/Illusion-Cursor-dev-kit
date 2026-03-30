# UNiagaraEmitter

**Visibility:** public

## Inheritance

UObject → UNiagaraEmitter

## Description

UNiagaraEmitter stores the attributes of an FNiagaraEmitterInstance that need to be serialized and are used for its initialization

## Members

### OPTIONS

```
ASSET OPTIONS
```
### TemplateSpecification

```
ENiagaraScriptTemplateSpecification TemplateSpecification
```

If this emitter is a standard parent emitter, a template or a behavior example. Templates and behavior examples get copied rather than inherited from.

### LibraryVisibility

```
ENiagaraScriptLibraryVisibility LibraryVisibility
```

If this emitter is exposed to the library, or should be explicitly hidden.

### TemplateAssetDescription

```
FText TemplateAssetDescription
```
### Category

```
FText Category
```

Category to collate this emitter into for "add new emitter" dialogs.

---

## EMITTER

### AttributesToPreserve

```
TArray<FString> AttributesToPreserve
```

An allow list of Particle attributes (e.g. "Particle.Position" or "Particle.Age") that will not be removed from the DataSet  even if they aren't read by the VM.  Used in conjunction with UNiagaraSystem::bTrimAttributes

### bDeterminism

```
bool bDeterminism
```

Toggles whether to globally make the random number generator be deterministic or non-deterministic. Any random calculation that is set to the emitter defaults will inherit this value. It is still possible to tweak individual random to be deterministic or not. In this case deterministic means that it will return the same results for the same configuration of the emitter as long as delta time is not variable. Any changes to the emitter's individual scripts will adjust the results.

### AllocationMode

```
EParticleAllocationMode AllocationMode
```

The emitter needs to allocate memory for the particles each tick.  To prevent reallocations, the emitter should allocate as much memory as is needed for the max particle count.  This setting controls if the allocation size should be automatically determined or manually entered.

### FixedBounds

```
FBox FixedBounds
```

The fixed bounding box value. bFixedBounds is the condition whether the fixed bounds can be edited.

### PreAllocationCount

```
int PreAllocationCount
```

The emitter will allocate at least this many particles on it's first tick.  This can aid performance by avoiding many allocations as an emitter ramps up to it's max size.

### MaxDeltaTimePerTick

```
float32 MaxDeltaTimePerTick
```

Limits the delta time per tick to prevent simulation spikes due to frame lags.

### MaxGPUParticlesSpawnPerFrame

```
int MaxGPUParticlesSpawnPerFrame
```

An override on the max number of GPU particles we expect to spawn in a single frame. A value of 0 means it'll use fx.MaxNiagaraGPUParticlesSpawnPerFrame.

### RandomSeed

```
int RandomSeed
```

An emitter-based seed for the deterministic random number generator.

### SimTarget

```
ENiagaraSimTarget SimTarget
```
### bLocalSpace

```
bool bLocalSpace
```

Toggles whether or not the particles within this emitter are relative to the emitter origin or in global space.

---

## EVENTS

### EventHandlerScriptProps

```
TArray<FNiagaraEventScriptProperties> EventHandlerScriptProps
```

---

## SCALABILITY

### ScalabilityOverrides

```
FNiagaraEmitterScalabilityOverrides ScalabilityOverrides Platforms FNiagaraPlatformSet Platforms FUNCTIONS SetbFixedBounds void SetbFixedBounds(bool Value)
```

SetbRequiresPersistentIDs

### void SetbRequiresPersistentIDs

```
void SetbRequiresPersistentIDs(bool Value)
```

SetbCombineEventSpawn

### void SetbCombineEventSpawn

```
void SetbCombineEventSpawn(bool Value)
```

SetbLimitDeltaTime

### void SetbLimitDeltaTime

```
void SetbLimitDeltaTime(bool Value)
```

SetbInterpolatedSpawning

### void SetbInterpolatedSpawning

```
void SetbInterpolatedSpawning(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraEmitter::StaticClass()
```
