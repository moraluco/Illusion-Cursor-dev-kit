# UParticleModuleSpawnPerUnit

**Visibility:** public

## Inheritance

UParticleModuleSpawnBase → UParticleModuleSpawnPerUnit → SPAWN → MovementTolerance

## Description

float32 MovementTolerance

The tolerance for moving vs. not moving w.r.t. the bIgnoreSpawnRateWhenMoving flag.  Ie, if (DistanceMoved < (UnitScalar x MovementTolerance)) then consider it not moving.

SpawnPerUnit FRawDistributionFloat SpawnPerUnit

The amount to spawn per meter distribution.  The value is retrieved using the EmitterTime.

MaxFrameDistance float32 MaxFrameDistance

The maximum valid movement for a single frame.  If 0.0, then the check is not performed.  Currently, if the distance moved between frames is greater than this then NO particles will be spawned.  This is primiarily intended to cover cases where the PSystem is attached to teleporting objects.

UnitScalar float32 UnitScalar

The scalar to apply to the distance traveled.  The value from SpawnPerUnit is divided by this value to give the actual number of particles per unit.

## FUNCTIONS

### SetbIgnoreMovementAlongX

```
void SetbIgnoreMovementAlongX(bool Value)
```

SetbIgnoreMovementAlongY

### void SetbIgnoreMovementAlongY

```
void SetbIgnoreMovementAlongY(bool Value)
```

SetbIgnoreMovementAlongZ

### void SetbIgnoreMovementAlongZ

```
void SetbIgnoreMovementAlongZ(bool Value)
```

SetbIgnoreSpawnRateWhenMoving

### void SetbIgnoreSpawnRateWhenMoving

```
void SetbIgnoreSpawnRateWhenMoving(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleSpawnPerUnit::StaticClass()
```
