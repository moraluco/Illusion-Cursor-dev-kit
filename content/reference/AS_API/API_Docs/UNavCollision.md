# UNavCollision

**Visibility:** public

## Inheritance

UNavCollisionBase → UNavCollision → NAVIGATION → BoxCollision

## Description

TArray<FNavCollisionBox> BoxCollision

list of nav collision boxes

AreaClass TSubclassOf<UNavArea> AreaClass

navigation area type that will be use when this static mesh is used as a navigation obstacle. See bIsDynamicObstacle.  Empty AreaClass means the default obstacle class will be used

CylinderCollision TArray<FNavCollisionCylinder> CylinderCollision

list of nav collision cylinders

## FUNCTIONS

### SetbCreateOnClient

```
void SetbCreateOnClient(bool Value)
```

SetbGatherConvexGeometry

### void SetbGatherConvexGeometry

```
void SetbGatherConvexGeometry(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNavCollision::StaticClass()
```
