# AssetRegistry

## Inheritance

AssetRegistry

## Description

STATIC FUNCTIONS GetBlueprintCDOsByParentClass static void AssetRegistry::GetBlueprintCDOsByParentClass( UClass 	Class, TArray<UObject>& 	OutAssets 	) HasAssets static bool AssetRegistry::HasAssets( const 	FName 	PackagePath, 	bool 	bRecursive	 = 	false 	) GetAssetsByPackageName static bool AssetRegistry::GetAssetsByPackageName(

FName 	PackageName, TArray<FAssetData>& 	OutAssetData, bool 	bIncludeOnlyOnDiskAssets	 = 	false

) GetAssetsByPath static bool AssetRegistry::GetAssetsByPath( FName 	PackagePath, TArray<FAssetData>& 	OutAssetData, bool 	bRecursive	 = 	false, bool 	bIncludeOnlyOnDiskAssets	 = 	false 	) GetAssetsByClass static bool AssetRegistry::GetAssetsByClass( FName 	ClassName, TArray<FAssetData>& 	OutAssetData, bool 	bSearchSubClasses	 = 	false 	) IsLoadingAssets static bool AssetRegistry::IsLoadingAssets() GetAssetsByTags static bool AssetRegistry::GetAssetsByTags( TArray<FName> 	AssetTags, TArray<FAssetData>& 	OutAssetData 	) GetAssetByObjectPath static FAssetData AssetRegistry::GetAssetByObjectPath( const 	FName 	ObjectPath, 	bool 	bIncludeOnlyOnDiskAssets	 = 	false 	) GetAllAssets static bool AssetRegistry::GetAllAssets( TArray<FAssetData>& 	OutAssetData, bool 	bIncludeOnlyOnDiskAssets	 = 	false 	) AssetCreated static void AssetRegistry::AssetCreated( UObject 	NewAsset 	) LoadAllBlueprintsUnderPath static void AssetRegistry::LoadAllBlueprintsUnderPath( FName 	PathToLoadFrom, FString 	OptionalFileIncludeRegex	 = 	"" 	)
