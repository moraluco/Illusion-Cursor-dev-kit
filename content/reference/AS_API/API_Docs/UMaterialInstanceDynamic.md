# UMaterialInstanceDynamic

**Visibility:** public

## Inheritance

UMaterialInstance → UMaterialInstanceDynamic

## RENDERING \| MATERIAL

### SetDoubleVectorParameterValue

```
void SetDoubleVectorParameterValue(FName ParameterName, FVector Value)
```

Set an MID vector parameter value

### CopyMaterialInstanceParameters

```
void CopyMaterialInstanceParameters(UMaterialInterface Source, bool bQuickParametersOnly = false)
```

Copies over parameters given a material interface (copy each instance following the hierarchy) Very slow implementation, avoid using at runtime. Hopefully we can replace it later with something like CopyInterpParameters() The output is the object itself (this). Copying 'quick parameters only' will result in a much faster copy process but will only copy dynamic scalar, vector and texture parameters on clients.

**Parameters**

bQuickParametersOnly
bool

Copy scalar, vector and texture parameters only. Much faster but may not include required data

GetScalarParameterValue
float32 GetScalarParameterValue(
FName 	ParameterName
	)

Get the current scalar (float) parameter value from an MID

GetScalarParameterValueByInfo
float32 GetScalarParameterValueByInfo(
FMaterialParameterInfo 	ParameterInfo
	)

Get the current scalar (float) parameter value from an MID, using MPI (to allow access to layer parameters)

GetTextureParameterValue
UTexture GetTextureParameterValue(
FName 	ParameterName
	)

Get the current MID texture parameter value

GetTextureParameterValueByInfo
UTexture GetTextureParameterValueByInfo(
FMaterialParameterInfo 	ParameterInfo
	)

Get the current MID texture parameter value, using MPI (to allow access to layer parameters)

GetVectorParameterValue
FLinearColor GetVectorParameterValue(
FName 	ParameterName
	)

Get the current MID vector parameter value

GetVectorParameterValueByInfo
FLinearColor GetVectorParameterValueByInfo(
FMaterialParameterInfo 	ParameterInfo
	)

Get the current MID vector parameter value, using MPI (to allow access to layer parameters)

InterpolateMaterialInstanceParameters
void InterpolateMaterialInstanceParameters(
UMaterialInstance 	SourceA,
UMaterialInstance 	SourceB,
float32 	Alpha
	)

Interpolates the scalar and vector parameters of this material instance based on two other material instances, and an alpha blending factor The output is the object itself (this).  Supports the case SourceA==this || SourceB==this Both material have to be from the same base material

**Parameters**

SourceA
UMaterialInstance

value that is used for Alpha=0, silently ignores the case if 0

SourceB
UMaterialInstance

value that is used for Alpha=1, silently ignores the case if 0

Alpha
float32

usually in the range 0..1, values outside the range extrapolate

CopyParameterOverrides
void CopyParameterOverrides(
UMaterialInstance 	MaterialInstance
	)

Copy parameter values from another material instance. This will copy only parameters explicitly overridden in that material instance!!

SetRuntimeVirtualTextureParameterValue
void SetRuntimeVirtualTextureParameterValue(
FName 	ParameterName,
URuntimeVirtualTexture 	Value
	)

Set an MID texture parameter value

SetRuntimeVirtualTextureParameterValueByInfo
void SetRuntimeVirtualTextureParameterValueByInfo(
FMaterialParameterInfo 	ParameterInfo,
URuntimeVirtualTexture 	Value
	)

Set an MID texture parameter value using MPI (to allow access to layer parameters)

SetScalarParameterValue
void SetScalarParameterValue(
FName 	ParameterName,
float32 	Value
	)

Set a MID scalar (float) parameter value

SetScalarParameterValueByInfo
void SetScalarParameterValueByInfo(
FMaterialParameterInfo 	ParameterInfo,
float32 	Value
	)

Set a MID scalar (float) parameter value using MPI (to allow access to layer parameters)

SetTextureParameterValue
void SetTextureParameterValue(
FName 	ParameterName,
UTexture 	Value
	)

Set an MID texture parameter value

SetTextureParameterValueByInfo
void SetTextureParameterValueByInfo(
FMaterialParameterInfo 	ParameterInfo,
UTexture 	Value
	)

Set an MID texture parameter value using MPI (to allow access to layer parameters)

SetVectorParameterValue
void SetVectorParameterValue(
FName 	ParameterName,
FLinearColor 	Value
	)

Set an MID vector parameter value

SetVectorParameterValueByInfo
void SetVectorParameterValueByInfo(
FMaterialParameterInfo 	ParameterInfo,
FLinearColor 	Value
	)

Set an MID vector parameter value, using MPI (to allow access to layer parameters)

STATIC FUNCTIONS
StaticClass
static UClass UMaterialInstanceDynamic::StaticClass()
