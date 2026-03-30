# UHierarchicalLODSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UHierarchicalLODSettings → HLODSYSTEM

## Description

bSaveLODActorsToHLODPackages bool bSaveLODActorsToHLODPackages

If enabled, will save LOD actors descriptions in the HLOD packages

DefaultSetup TSoftClassPtr<UHierarchicalLODSetup> DefaultSetup

When set in combination with

BaseMaterial TSoftObjectPtr<UMaterialInterface> BaseMaterial

Base material used for creating a Constant Material Instance as the Proxy Material

bForceSettingsInAllMaps bool bForceSettingsInAllMaps

If enabled will force the project set HLOD level settings to be used across all levels in the project when Building Clusters

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UHierarchicalLODSettings::StaticClass()
```
