# AEmitter

**Visibility:** public

## Inheritance

AActor → AEmitter → AEmitterCameraLensEffectBase → EMITTER

## Description

bPostUpdateTickGroup bool bPostUpdateTickGroup ParticleSystemComponent UParticleSystemComponent ParticleSystemComponent

## VARIABLES

### OnParticleDeath

```
FParticleDeathSignature OnParticleDeath
```
### OnParticleCollide

```
FParticleCollisionSignature OnParticleCollide
```
### OnParticleBurst

```
FParticleBurstSignature OnParticleBurst OnParticleSpawn FParticleSpawnSignature OnParticleSpawn FUNCTIONS SetbPostUpdateTickGroup void SetbPostUpdateTickGroup(bool Value)
```

GetbPostUpdateTickGroup

### bool GetbPostUpdateTickGroup

```
bool GetbPostUpdateTickGroup()const STATIC FUNCTIONS
```

Spawn

### static AEmitter AEmitter::Spawn

```
static AEmitter AEmitter::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AEmitter::StaticClass

```
static UClass AEmitter::StaticClass()
```
