# APhysicsThruster

**Visibility:** public

## Inheritance

ARigidBodyBase → APhysicsThruster

## Description

Attach one of these on an object using physics simulation and it will apply a force down the negative-X direction ie. point X in the direction you want the thrust in.

## PHYSICS

### ThrusterComponent

```
UPhysicsThrusterComponent ThrusterComponent
```
### component

```
Thruster component
```
### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static APhysicsThruster APhysicsThruster::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APhysicsThruster::StaticClass

```
static UClass APhysicsThruster::StaticClass()
```
