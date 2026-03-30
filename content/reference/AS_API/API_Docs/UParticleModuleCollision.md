# UParticleModuleCollision

**Visibility:** public

## Inheritance

UParticleModuleCollisionBase → UParticleModuleCollision → COLLISION → ParticleMass

## Description

FRawDistributionFloat ParticleMass The mass of the particle

for use when bApplyPhysics is true.  Value is obtained using the EmitterTime at particle spawn.

DampingFactorRotation FRawDistributionVector DampingFactorRotation

How much to `slow' the rotation of the particle after a collision.  Value is obtained using the EmitterTime at particle spawn.

MaxCollisions FRawDistributionFloat MaxCollisions

The maximum number of collisions a particle can have.  Value is obtained using the EmitterTime at particle spawn.

CollisionCompletionOption EParticleCollisionComplete CollisionCompletionOption

What to do once a particles MaxCollisions is reached.  One of the following: EPCC_Kill Kill the particle when MaxCollisions is reached EPCC_Freeze Freeze in place, NO MORE UPDATES EPCC_HaltCollisions, Stop collision checks, keep updating everything EPCC_FreezeTranslation, Stop translations, keep updating everything else EPCC_FreezeRotation, Stop rotations, keep updating everything else EPCC_FreezeMovement Stop all movement, keep updating

CollisionTypes TArray<EObjectTypeQuery> CollisionTypes

Which ObjectTypes to collide with

DampingFactor FRawDistributionVector DampingFactor

How much to `slow' the velocity of the particle after a collision.  Value is obtained using the EmitterTime at particle spawn.

DirScalar float32 DirScalar The directional scalar value

used to scale the bounds to 'assist' in avoiding inter-penetration or large gaps.

VerticalFudgeFactor float32 VerticalFudgeFactor

The fudge factor to use to determine vertical.  True vertical will have a Hit.Normal.Z == 1.0 This will allow for Z components in the range of [1.0-VerticalFudgeFactor..1.0] to count as vertical collisions.

DelayAmount FRawDistributionFloat DelayAmount

How long to delay before checking a particle for collisions.  Value is retrieved using the EmitterTime.  During update, the particle flag IgnoreCollisions will be set until the particle RelativeTime has surpassed the DelayAmount.

## PERFORMANCE

### MaxCollisionDistance

```
float32 MaxCollisionDistance
```

Max distance at which particle collision will occur.

---

## FUNCTIONS

### SetbIgnoreTriggerVolumes

```
void SetbIgnoreTriggerVolumes(bool Value)
```

SetbPawnsDoNotDecrementCount

### void SetbPawnsDoNotDecrementCount

```
void SetbPawnsDoNotDecrementCount(bool Value)
```

SetbOnlyVerticalNormalsDecrementCount

### void SetbOnlyVerticalNormalsDecrementCount

```
void SetbOnlyVerticalNormalsDecrementCount(bool Value)
```

SetbDropDetail

### void SetbDropDetail

```
void SetbDropDetail(bool Value)
```

SetbCollideOnlyIfVisible

### void SetbCollideOnlyIfVisible

```
void SetbCollideOnlyIfVisible(bool Value)
```

SetbIgnoreSourceActor

### void SetbIgnoreSourceActor

```
void SetbIgnoreSourceActor(bool Value)
```

SetbApplyPhysics

### void SetbApplyPhysics

```
void SetbApplyPhysics(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleCollision::StaticClass()
```
