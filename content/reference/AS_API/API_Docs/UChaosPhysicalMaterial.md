# UChaosPhysicalMaterial

**Visibility:** public

## Inheritance

UObject → UChaosPhysicalMaterial

## Description

Physical materials are used to define the response of a physical object when interacting dynamically with the world.

## PHYSICALMATERIAL

### StaticFriction

```
float32 StaticFriction
```

Friction value of surface at rest, controls how easily things can slide on this surface (0 is frictionless, higher values increase the amount of friction)

### Restitution

```
float32 Restitution
```

Restitution or 'bounciness' of this surface, between 0 (no bounce) and 1 (outgoing velocity is same as incoming).

### LinearEtherDrag

```
float32 LinearEtherDrag
```

Uniform linear ether drag, the resistance a body experiences to its translation.

### AngularEtherDrag

```
float32 AngularEtherDrag
```

Uniform angular ether drag, the resistance a body experiences to its rotation.

### SleepingLinearVelocityThreshold

```
float32 SleepingLinearVelocityThreshold
```

How much to scale the damage threshold by on any destructible we are applied to

### SleepingAngularVelocityThreshold

```
float32 SleepingAngularVelocityThreshold
```

How much to scale the damage threshold by on any destructible we are applied to

### Friction

```
float32 Friction
```

Friction value of a surface in motion, controls how easily things can slide on this surface (0 is frictionless, higher values increase the amount of friction)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UChaosPhysicalMaterial::StaticClass()
```
