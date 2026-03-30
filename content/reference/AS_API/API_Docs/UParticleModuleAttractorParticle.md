# UParticleModuleAttractorParticle

**Visibility:** public

## Inheritance

UParticleModuleAttractorBase → UParticleModuleAttractorParticle → ATTRACTOR → Range

## Description

FRawDistributionFloat Range

The radial range of the attraction around the source particle.  Particle-life relative.

Strength FRawDistributionFloat Strength

The strength of the attraction (negative values repel).  Particle-life relative if StrengthByDistance is false.

EmitterName FName EmitterName

The source emitter for attractors

## LOCATION

### SelectionMethod

```
EAttractorParticleSelectionMethod SelectionMethod
```

The method to use when selecting an attractor target particle from the emitter.  One of the following: Random  - Randomly select a particle from the source emitter.  Sequential  - Select a particle using a sequential order.

---

## FUNCTIONS

### SetbAffectBaseVelocity

```
void SetbAffectBaseVelocity(bool Value)
```

SetbRenewSource

### void SetbRenewSource

```
void SetbRenewSource(bool Value)
```

SetbInheritSourceVel

### void SetbInheritSourceVel

```
void SetbInheritSourceVel(bool Value)
```

SetbStrengthByDistance

### void SetbStrengthByDistance

```
void SetbStrengthByDistance(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleAttractorParticle::StaticClass()
```
