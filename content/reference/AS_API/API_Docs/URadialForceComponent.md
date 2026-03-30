# URadialForceComponent

**Visibility:** public

## Inheritance

USceneComponent → URadialForceComponent

## Description

Used to emit a radial force or impulse that can affect physics objects and or destructible objects.

## DESTRUCTIBLE

### DestructibleDamage

```
float32 DestructibleDamage
```

If > 0.f, will cause damage to destructible meshes as well

---

## FORCE

### ForceStrength

```
float32 ForceStrength
```

How strong the force should be

---

## IMPULSE

### ImpulseStrength

```
float32 ImpulseStrength
```

How strong the impulse should be

### bImpulseVelChange

```
bool bImpulseVelChange
```

If true, the impulse will ignore mass of objects and will always result in a fixed velocity change

### bIgnoreOwningActor

```
bool bIgnoreOwningActor
```

If true, do not apply force/impulse to any physics objects that are part of the Actor that owns this component.

---

## RADIALFORCECOMPONENT

### ObjectTypesToAffect

```
TArray<EObjectTypeQuery> ObjectTypesToAffect
```

The object types that are affected by this radial force

### Falloff

```
ERadialImpulseFalloff Falloff
```

How the force or impulse should fall off as object are further away from the center

### Radius

```
float32 Radius
```

The radius to apply the force or impulse in

---

## PHYSICS \| COMPONENTS \| RADIALFORCE

### FireImpulse

```
void FireImpulse()
```

Fire a single impulse

### RemoveObjectTypeToAffect

```
void RemoveObjectTypeToAffect(EObjectTypeQuery ObjectType)
```

Remove an object type that is affected by this radial force

### AddObjectTypeToAffect

```
void AddObjectTypeToAffect(EObjectTypeQuery ObjectType)
```

Add an object type for this radial force to affect

---

## FUNCTIONS

### SetbImpulseVelChange

```
void SetbImpulseVelChange(bool Value)
```

GetbImpulseVelChange

### bool GetbImpulseVelChange

```
bool GetbImpulseVelChange()const GetbIgnoreOwningActor
```

bool GetbIgnoreOwningActor() const

### SetbIgnoreOwningActor

```
void SetbIgnoreOwningActor(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static URadialForceComponent URadialForceComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static URadialForceComponent URadialForceComponent::GetOrCreate

```
static URadialForceComponent URadialForceComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static URadialForceComponent URadialForceComponent::Create

```
static URadialForceComponent URadialForceComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass URadialForceComponent::StaticClass

```
static UClass URadialForceComponent::StaticClass()
```
