# AInteractiveFoliageActor

**Visibility:** public

## Inheritance

AStaticMeshActor → AInteractiveFoliageActor → FOLIAGEPHYSICS → FoliageTouchImpulseScale

## Description

float32 FoliageTouchImpulseScale

Scales forces applied from touch events.

FoliageStiffness float32 FoliageStiffness

Determines how strong the force that pushes toward the spring's center will be.

FoliageStiffnessQuadratic float32 FoliageStiffnessQuadratic

Same as FoliageStiffness, but the strength of this force increases with the square of the distance to the spring's center.  This force is used to prevent the spring from extending past a certain point due to touch and damage forces.

FoliageDamping float32 FoliageDamping

Determines the amount of energy lost by the spring as it oscillates.  This force is similar to air friction.

MaxDamageImpulse float32 MaxDamageImpulse

Clamps the magnitude of each damage force applied.

MaxTouchImpulse float32 MaxTouchImpulse

Clamps the magnitude of each touch force applied.

MaxForce float32 MaxForce

Clamps the magnitude of combined forces applied each update.

FoliageDamageImpulseScale float32 FoliageDamageImpulseScale

Scales forces applied from damage events.

## Members

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static AInteractiveFoliageActor AInteractiveFoliageActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AInteractiveFoliageActor::StaticClass()
```
