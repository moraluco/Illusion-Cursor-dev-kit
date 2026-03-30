# UParticleModuleSpawn

**Visibility:** public

## Inheritance

UParticleModuleSpawnBase → UParticleModuleSpawn → BURST → BurstList

## Description

TArray<FParticleBurst> BurstList

The array of burst entries.

ParticleBurstMethod EParticleBurstMethod ParticleBurstMethod

The method to utilize when burst-emitting particles.

BurstScale FRawDistributionFloat BurstScale

Scale all burst entries by this amount.

## SPAWN

### RateScale

```
FRawDistributionFloat RateScale
```

The scalar to apply to the rate.

### Rate

```
FRawDistributionFloat Rate
```

The rate at which to spawn particles.

---

## FUNCTIONS

### SetbApplyGlobalSpawnRateScale

```
void SetbApplyGlobalSpawnRateScale(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleSpawn::StaticClass()
```
