# UNiagaraSystem

**Visibility:** public

## Inheritance

UFXSystemAsset → UNiagaraSystem

## Description

Container for multiple emitters that combine together to create a particle system effect.

## Members

### OPTIONS

```
ASSET OPTIONS
```
### TemplateSpecification

```
ENiagaraScriptTemplateSpecification TemplateSpecification
```

If this system is a regular system, a template or a behavior example.

### TemplateAssetDescription

```
FText TemplateAssetDescription
```
### Category

```
FText Category
```

Category of this system.

### LibraryVisibility

```
ENiagaraScriptLibraryVisibility LibraryVisibility
```

If this system is exposed to the library, or should be explicitly hidden.

---

## DEBUG

### bDumpDebugSystemInfo

```
bool bDumpDebugSystemInfo
```
### bDumpDebugEmitterInfo

```
bool bDumpDebugEmitterInfo
```

---

## PERFORMANCE

### bAutoDeactivate

```
bool bAutoDeactivate
```

Auto-deactivate system if all emitters are determined to not spawn particles again, regardless of lifetime.

### bRequireCurrentFrameData

```
bool bRequireCurrentFrameData
```

When enabled, we follow the settings on the UNiagaraComponent for tick order. When this option is disabled, we ignore any dependencies from data interfaces or other variables and instead fire off the simulation as early in the frame as possible. This greatly reduces overhead and allows the game thread to run faster, but comes at a tradeoff if the dependencies might leave gaps or other visual artifacts.

---

## RANDOM

### RandomSeed

```
int RandomSeed
```

Seed used for system script random number generator.

### bDeterminism

```
bool bDeterminism
```

When disabled we will generate a RandomSeed per instance on reset which is not deterministic.  When enabled we will always use the RandomSeed from the system plus the components RandomSeedOffset, this allows for determinism but variance between components.

---

## RENDERING

### bReceivesDecals

```
bool bReceivesDecals
```

When enabled this is the default value set on the component.  Whether the primitive receives decals.

### CustomDepthStencilWriteMask

```
ERendererStencilMask CustomDepthStencilWriteMask
```

When enabled this is the default value set on the component.  Mask used for stencil buffer writes.

### CustomDepthStencilValue

```
int CustomDepthStencilValue
```

When enabled this is the default value set on the component.  Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)

### bCastShadow

```
bool bCastShadow
```

When enabled this is the default value set on the component.  Controls whether the primitive component should cast a shadow or not.

### bRenderCustomDepth

```
bool bRenderCustomDepth
```

When enabled this is the default value set on the component.  This primitive has bRenderCustomDepth enabled.

---

## SCALABILITY

### bOverrideScalabilitySettings

```
bool bOverrideScalabilitySettings
```
### SystemScalabilityOverrides

```
FNiagaraSystemScalabilityOverrides SystemScalabilityOverrides
```

---

## SYSTEM

### FixedBounds

```
FBox FixedBounds
```

The fixed bounding box value. bFixedBounds is the condition whether the fixed bounds can be edited.

### EffectType

```
UNiagaraEffectType EffectType
```
### ParameterCollectionOverrides

```
TArray<TObjectPtr<UNiagaraParameterCollectionInstance>> ParameterCollectionOverrides
```
### bFixedTickDelta

```
bool bFixedTickDelta
```
### FixedTickDeltaTime

```
float32 FixedTickDeltaTime
```

If activated, the system ticks with a fixed delta time instead of the varying game thread delta time. This leads to much more stable simulations.  When the fixed tick delta is smaller than the game thread tick time the simulation is substepping by executing multiple ticks per frame.  Note that activating this feature forces the system to tick on the game thread instead of an async task in parallel.

The max number of substeps per frame can be set via fx.Niagara.SystemSimulation.MaxTickSubsteps

---

## WARMUP

### WarmupTickCount

```
int WarmupTickCount
```

Number of ticks to process for warmup. You can set by this or by time via WarmupTime.

### WarmupTime

```
float32 WarmupTime
```

Warm up time in seconds. Used to calculate WarmupTickCount. Rounds down to the nearest multiple of WarmupTickDelta.

### WarmupTickDelta

```
float32 WarmupTickDelta
```

Delta time to use for warmup ticks.

---

## FUNCTIONS

### SetbOverrideCustomDepthStencilValue

```
void SetbOverrideCustomDepthStencilValue(bool Value)
```

SetbBakeOutRapidIterationOnCook

### void SetbBakeOutRapidIterationOnCook

```
void SetbBakeOutRapidIterationOnCook(bool Value)
```

SetbCompressAttributes

### void SetbCompressAttributes

```
void SetbCompressAttributes(bool Value)
```

SetbTrimAttributes

### void SetbTrimAttributes

```
void SetbTrimAttributes(bool Value)
```

SetbTrimAttributesOnCook

### void SetbTrimAttributesOnCook

```
void SetbTrimAttributesOnCook(bool Value)
```

SetbIgnoreParticleReadsForAttributeTrim

### void SetbIgnoreParticleReadsForAttributeTrim

```
void SetbIgnoreParticleReadsForAttributeTrim(bool Value)
```

SetbDisableDebugSwitches

### void SetbDisableDebugSwitches

```
void SetbDisableDebugSwitches(bool Value)
```

SetbDisableDebugSwitchesOnCook

### void SetbDisableDebugSwitchesOnCook

```
void SetbDisableDebugSwitchesOnCook(bool Value)
```

SetbSupportLargeWorldCoordinates

### void SetbSupportLargeWorldCoordinates

```
void SetbSupportLargeWorldCoordinates(bool Value)
```

SetbOverrideCastShadow

### void SetbOverrideCastShadow

```
void SetbOverrideCastShadow(bool Value)
```

SetbOverrideReceivesDecals

### void SetbOverrideReceivesDecals

```
void SetbOverrideReceivesDecals(bool Value)
```

SetbOverrideRenderCustomDepth

### void SetbOverrideRenderCustomDepth

```
void SetbOverrideRenderCustomDepth(bool Value)
```

SetbBakeOutRapidIteration

### void SetbBakeOutRapidIteration

```
void SetbBakeOutRapidIteration(bool Value)
```

SetbOverrideCustomDepthStencilWriteMask

### void SetbOverrideCustomDepthStencilWriteMask

```
void SetbOverrideCustomDepthStencilWriteMask(bool Value)
```

GetbCastShadow

### bool GetbCastShadow

```
bool GetbCastShadow()const SetbCastShadow
```

void SetbCastShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbReceivesDecals

### bool GetbReceivesDecals

```
bool GetbReceivesDecals()const SetbReceivesDecals
```

void SetbReceivesDecals(

### bool 	Value

```
bool 	Value 	)
```

GetbRenderCustomDepth

### bool GetbRenderCustomDepth

```
bool GetbRenderCustomDepth()const SetbRenderCustomDepth
```

void SetbRenderCustomDepth(

### bool 	Value

```
bool 	Value 	)
```

SetbFixedBounds

### void SetbFixedBounds

```
void SetbFixedBounds(bool Value)
```

SetbOverrideAllowCullingForLocalPlayers

### void SetbOverrideAllowCullingForLocalPlayers

```
void SetbOverrideAllowCullingForLocalPlayers(bool Value)
```

SetbAllowCullingForLocalPlayersOverride

### void SetbAllowCullingForLocalPlayersOverride

```
void SetbAllowCullingForLocalPlayersOverride(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraSystem::StaticClass()
```
