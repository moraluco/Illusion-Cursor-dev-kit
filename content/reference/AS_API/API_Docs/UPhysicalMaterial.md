# UPhysicalMaterial

**Visibility:** public

## Inheritance

UObject → UPhysicalMaterial

## Description

Physical materials are used to define the response of a physical object when interacting dynamically with the world.

## ADVANCED

### RaiseMassToPower

```
float32 RaiseMassToPower
```

Used to adjust the way that mass increases as objects get larger. This is applied to the mass as calculated based on a 'solid' object.  In actuality, larger objects do not tend to be solid, and become more like 'shells' (e.g. a car is not a solid piece of metal).  Values are clamped to 1 or less.

---

## DESTRUCTION

### DestructibleDamageThresholdScale

```
float32 DestructibleDamageThresholdScale
```

How much to scale the damage threshold by on any destructible we are applied to

---

## PHYSICALMATERIAL

### bOverrideFrictionCombineMode

```
bool bOverrideFrictionCombineMode
```

If set we will use the FrictionCombineMode of this material, instead of the FrictionCombineMode found in the project settings.

### Restitution

```
float32 Restitution
```

Restitution or 'bounciness' of this surface, between 0 (no bounce) and 1 (outgoing velocity is same as incoming).

### FrictionCombineMode

```
EFrictionCombineMode FrictionCombineMode
```

Friction combine mode, controls how friction is computed for multiple materials.

### StaticFriction

```
float32 StaticFriction
```

Static Friction value of surface, controls how easily things can slide on this surface (0 is frictionless, higher values increase the amount of friction)

### RestitutionCombineMode

```
EFrictionCombineMode RestitutionCombineMode
```

Restitution combine mode, controls how restitution is computed for multiple materials.

### Friction

```
float32 Friction
```

Friction value of surface, controls how easily things can slide on this surface (0 is frictionless, higher values increase the amount of friction)

### SleepLinearVelocityThreshold

```
float32 SleepLinearVelocityThreshold
```

How low the linear velocity can be before solver puts body to sleep.

### SleepAngularVelocityThreshold

```
float32 SleepAngularVelocityThreshold
```

How low the angular velocity can be before solver puts body to sleep.

### SleepCounterThreshold

```
int SleepCounterThreshold
```

How many ticks we can be under thresholds for before solver puts body to sleep.

### bOverrideRestitutionCombineMode

```
bool bOverrideRestitutionCombineMode
```

If set we will use the RestitutionCombineMode of this material, instead of the RestitutionCombineMode found in the project settings.

### Density

```
float32 Density
```

Used with the shape of the object to calculate its mass properties. The higher the number, the heavier the object. g per cubic cm.

---

## PHYSICALPROPERTIES

### SurfaceType

```
EPhysicalSurface SurfaceType
```

To edit surface type for your project, use ProjectSettings/Physics/PhysicalSurface section

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPhysicalMaterial::StaticClass()
```
