# UParticleModuleBeamTarget

**Visibility:** public

## Inheritance

UParticleModuleBeamBase → UParticleModuleBeamTarget → TARGET → TargetName

## Description

FName TargetName

The target point sources of each beam, when using the end point method.

Target FRawDistributionVector Target

Default target-point information to use if the beam method is endpoint.

TargetTangentMethod Beam2SourceTargetTangentMethod TargetTangentMethod

The method to use for the Target tangent.

TargetTangent FRawDistributionVector TargetTangent

The tangent for the Target point for each beam.

TargetStrength FRawDistributionFloat TargetStrength

The strength of the tangent from the Target point for each beam.

LockRadius float32 LockRadius

Default target-point information to use if the beam method is endpoint.

TargetMethod Beam2SourceTargetMethod TargetMethod

The method flag.

## FUNCTIONS

### SetbLockTarget

```
void SetbLockTarget(bool Value)
```

SetbLockTargetTangent

### void SetbLockTargetTangent

```
void SetbLockTargetTangent(bool Value)
```

SetbLockTargetStength

### void SetbLockTargetStength

```
void SetbLockTargetStength(bool Value)
```

SetbTargetAbsolute

### void SetbTargetAbsolute

```
void SetbTargetAbsolute(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleBeamTarget::StaticClass()
```
