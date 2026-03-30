# UContentBrowserSettings

**Visibility:** public

## Inheritance

UObject → UContentBrowserSettings

## Description

Implements content browser settings.  These are global not per-project

## CONTENTBROWSER

### bOpenSourcesPanelByDefault

```
bool bOpenSourcesPanelByDefault
```

Whether the Content Browser should open the Sources Panel by default

### bDisplayContentFolderSuffix

```
bool bDisplayContentFolderSuffix
```

Whether to append 'Content' text to displayed folder names

### bDisplayFriendlyNameForPluginFolders

```
bool bDisplayFriendlyNameForPluginFolders
```

Whether display friendly name as plugin folder names

### NumObjectsInRecentList

```
int NumObjectsInRecentList
```

The number of objects to keep in the Content Browser Recently Opened filter

### bEnableRealtimeMaterialInstanceThumbnails

```
bool bEnableRealtimeMaterialInstanceThumbnails
```

Enables the rendering of Material Instance thumbnail previews

### NumObjectsToLoadBeforeWarning

```
int NumObjectsToLoadBeforeWarning
```

The number of objects to load at once in the Content Browser before displaying a warning about loading many assets

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UContentBrowserSettings::StaticClass()
```
