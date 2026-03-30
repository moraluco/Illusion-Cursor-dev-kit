# UNiagaraEffectType

**Visibility:** public

## Inheritance

UObject → UNiagaraEffectType

## Description

Contains settings and working data shared among many NiagaraSystems that share some commonality of type. For example ImpactFX vs EnvironmentalFX.

## PERFORMANCE

### PerformanceBaselineController

```
UNiagaraBaselineController PerformanceBaselineController
```

Controls generation of performance baseline data for this effect type.

---

## SCALABILITY

### CullReaction

```
ENiagaraCullReaction CullReaction
```

How effects of this type react when they fail the cull checks.

### SignificanceHandler

```
UNiagaraSignificanceHandler SignificanceHandler
```

Used to determine the relative significance of FX in the scene which is used in other scalability systems such as instance count culling.

### SystemScalabilitySettings

```
FNiagaraSystemScalabilitySettingsArray SystemScalabilitySettings
```
### EmitterScalabilitySettings

```
FNiagaraEmitterScalabilitySettingsArray EmitterScalabilitySettings
```
### UpdateFrequency

```
ENiagaraScalabilityUpdateFrequency UpdateFrequency
```

How regularly effects of this type are checked for scalability.

### bAllowCullingForLocalPlayers

```
bool bAllowCullingForLocalPlayers
```

Controls whether or not culling is allowed for FX that are owned by, attached to or instigated by a locally controlled pawn.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraEffectType::StaticClass()
```
