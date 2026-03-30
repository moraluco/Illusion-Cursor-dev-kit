# UAssetRegistryHelpers

**Visibility:** public

## Inheritance

UObject → UAssetRegistryHelpers

## Description

ASSET DATA IsAssetLoaded static bool UAssetRegistryHelpers::IsAssetLoaded( FAssetData 	InAssetData 	)

Returns true if the asset is loaded

GetAsset static UObject UAssetRegistryHelpers::GetAsset( FAssetData 	InAssetData 	)

Returns the asset UObject if it is loaded or loads the asset if it is unloaded then returns the result

GetClass static UClass UAssetRegistryHelpers::GetClass( FAssetData 	InAssetData 	) GetExportTextName static FString UAssetRegistryHelpers::GetExportTextName( FAssetData 	InAssetData 	)

Returns the name for the asset in the form: Class'ObjectPath'

GetFullName static FString UAssetRegistryHelpers::GetFullName( FAssetData 	InAssetData 	)

Returns the full name for the asset in the form: Class ObjectPath

GetTagValue static bool UAssetRegistryHelpers::GetTagValue( FAssetData 	InAssetData, FName 	InTagName, FString& 	OutTagValue 	)

Gets the value associated with the given tag as a string

CreateAssetData static FAssetData UAssetRegistryHelpers::CreateAssetData( const 	UObject 	InAsset, 	bool 	bAllowBlueprintClass	 = 	false 	)

Creates asset data from a UObject.

Parameters InAsset const UObject

The asset to create asset data for

bAllowBlueprintClass bool

By default trying to create asset data for a blueprint class will create one for the UBlueprint instead

IsRedirector static bool UAssetRegistryHelpers::IsRedirector( FAssetData 	InAssetData 	)

Returns true if the this asset is a redirector.

IsUAsset static bool UAssetRegistryHelpers::IsUAsset( FAssetData 	InAssetData 	)

Returns true if this is the primary asset in a package, true for maps and assets but false for secondary objects like class redirectors

IsValid static bool UAssetRegistryHelpers::IsValid( FAssetData 	InAssetData 	)

Checks to see if this AssetData refers to an asset or is NULL

ToSoftObjectPath static FSoftObjectPath UAssetRegistryHelpers::ToSoftObjectPath( FAssetData 	InAssetData 	)

Convert to a SoftObjectPath for loading

### ASSET REGISTRY

```
ASSET REGISTRY SetFilterTagsAndValues static FARFilter UAssetRegistryHelpers::SetFilterTagsAndValues(FARFilter InFilter, TArray<FTagAndValue> InTagsAndValues)
```

Populates the FARFilters tags and values map with the passed in tags and values

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAssetRegistryHelpers::StaticClass()
```
