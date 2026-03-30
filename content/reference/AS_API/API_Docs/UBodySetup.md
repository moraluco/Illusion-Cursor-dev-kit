# UBodySetup

**Visibility:** public

## Inheritance

UBodySetupCore → UBodySetup → USkeletalBodySetup

## Description

BodySetup contains all collision information that is associated with a single asset.  A single BodySetup instance is shared among many BodyInstances so that geometry data is not duplicated.  Assets typically implement a GetBodySetup function that is used during physics state creation.

### See also

- GetBodySetup @see FBodyInstance

## BODYSETUP

### AggGeom

```
FKAggregateGeom AggGeom
```

Simplified collision representation of this

---

## COLLISION

### DefaultInstance

```
FBodyInstance DefaultInstance
```

Default properties of the body instance, copied into objects on instantiation, was URB_BodyInstance

---

## PHYSICS

### WalkableSlopeOverride

```
FWalkableSlopeOverride WalkableSlopeOverride
```

Custom walkable slope setting for this body.

### PhysMaterial

```
UPhysicalMaterial PhysMaterial
```

Physical material to use for simple collision on this body. Encodes information about density, friction etc.

---

## FUNCTIONS

### SetbDoubleSidedGeometry

```
void SetbDoubleSidedGeometry(bool Value)
```

SetbNeverNeedsCookedCollisionData

### void SetbNeverNeedsCookedCollisionData

```
void SetbNeverNeedsCookedCollisionData(bool Value)
```

SetbConsiderForBounds

### void SetbConsiderForBounds

```
void SetbConsiderForBounds(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBodySetup::StaticClass()
```
