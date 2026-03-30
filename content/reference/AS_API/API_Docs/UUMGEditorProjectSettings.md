# UUMGEditorProjectSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UUMGEditorProjectSettings

## Description

Implements the settings for the UMG Editor Project Settings

## Members

### FILTERING

```
CLASS FILTERING
```
### CategoriesToHide

```
TArray<FString> CategoriesToHide
```
### bShowWidgetsFromEngineContent

```
bool bShowWidgetsFromEngineContent
```
### bShowWidgetsFromDeveloperContent

```
bool bShowWidgetsFromDeveloperContent
```
### WidgetClassesToHide

```
TArray<FSoftClassPath> WidgetClassesToHide
```

---

## COMPILER

### DefaultCompilerOptions

```
FWidgetCompilerOptions DefaultCompilerOptions
```
### DirectoryCompilerOptions

```
TArray<FDirectoryWidgetCompilerOptions> DirectoryCompilerOptions
```

---

## DESIGNER

### DefaultRootWidget

```
TSubclassOf<UPanelWidget> DefaultRootWidget
```

The panel widget to place at the root of all newly constructed widget blueprints. Can be empty.

### DebugResolutions

```
TArray<FDebugResolution> DebugResolutions
```
### bUseWidgetTemplateSelector

```
bool bUseWidgetTemplateSelector
```

Enables a dialog that lets you select a root widget before creating a widget blueprint

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UUMGEditorProjectSettings::StaticClass()
```
