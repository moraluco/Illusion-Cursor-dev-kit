# UAutomationTestSettings

**Visibility:** public

## Inheritance

UObject → UAutomationTestSettings

## Description

Implements the Editor's user settings.

## AUTOMATION

### MaterialEditorPromotionTest

```
FMaterialEditorPromotionSettings MaterialEditorPromotionTest
```

Material editor promotion test settings

### ParticleEditorPromotionTest

```
FParticleEditorPromotionSettings ParticleEditorPromotionTest
```

Particle editor promotion test settings

### AutomationTestmap

```
FSoftObjectPath AutomationTestmap
```

The automation test map to be used for several of the automation tests.

### EditorPerformanceTestMaps

```
TArray<FEditorMapPerformanceTestDefinition> EditorPerformanceTestMaps
```

The map to be used for the editor performance capture tool.

### BlueprintEditorPromotionTest

```
FBlueprintEditorPromotionSettings BlueprintEditorPromotionTest
```

Blueprint editor promotion test settings

### PIETestDuration

```
float32 PIETestDuration
```

PIE test duration in seconds. Only applied if you do PIETest

### BuildPromotionTest

```
FBuildPromotionTestSettings BuildPromotionTest
```

Editor build promotion test settings

### ImportExportTestDefinitions

```
TArray<FEditorImportExportTestDefinition> ImportExportTestDefinitions
```

Asset import / Export test settings

### LaunchOnSettings

```
TArray<FLaunchOnTestSettings> LaunchOnSettings
```

The map and device type to be used for the editor Launch On With Map Iterations test.

---

## EXTERNALTOOLS

### ExternalTools

```
TArray<FExternalToolDefinition> ExternalTools
```

External executables and scripts to run as part of automation.

---

## LOADING

### EditorTestModules

```
TArray<FString> EditorTestModules
```

Modules to load that have editor tests

### EngineTestModules

```
TArray<FString> EngineTestModules
```

Modules to load that have engine tests

---

## MISCAUTOMATIONSETUPS

### TestLevelFolders

```
TArray<FString> TestLevelFolders
```

Folders containing levels to exclude from automated tests

### TESTS

```
OPEN ASSET TESTS
```
### AssetsToOpen

```
TArray<FString> AssetsToOpen
```

Asset to test for open in automation process

### MAPS

```
PIE TEST MAPS
```
### MapsToPIETest

```
TArray<FString> MapsToPIETest
```

Maps to PIE during the PIE test

### PIE

```
PLAY ALL PROJECT MAPS IN PIE
```
### bUseAllProjectMapsToPlayInPIE

```
bool bUseAllProjectMapsToPlayInPIE
```

Use all Maps from project for PlayMapInPIE test

---

## SCREENSHOTS

### DefaultScreenshotResolution

```
FIntPoint DefaultScreenshotResolution
```

The default resolution to take all automation screenshots at.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAutomationTestSettings::StaticClass()
```
