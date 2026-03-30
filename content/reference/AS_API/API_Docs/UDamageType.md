# UDamageType

**Visibility:** public

## Inheritance

UObject → UDamageType

## Description

A DamageType is intended to define and describe a particular form of damage and to provide an avenue for customizing responses to damage from various sources.

For example, a game could make a DamageType_Fire set it up to ignite the damaged actor.

DamageTypes are never instanced and should be treated as immutable data holders with static code functionality.  They should never be stateful.

## DAMAGETYPE

### bCausedByWorld

```
bool bCausedByWorld
```

True if this damagetype is caused by the world (falling off level, into lava, etc).

### DamageFalloff

```
float32 DamageFalloff
```

Damage fall-off for radius damage (exponent).  Default 1.0=linear, 2.0=square of distance, etc.

### bScaleMomentumByMass

```
bool bScaleMomentumByMass
```

True to scale imparted momentum by the receiving pawn's mass for pawns using character movement

---

## DESTRUCTION

### DestructibleDamageSpreadScale

```
float32 DestructibleDamageSpreadScale
```

How much the damage spreads on a destructible mesh

### DestructibleImpulse

```
float32 DestructibleImpulse
```

How large the impulse should be applied to destructible meshes

---

## RIGIDBODY

### bRadialDamageVelChange

```
bool bRadialDamageVelChange
```

When applying radial impulses, whether to treat as impulse or velocity change.

### DamageImpulse

```
float32 DamageImpulse
```

The magnitude of impulse to apply to the Actors damaged by this type.

---

## FUNCTIONS

### SetbCausedByWorld

```
void SetbCausedByWorld(bool Value)
```

GetbScaleMomentumByMass

### bool GetbScaleMomentumByMass

```
bool GetbScaleMomentumByMass()const SetbScaleMomentumByMass
```

void SetbScaleMomentumByMass(

### bool 	Value

```
bool 	Value 	)
```

GetbRadialDamageVelChange

### bool GetbRadialDamageVelChange

```
bool GetbRadialDamageVelChange()const SetbRadialDamageVelChange
```

void SetbRadialDamageVelChange(

### bool 	Value

```
bool 	Value 	)
```

GetbCausedByWorld

### bool GetbCausedByWorld

```
bool GetbCausedByWorld()const STATIC FUNCTIONS
```

StaticClass

### static UClass UDamageType::StaticClass

```
static UClass UDamageType::StaticClass()
```
