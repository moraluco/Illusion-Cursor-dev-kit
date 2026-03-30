# UBodySetupCore

**Visibility:** public

## Inheritance

UObject → UBodySetupCore → UBodySetup → COLLISION → CollisionTraceFlag

## Description

ECollisionTraceFlag CollisionTraceFlag Collision Trace behavior

by default, it will keep simple(convex)/complex(per-poly) separate

CollisionReponse EBodyCollisionResponse CollisionReponse

Collision Type for this body. This eventually changes response to collision to others

## PHYSICS

### PhysicsType

```
EPhysicsType PhysicsType
```

If simulated it will use physics, if kinematic it will not be affected by physics, but can interact with physically simulated bodies. Default will inherit from OwnerComponent's behavior.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBodySetupCore::StaticClass()
```
