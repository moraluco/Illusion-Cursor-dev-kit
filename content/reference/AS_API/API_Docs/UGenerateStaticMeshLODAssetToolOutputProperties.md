# UGenerateStaticMeshLODAssetToolOutputProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UGenerateStaticMeshLODAssetToolOutputProperties

## Description

OUTPUT OPTIONS NewAssetName FString NewAssetName

Base name for newly-generated asset

bSaveInputAsHiResSource bool bSaveInputAsHiResSource

If the Asset doesn't already have a HiRes source, store the input mesh as the HiRes source

GeneratedSuffix FString GeneratedSuffix

Suffix to append to newly-generated Asset (Meshes, Textures, Materials, etc)

OutputMode EGenerateLODAssetOutputMode OutputMode

Whether to modify the static mesh in place or create a new one.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGenerateStaticMeshLODAssetToolOutputProperties::StaticClass()
```
