# UInterchangeMaterialNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangeMaterialNode

## Description

INTERCHANGE | NODE | MATERIAL TextureDependeciesCount const int TextureDependeciesCount

This function allow to retrieve the number of Texture dependencies for this object.

INTERCHANGE | NODE | MATERIAL GetTextureDependency void GetTextureDependency( int 	Index, FString& 	OutDependency 	) const

This function allow to retrieve one Texture dependency for this object.

AddTextureParameterData void AddTextureParameterData( EInterchangeMaterialNodeParameterName 	ParameterName, FString 	TextureUid, int 	UVSetIndex, float32 	ScaleU, float32 	ScaleV 	)

Add a texture parameter for the specified ParameterName.

Parameters ParameterName EInterchangeMaterialNodeParameterName

The parameter we want to set the texture for.

TextureUid FString

The texture node uniqueID that has the texture we want to set to the specified parameter

AddVectorParameterData void AddVectorParameterData( EInterchangeMaterialNodeParameterName 	ParameterName, FVector 	VectorData 	) GetScalarParameterData bool GetScalarParameterData( EInterchangeMaterialNodeParameterName 	ParameterName, float32& 	OutScalarData 	) const GetTextureDependeciesCount int GetTextureDependeciesCount() const

This function allow to retrieve the number of Texture dependencies for this object.

GetTextureDependencies void GetTextureDependencies( TArray<FString>& 	OutDependencies 	) const

This function allow to retrieve the Texture dependency for this object.

AddScalarParameterData void AddScalarParameterData( EInterchangeMaterialNodeParameterName 	ParameterName, float32 	ScalarData 	) GetTextureParameterData bool GetTextureParameterData( EInterchangeMaterialNodeParameterName 	ParameterName, FString& 	OutTextureUid, int& 	OutUVSetIndex, float32& 	OutScaleU, float32& 	OutScaleV 	) const GetVectorParameterData bool GetVectorParameterData( EInterchangeMaterialNodeParameterName 	ParameterName, FVector& 	OutVectorData 	) const RemoveTextureDependencyUid bool RemoveTextureDependencyUid( FString 	DependencyUid 	)

Remove one Texture dependency from this object.

SetPayLoadKey void SetPayLoadKey( FString 	PayloadKey 	) SetTextureDependencyUid bool SetTextureDependencyUid( FString 	DependencyUid 	)

Add one Texture dependency to this object.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangeMaterialNode::StaticClass()
```
