# UMaterialInstance

**Visibility:** public

## Inheritance

UMaterialInterface → UMaterialInstance → UMaterialInstanceConstant → UMaterialInstanceDynamic → MATERIALINSTANCE → DoubleVectorParameterValues

## Description

TArray<FDoubleVectorParameterValue> DoubleVectorParameterValues

DoubleVector parameters.

TextureParameterValues TArray<FTextureParameterValue> TextureParameterValues

Texture parameters.

Parent UMaterialInterface Parent

Parent material.

ScalarParameterValues TArray<FScalarParameterValue> ScalarParameterValues

Scalar parameters.

VectorParameterValues TArray<FVectorParameterValue> VectorParameterValues

Vector parameters.

PhysMaterial UPhysicalMaterial PhysMaterial

Physical material to use for this graphics material. Used for sounds, effects etc.

RuntimeVirtualTextureParameterValues TArray<FRuntimeVirtualTextureParameterValue> RuntimeVirtualTextureParameterValues

RuntimeVirtualTexture parameters.

FontParameterValues TArray<FFontParameterValue> FontParameterValues

Font parameters.

BasePropertyOverrides FMaterialInstanceBasePropertyOverrides BasePropertyOverrides bOverrideSubsurfaceProfile bool bOverrideSubsurfaceProfile

Defines if SubsurfaceProfile from this instance is used or it uses the parent one.

## PHYSICALMATERIALMASK

### PhysicalMaterialMap

```
UPhysicalMaterial PhysicalMaterialMap
```

Physical material map used with physical material mask, when it exists.

---

## FUNCTIONS

### SetbOverrideSubsurfaceProfile

```
void SetbOverrideSubsurfaceProfile(bool Value)
```

GetbOverrideSubsurfaceProfile

### bool GetbOverrideSubsurfaceProfile

```
bool GetbOverrideSubsurfaceProfile()const STATIC FUNCTIONS
```

StaticClass

### static UClass UMaterialInstance::StaticClass

```
static UClass UMaterialInstance::StaticClass()
```
