# UParticleModuleCameraOffset

**Visibility:** public

## Inheritance

UParticleModuleCameraBase → UParticleModuleCameraOffset → CAMERA → UpdateMethod

## Description

EParticleCameraOffsetUpdateMethod UpdateMethod

How to update the offset for this module.  DirectSet - Set the value directly (overwrite any previous setting) Additive  - Add the offset of this module to the existing offset Scalar  - Scale the existing offset by the value of this module

CameraOffset FRawDistributionFloat CameraOffset

The camera-relative offset to apply to sprite location

## FUNCTIONS

### SetbSpawnTimeOnly

```
void SetbSpawnTimeOnly(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleCameraOffset::StaticClass()
```
