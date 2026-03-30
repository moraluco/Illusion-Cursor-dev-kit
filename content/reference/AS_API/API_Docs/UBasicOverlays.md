# UBasicOverlays

**Visibility:** public

## Inheritance

UOverlays → UBasicOverlays

## Description

Implements an asset that contains a set of overlay data (which includes timing, text, and position) to be displayed for any given source (including, but not limited to, audio, dialog, and movies)

## Members

### SETTINGS

```
IMPORT SETTINGS
```
### AssetImportData

```
UAssetImportData AssetImportData
```

The import data used to make this overlays asset

### OVERLAY DATA

```
OVERLAY DATA Overlays TArray<FOverlayItem> Overlays
```

The overlay data held by this asset. Contains info on timing, position, and the subtitle to display

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBasicOverlays::StaticClass()
```
