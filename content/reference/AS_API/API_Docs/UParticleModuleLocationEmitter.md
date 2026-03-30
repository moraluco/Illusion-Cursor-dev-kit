# UParticleModuleLocationEmitter

**Visibility:** public

## Inheritance

UParticleModuleLocationBase → UParticleModuleLocationEmitter → LOCATION → SelectionMethod

## Description

ELocationEmitterSelectionMethod SelectionMethod

The method to use when selecting a spawn target particle from the emitter.  Can be one of the following: ELESM_Random  Randomly select a particle from the source emitter.  ELESM_Sequential  Step through each particle from the source emitter in order.

InheritSourceVelocityScale float32 InheritSourceVelocityScale

Amount to scale the source velocity by when inheriting it.

InheritSourceRotationScale float32 InheritSourceRotationScale

Amount to scale the source rotation by when inheriting it.

EmitterName FName EmitterName

The name of the emitter to use that the source location for particle.

## FUNCTIONS

### SetbInheritSourceRotation

```
void SetbInheritSourceRotation(bool Value)
```

SetInheritSourceVelocity

### void SetInheritSourceVelocity

```
void SetInheritSourceVelocity(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleLocationEmitter::StaticClass()
```
