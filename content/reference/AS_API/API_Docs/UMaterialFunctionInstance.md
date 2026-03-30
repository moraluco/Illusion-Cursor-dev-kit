# UMaterialFunctionInstance

**Visibility:** public

## Inheritance

UMaterialFunctionInterface → UMaterialFunctionInstance → UMaterialFunctionMaterialLayerBlendInstance → UMaterialFunctionMaterialLayerInstance

## Description

A material function instance defines parameter overrides for a parent material function.

## MATERIALFUNCTIONINSTANCE

### ScalarParameterValues

```
TArray<FScalarParameterValue> ScalarParameterValues
```

Scalar parameters.

### VectorParameterValues

```
TArray<FVectorParameterValue> VectorParameterValues
```

Vector parameters.

### DoubleVectorParameterValues

```
TArray<FDoubleVectorParameterValue> DoubleVectorParameterValues
```

DoubleVector parameters.

### TextureParameterValues

```
TArray<FTextureParameterValue> TextureParameterValues
```

Texture parameters.

### FontParameterValues

```
TArray<FFontParameterValue> FontParameterValues
```

Font parameters.

### RuntimeVirtualTextureParameterValues

```
TArray<FRuntimeVirtualTextureParameterValue> RuntimeVirtualTextureParameterValues
```

Runtime virtual texture parameters.

### Parent

```
UMaterialFunctionInterface Parent
```

Parent function.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialFunctionInstance::StaticClass()
```
