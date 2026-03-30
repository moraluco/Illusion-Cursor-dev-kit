# UEditorLoadingSavingSettings

**Visibility:** public

## Inheritance

UObject → UEditorLoadingSavingSettings

## Description

Implements the Level Editor's loading and saving settings.

## AUTOREIMPORT

### bDetectChangesOnStartup

```
bool bDetectChangesOnStartup
```

When enabled, changes to monitored directories since UE was closed will be detected on restart.  (Not recommended when working in collaboration with others using source control).

### bMonitorContentDirectories

```
bool bMonitorContentDirectories
```

When enabled, changes to made to source content files inside the content directories will automatically be reflected in the content browser.  Note that source content files must reside in one of the monitored directories to be eligible for auto-reimport.  Advanced setup options are available below.

### AutoReimportDirectorySettings

```
TArray<FAutoReimportDirectoryConfig> AutoReimportDirectorySettings
```

Lists every directory to monitor for content changes. Can be virtual package paths (eg /Game/ or /MyPlugin/), or absolute paths on disk.  Paths should point to the locations of the source content files (e.g. *.fbx, *.png) you want to be eligible for auto-reimport.

### AutoReimportThreshold

```
float32 AutoReimportThreshold
```

Specifies an amount of time to wait before a specific file change is considered for auto reimport

### bAutoCreateAssets

```
bool bAutoCreateAssets
```

When enabled, newly added source content files will be automatically imported into new assets.

### bAutoDeleteAssets

```
bool bAutoDeleteAssets
```

When enabled, deleting a source content file will automatically prompt the deletion of any related assets.

### bPromptBeforeAutoImporting

```
bool bPromptBeforeAutoImporting
```

Whether to prompt the user to import detected changes.

---

## AUTOSAVE

### AutoSaveInteractionDelayInSeconds

```
int AutoSaveInteractionDelayInSeconds
```

The minimum number of seconds to wait after the last user interactions (with the editor) before auto-save can trigger

### AutoSaveTimeMinutes

```
int AutoSaveTimeMinutes
```

The time interval after which to auto save

### AutoSaveWarningInSeconds

```
int AutoSaveWarningInSeconds
```

The number of seconds warning before an autosave

---

## BLUEPRINTS

### bDirtyMigratedBlueprints

```
bool bDirtyMigratedBlueprints
```

Whether to mark blueprints dirty if they are automatically migrated during loads

---

## STARTUP

### LoadLevelAtStartup

```
ELoadLevelAtStartup LoadLevelAtStartup
```

Whether to load a default example map at startup

---

## FUNCTIONS

### SetbAutomaticallyCheckoutOnAssetModification

```
void SetbAutomaticallyCheckoutOnAssetModification(bool Value)
```

SetbRestoreOpenAssetTabsOnRestart

### void SetbRestoreOpenAssetTabsOnRestart

```
void SetbRestoreOpenAssetTabsOnRestart(bool Value)
```

SetbAutoSaveEnable

### void SetbAutoSaveEnable

```
void SetbAutoSaveEnable(bool Value)
```

SetbAutoSaveMaps

### void SetbAutoSaveMaps

```
void SetbAutoSaveMaps(bool Value)
```

SetbAutoSaveContent

### void SetbAutoSaveContent

```
void SetbAutoSaveContent(bool Value)
```

SetbForceCompilationAtStartup

### void SetbForceCompilationAtStartup

```
void SetbForceCompilationAtStartup(bool Value)
```

SetbPromptForCheckoutOnAssetModification

### void SetbPromptForCheckoutOnAssetModification

```
void SetbPromptForCheckoutOnAssetModification(bool Value)
```

SetbSCCAutoAddNewFiles

### void SetbSCCAutoAddNewFiles

```
void SetbSCCAutoAddNewFiles(bool Value)
```

SetbSCCUseGlobalSettings

### void SetbSCCUseGlobalSettings

```
void SetbSCCUseGlobalSettings(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorLoadingSavingSettings::StaticClass()
```
