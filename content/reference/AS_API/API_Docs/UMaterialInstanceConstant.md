# UMaterialInstanceConstant

**Visibility:** public

## Inheritance

UMaterialInstance → UMaterialInstanceConstant → ULandscapeMaterialInstanceConstant

## Description

Material Instances may be used to change the appearance of a material without incurring an expensive recompilation of the material.  General modification of the material cannot be supported without recompilation, so the instances are limited to changing the values of predefined material parameters. The parameters are statically defined in the compiled material by a unique name, type and default value.

## PHYSICALMATERIAL

### PhysMaterialMask

```
UPhysicalMaterialMask PhysMaterialMask
```

Physical material mask to use for this graphics material. Used for sounds, effects etc.

---

## RENDERING \| MATERIAL

### GetTextureParameterValue

```
UTexture GetTextureParameterValue(FName ParameterName)
```

Get the MIC texture parameter value

### GetVectorParameterValue

```
FLinearColor GetVectorParameterValue(FName ParameterName)
```

Get the MIC vector parameter value

### GetScalarParameterValue

```
float32 GetScalarParameterValue(FName ParameterName)
```

Get the scalar (float) parameter value from an MIC

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialInstanceConstant::StaticClass()
```
