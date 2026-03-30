# UParticleModuleEventReceiverSpawn

**Visibility:** public

## Inheritance

UParticleModuleEventReceiverBase → UParticleModuleEventReceiverSpawn → COLLISION → PhysicalMaterials

## Description

TArray<TObjectPtr<UPhysicalMaterial>> PhysicalMaterials

Array of physical materials that can be used to allow or ban a specific set of materials when receiving collision events.

## SPAWN

### SpawnCount

```
FRawDistributionFloat SpawnCount
```

The number of particles to spawn.

---

## VELOCITY

### InheritVelocityScale

```
FRawDistributionVector InheritVelocityScale
```

If bInheritVelocity is true, scale the velocity with this.

---

## FUNCTIONS

### SetbUsePSysLocation

```
void SetbUsePSysLocation(bool Value)
```

SetbInheritVelocity

### void SetbInheritVelocity

```
void SetbInheritVelocity(bool Value)
```

SetbBanPhysicalMaterials

### void SetbBanPhysicalMaterials

```
void SetbBanPhysicalMaterials(bool Value)
```

SetbUseParticleTime

### void SetbUseParticleTime

```
void SetbUseParticleTime(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleEventReceiverSpawn::StaticClass()
```
