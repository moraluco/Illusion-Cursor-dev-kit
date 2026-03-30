# AssetTools

## Inheritance

AssetTools

## Description

STATIC FUNCTIONS CreateAsset static UObject AssetTools::CreateAsset( FString 	AssetName, FString 	PackagePath, UClass 	AssetClass, UFactory 	Factory	 = 	nullptr, FName 	CallingContext	 = 	NAME_None 	)

Creates an asset with the specified name, path, and optional factory

Parameters AssetName FString

the name of the new asset

PackagePath FString

the package that will contain the new asset

AssetClass UClass

the class of the new asset

Factory UFactory

optional factory that will build the new asset

CallingContext FName

optional name of the module or method calling CreateAsset() - this is passed to the factory

Returns

the new asset or nullptr if it fails
