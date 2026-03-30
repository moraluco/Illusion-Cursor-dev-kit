# UParticleEmitter

**Visibility:** public

## Inheritance

UObject → UParticleEmitter → UParticleSpriteEmitter → CASCADE → EmitterRenderMode

## Description

EEmitterRenderMode EmitterRenderMode

How to render the emitter particles. Can be one of the following: ERM_Normal  - As the intended sprite/mesh ERM_Point  - As a 2x2 pixel block with no scaling and the color set in EmitterEditorColor ERM_Cross  - As a cross of lines, scaled to the size of the particle in EmitterEditorColor ERM_None  - Do not render

EmitterEditorColor FColor EmitterEditorColor

The color of the emitter in the curve editor and debug rendering modes.

## PARTICLE

### DetailModeBitmask

```
uint DetailModeBitmask
```

Detail mode: Set flags reflecting which system detail mode you want the emitter to be ticked and rendered in

### InitialAllocationCount

```
int InitialAllocationCount
```

Initial allocation count

### 0

```
overrides calculated peak count if > 0
```
### QualityLevelSpawnRateScale

```
float32 QualityLevelSpawnRateScale
```
### EmitterName

```
FName EmitterName
```

The name of the emitter.

---

## SIGNIFICANCE

### SignificanceLevel

```
EParticleSignificanceLevel SignificanceLevel
```

The significance level required of this emitter's owner for this emitter to be active.

---

## FUNCTIONS

### SetbDisabledLODsKeepEmitterAlive

```
void SetbDisabledLODsKeepEmitterAlive(bool Value)
```

SetbDisableWhenInsignficant

### void SetbDisableWhenInsignficant

```
void SetbDisableWhenInsignficant(bool Value)
```

SetbCollapsed

### void SetbCollapsed

```
void SetbCollapsed(bool Value)
```

SetbUseLegacySpawningBehavior

### void SetbUseLegacySpawningBehavior

```
void SetbUseLegacySpawningBehavior(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleEmitter::StaticClass()
```
