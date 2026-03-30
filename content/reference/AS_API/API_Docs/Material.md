# Material

## Inheritance

Material

## RENDERING \| MATERIAL

### GetScalarParameterValue

```
static float32 Material::GetScalarParameterValue(UMaterialParameterCollection Collection, FName ParameterName)
```

Gets a scalar parameter value from the material collection instance. Logs if ParameterName is invalid.

### GetVectorParameterValue

```
static FLinearColor Material::GetVectorParameterValue(UMaterialParameterCollection Collection, FName ParameterName)
```

Gets a vector parameter value from the material collection instance. Logs if ParameterName is invalid.

### SetScalarParameterValue

```
static void Material::SetScalarParameterValue(UMaterialParameterCollection Collection, FName ParameterName, float32 ParameterValue)
```

Sets a scalar parameter value on the material collection instance. Logs if ParameterName is invalid.

### SetVectorParameterValue

```
static void Material::SetVectorParameterValue(UMaterialParameterCollection Collection, FName ParameterName, FLinearColor ParameterValue)
```

Sets a vector parameter value on the material collection instance. Logs if ParameterName is invalid.

### CreateDynamicMaterialInstance

```
static UMaterialInstanceDynamic Material::CreateDynamicMaterialInstance(
```

UMaterialInterface 	Parent,

FName 	OptionalName	 = 	NAME_None,

EMIDCreationFlags 	CreationFlags	 = 	EMIDCreationFlags :: None

)

Creates a Dynamic Material Instance which you can modify during gameplay.
