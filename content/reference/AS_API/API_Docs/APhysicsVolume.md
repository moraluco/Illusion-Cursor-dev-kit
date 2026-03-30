# APhysicsVolume

**Visibility:** public

## Inheritance

AVolume → APhysicsVolume → ADefaultPhysicsVolume → AKillZVolume → APainCausingVolume

## Description

PhysicsVolume: A bounding volume which affects actor physics.  Each AActor is affected at any time by one PhysicsVolume.

## CHARACTERMOVEMENT

### Priority

```
int Priority
```

Determines which PhysicsVolume takes precedence if they overlap (higher number = higher priority).

### FluidFriction

```
float32 FluidFriction
```

This property controls the amount of friction applied by the volume as pawns using CharacterMovement move through it. The higher this value, the harder it will feel to move through

### bWaterVolume

```
bool bWaterVolume
```

True if this volume contains a fluid like water

### TerminalVelocity

```
float32 TerminalVelocity
```

Terminal velocity of pawns using CharacterMovement when falling.

---

## VOLUME

### bPhysicsOnContact

```
bool bPhysicsOnContact
```

By default, the origin of an AActor must be inside a PhysicsVolume for it to affect the actor. However if this flag is true, the other actor only has to touch the volume to be affected by it.

---

## FUNCTIONS

### SetbWaterVolume

```
void SetbWaterVolume(bool Value)
```

GetbPhysicsOnContact

### bool GetbPhysicsOnContact

```
bool GetbPhysicsOnContact()const SetbPhysicsOnContact
```

void SetbPhysicsOnContact(

### bool 	Value

```
bool 	Value 	)
```

GetbWaterVolume

### bool GetbWaterVolume

```
bool GetbWaterVolume()const STATIC FUNCTIONS
```

Spawn

### static APhysicsVolume APhysicsVolume::Spawn

```
static APhysicsVolume APhysicsVolume::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APhysicsVolume::StaticClass

```
static UClass APhysicsVolume::StaticClass()
```
