# UInterchangeManager

**Visibility:** public

## Inheritance

UObject → UInterchangeManager

## Description

STATIC VARIABLES InterchangeManagerScripted static const UInterchangeManager UInterchangeManager::InterchangeManagerScripted INTERCHANGE | EXPORT MANAGER ExportScene bool ExportScene( const 	UObject 	World, 	bool 	bIsAutomated	 = 	false 	)

Call this to start an export scene process, the caller must specify a source data This import process can import many different asset and there transform (USceneComponent) and store the result in a blueprint and add the blueprint to the level.

Parameters bIsAutomated bool

If true the import asset will not show any UI or dialog

Returns

true if the import succeed, false otherwise.

ExportAsset bool ExportAsset( const 	UObject 	Asset, 	bool 	bIsAutomated	 = 	false 	)

Call this to start an export asset process, the caller must specify a source data.

Parameters bIsAutomated bool

If true the exporter will not show any UI or dialog

Returns

true if the import succeed, false otherwise.

INTERCHANGE | IMPORT MANAGER ImportAsset bool ImportAsset( 	FString 	ContentPath, const 	UInterchangeSourceData 	SourceData, 	FImportAssetParameters 	ImportAssetParameters 	)

Call this to start an import asset process, the caller must specify a source data.  This import process can import many different asset, but all in the game content.

Parameters ContentPath FString

The content path where to import the assets

SourceData const UInterchangeSourceData

The source data input we want to translate

ImportAssetParameters FImportAssetParameters

All import asset parameter we need to pass to the import asset function

Returns

true if the import succeed, false otherwise.

ImportScene bool ImportScene( 	FString 	ContentPath, const 	UInterchangeSourceData 	SourceData, 	FImportAssetParameters 	ImportAssetParameters 	)

Call this to start an import scene process, the caller must specify a source data.  This import process can import many different asset and there transform (USceneComponent) and store the result in a blueprint and add the blueprint to the level.

Parameters ContentPath FString

The content path where to import the assets

SourceData const UInterchangeSourceData

The source data input we want to translate, this object will be duplicate to allow multithread safe operations

ImportAssetParameters FImportAssetParameters

All import asset parameter we need to pass to the import asset function

Returns

true if the import succeed, false otherwise.

CreateSourceData static UInterchangeSourceData UInterchangeManager::CreateSourceData( FString 	InFileName 	)

Script helper to create a source data object pointing on a file on disk *

Returns A new UInterchangeSourceData. GetInterchangeManagerScripted static UInterchangeManager UInterchangeManager::GetInterchangeManagerScripted()

Return the interchange manager singleton pointer.

Note:

We need to return a pointer to have a valid Blueprint callable function

GetRegisteredFactoryClass const UClass GetRegisteredFactoryClass( const 	UClass 	ClassToMake 	) const

Script helper to get a registered factory for a specified class

Returns if found, we return the factory class that is registered. Return NULL if nothing found. STATIC FUNCTIONS StaticClass static UClass UInterchangeManager::StaticClass()
