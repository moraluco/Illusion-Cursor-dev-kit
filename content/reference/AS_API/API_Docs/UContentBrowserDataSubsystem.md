# UContentBrowserDataSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → UContentBrowserDataSubsystem

## Description

Subsystem that provides access to Content Browser data.  This type deals with the composition of multiple data sources, which provide information about the folders and files available in the Content Browser.

## CONTENTBROWSER

### AvailableDataSources

```
const TArray<FName> AvailableDataSources
```

Get the list of current available data sources.

### ActiveDataSources

```
const TArray<FName> ActiveDataSources
```

Get the list of current active data sources.

---

## CONTENTBROWSER

### GetAvailableDataSources

```
TArray<FName> GetAvailableDataSources()const
```

Get the list of current available data sources.

### ActivateDataSource

```
bool ActivateDataSource(const FName Name)
```

Attempt to activate the named data source.

**Returns**

True if the data source was available and not already active, false otherwise.

DeactivateAllDataSources
void DeactivateAllDataSources()

Deactivate all active data sources.

DeactivateDataSource
bool DeactivateDataSource(
const 	FName 	Name
	)

Attempt to deactivate the named data source.

**Returns**

True if the data source was available and active, false otherwise.

GetActiveDataSources
TArray<FName> GetActiveDataSources() const

Get the list of current active data sources.

ActivateAllDataSources
void ActivateAllDataSources()

Activate all available data sources.

GetItemAtPath
FContentBrowserItem GetItemAtPath(
const 	FName 	InPath,
	EContentBrowserItemTypeFilter 	InItemTypeFilter
	) const

Get the first item (folder and/or file) that exists at the given virtual path.

GetItemsAtPath
TArray<FContentBrowserItem> GetItemsAtPath(

const 	FName 	InPath,
	EContentBrowserItemTypeFilter 	InItemTypeFilter

) const

Get the items (folders and/or files) that exist at the given virtual path.  Note: Multiple items may have the same virtual path if they are different types, or come from different data sources.

GetItemsUnderPath
TArray<FContentBrowserItem> GetItemsUnderPath(
const 	FName 	InPath,
	FContentBrowserDataFilter 	InFilter
	) const

Get the items (folders and/or files) that exist under the given virtual path.

STATIC FUNCTIONS
Get
static UContentBrowserDataSubsystem UContentBrowserDataSubsystem::Get()
StaticClass
static UClass UContentBrowserDataSubsystem::StaticClass()
