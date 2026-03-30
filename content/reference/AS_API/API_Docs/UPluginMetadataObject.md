# UPluginMetadataObject

**Visibility:** public

## Inheritance

UObject → UPluginMetadataObject

## Description

We use this object to display plugin properties using details view.

## DEPENDENCIES

### Plugins

```
TArray<FPluginReferenceMetadata> Plugins
```

Plugins used by this plugin

---

## DETAILS

### Description

```
FString Description
```

Description of the plugin

### Category

```
FString Category
```

The category that this plugin belongs to

### CreatedBy

```
FString CreatedBy
```

The company or individual who created this plugin.  This is an optional field that may be displayed in the user interface.

### FriendlyName

```
FString FriendlyName
```

Friendly name of the plugin

### CreatedByURL

```
FString CreatedByURL
```

Hyperlink URL string for the company or individual who created this plugin.  This is optional.

### VersionName

```
FString VersionName
```

Name of the version for this plugin.  This is the front-facing part of the version number.  It doesn't need to match the version number numerically, but should be updated when the version number is increased accordingly.

### MarketplaceURL

```
FString MarketplaceURL
```

Marketplace URL string.

### SupportURL

```
FString SupportURL
```

Support URL/email for this plugin. Email addresses must be prefixed with 'mailto:'

### bCanContainContent

```
bool bCanContainContent
```

Can this plugin contain content?

### bIsBetaVersion

```
bool bIsBetaVersion
```

Marks the plugin as beta in the UI

### DocsURL

```
FString DocsURL
```

Documentation URL string.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPluginMetadataObject::StaticClass()
```
