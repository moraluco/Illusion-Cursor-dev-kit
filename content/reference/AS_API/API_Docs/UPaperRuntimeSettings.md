# UPaperRuntimeSettings

**Visibility:** public

## Inheritance

UObject → UPaperRuntimeSettings

## Description

Implements the settings for the Paper2D plugin.

## EXPERIMENTAL

### bEnableTerrainSplineEditing

```
bool bEnableTerrainSplineEditing
```

Enables experimental incomplete and unsupported 2D terrain spline editing. Note: You need to restart the editor when enabling this setting for the change to fully take effect.

### bEnableSpriteAtlasGroups

```
bool bEnableSpriteAtlasGroups
```

Enables experimental incomplete and unsupported texture atlas groups that sprites can be assigned to

---

## SETTINGS

### bResizeSpriteDataToMatchTextures

```
bool bResizeSpriteDataToMatchTextures
```

Enables automatic resizing of various sprite data that is authored in texture space if the source texture gets resized (sockets, the pivot, render and collision geometry, etc...)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPaperRuntimeSettings::StaticClass()
```
