# UAssetRegistry

**Visibility:** public

## Inheritance

UInterface → UAssetRegistry → ASSETREGISTRY → IsSearchAsync

## Description

bool IsSearchAsync() const

Whether searching is done async (and was started at startup), or synchronously and on-demand, requiring ScanPathsSynchronous or SearchAllAssets.

GetAllCachedPaths void GetAllCachedPaths( TArray<FString>& 	OutPathList 	) const

Gets a list of all paths that are currently cached

GetAssetByObjectPath FAssetData GetAssetByObjectPath( const 	FName 	ObjectPath, 	bool 	bIncludeOnlyOnDiskAssets	 = 	false 	) const

Gets the asset data for the specified object path

Parameters ObjectPath const FName

the path of the object to be looked up

bIncludeOnlyOnDiskAssets bool

if true, in-memory objects will be ignored. The call will be faster.

Returns

the assets data;Will be invalid if object could not be found

GetAssets bool GetAssets( FARFilter 	Filter, TArray<FAssetData>& 	OutAssetData 	) const

Gets asset data for all assets that match the filter.  Assets returned must satisfy every filter component if there is at least one element in the component's array.  Assets will satisfy a component if they match any of the elements in it.

Parameters Filter FARFilter

filter to apply to the assets in the AssetRegistry

OutAssetData TArray<FAssetData>&

the list of assets in this path

GetAssetsByClass bool GetAssetsByClass( FName 	ClassName, TArray<FAssetData>& 	OutAssetData, bool 	bSearchSubClasses	 = 	false 	) const

Gets asset data for all assets with the supplied class

Parameters ClassName FName

the class name of the assets requested

OutAssetData TArray<FAssetData>&

the list of assets in this path

bSearchSubClasses bool

if true, all subclasses of the passed in class will be searched as well

GetAssetsByPackageName bool GetAssetsByPackageName( FName 	PackageName, TArray<FAssetData>& 	OutAssetData, bool 	bIncludeOnlyOnDiskAssets	 = 	false 	) const

Gets asset data for the assets in the package with the specified package name

Parameters PackageName FName

the package name for the requested assets (eg, /Game/MyFolder/MyAsset)

OutAssetData TArray<FAssetData>&

the list of assets in this path

GetAssetsByPath bool GetAssetsByPath( FName 	PackagePath, TArray<FAssetData>& 	OutAssetData, bool 	bRecursive	 = 	false, bool 	bIncludeOnlyOnDiskAssets	 = 	false 	) const

Gets asset data for all assets in the supplied folder path

Parameters PackagePath FName

the path to query asset data in (eg, /Game/MyFolder)

OutAssetData TArray<FAssetData>&

the list of assets in this path

bRecursive bool

if true, all supplied paths will be searched recursively

GetAssetsByPaths bool GetAssetsByPaths( TArray<FName> 	PackagePaths, TArray<FAssetData>& 	OutAssetData, bool 	bRecursive	 = 	false, bool 	bIncludeOnlyOnDiskAssets	 = 	false 	) const

Gets asset data for all assets in any of the supplied folder paths

Parameters PackagePaths TArray<FName>

the paths to query asset data in (eg, /Game/MyFolder)

OutAssetData TArray<FAssetData>&

the list of assets in this path

bRecursive bool

if true, all supplied paths will be searched recursively

GetSubPaths void GetSubPaths( FString 	InBasePath, TArray<FString>& 	OutPathList, bool 	bInRecurse 	) const

Gets a list of all paths that are currently cached below the passed-in base path

HasAssets bool HasAssets( const 	FName 	PackagePath, 	bool 	bRecursive	 = 	false 	) const

Does the given path contain assets, optionally also testing sub-paths?

Parameters PackagePath const FName

the path to query asset data in (eg, /Game/MyFolder)

bRecursive bool

if true, the supplied path will be tested recursively

IsLoadingAssets bool IsLoadingAssets() const

Returns true if the asset registry is currently loading files and does not yet know about all assets

IsSearchAllAssets bool IsSearchAllAssets() const

Whether SearchAllAssets has been called, or was auto-called at startup. When async (editor or cooking), if SearchAllAssets has ever been called, any newly-mounted directory will be automatically searched.

GetAllAssets bool GetAllAssets( TArray<FAssetData>& 	OutAssetData, bool 	bIncludeOnlyOnDiskAssets	 = 	false 	) const

Gets asset data for all assets in the registry.  This method may be slow, use a filter if possible to avoid iterating over the entire registry.

Parameters OutAssetData TArray<FAssetData>&

the list of assets in this path

GetDependencies bool GetDependencies( FName 	PackageName, FAssetRegistryDependencyOptions 	DependencyOptions, TArray<FName>& 	OutDependencies 	) const

Gets a list of paths to objects that are referenced by the supplied package. (On disk references ONLY)

Parameters PackageName FName

the name of the package for which to gather dependencies (eg, /Game/MyFolder/MyAsset)

DependencyOptions FAssetRegistryDependencyOptions

which kinds of dependencies to include in the output list

OutDependencies TArray<FName>&

a list of packages that are referenced by the package whose path is PackageName

GetReferencers bool GetReferencers( FName 	PackageName, FAssetRegistryDependencyOptions 	ReferenceOptions, TArray<FName>& 	OutReferencers 	) const

Gets a list of packages that reference the supplied package. (On disk references ONLY)

Parameters PackageName FName

the name of the package for which to gather dependencies (eg, /Game/MyFolder/MyAsset)

ReferenceOptions FAssetRegistryDependencyOptions

which kinds of references to include in the output list

OutReferencers TArray<FName>&

a list of packages that reference the package whose path is PackageName

PrioritizeSearchPath void PrioritizeSearchPath( FString 	PathToPrioritize 	)

If assets are currently being asynchronously scanned in the specified path, this will cause them to be scanned before other assets.

RunAssetsThroughFilter void RunAssetsThroughFilter( TArray<FAssetData>& 	AssetDataList, FARFilter 	Filter 	) const

Trims items out of the asset data list that do not pass the supplied filter

ScanFilesSynchronous void ScanFilesSynchronous( TArray<FString> 	InFilePaths, bool 	bForceRescan	 = 	false 	)

Scan the specified individual files right now and populate the asset registry. If bForceRescan is true, the paths will be scanned again, even if they were previously scanned

ScanModifiedAssetFiles void ScanModifiedAssetFiles( TArray<FString> 	InFilePaths 	)

Forces a rescan of specific filenames, call this when you need to refresh from disk

ScanPathsSynchronous void ScanPathsSynchronous( TArray<FString> 	InPaths, bool 	bForceRescan	 = 	false, bool 	bIgnoreDenyListScanFilters	 = 	false 	)

Scan the supplied paths recursively right now and populate the asset registry. If bForceRescan is true, the paths will be scanned again, even if they were previously scanned

SearchAllAssets void SearchAllAssets( bool 	bSynchronousSearch 	)

Look for all assets on disk (can be async or synchronous)

UseFilterToExcludeAssets void UseFilterToExcludeAssets( TArray<FAssetData>& 	AssetDataList, FARFilter 	Filter 	) const

Trims items out of the asset data list that pass the supplied filter

WaitForCompletion void WaitForCompletion()

Wait for scan to be complete. If called during editor startup before OnPostEngineInit, and there are any assets that use classes in not-yet-loaded plugin modules, WaitForCompletion will return silently with those assets still ungathered.

WaitForPackage void WaitForPackage( FString 	PackageName 	)

Wait for the scan of a specific package to be complete

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAssetRegistry::StaticClass()
```
