# UCookerSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UCookerSettings

## Description

Various cooker settings.

## COOKER

### BlueprintComponentDataCookingMethod

```
EBlueprintComponentDataCookingMethod BlueprintComponentDataCookingMethod
```

Generate optimized component data to speed up Blueprint construction at runtime. This option can increase the overall Blueprint memory usage in a cooked build. Requires Event-Driven Loading (EDL), which is enabled by default.

### bEnableBuildDDCInBackground

```
bool bEnableBuildDDCInBackground
```
### bIterativeCookingForLaunchOn

```
bool bIterativeCookingForLaunchOn
```

Enable -iterate for launch on

### bIterativeCookingForFileCookContent

```
bool bIterativeCookingForFileCookContent
```

Enable -iterate when triggering from File dropdown menu

### bCookOnTheFlyForLaunchOn

```
bool bCookOnTheFlyForLaunchOn
```

Enable -cookonthefly for launch on

### CookProgressDisplayMode

```
ECookProgressDisplayMode CookProgressDisplayMode
```

Controls log output of the cooker

### bIgnoreIniSettingsOutOfDateForIteration

```
bool bIgnoreIniSettingsOutOfDateForIteration
```

Ignore ini changes when doing iterative cooking, either in editor or out of editor

### bIgnoreScriptPackagesOutOfDateForIteration

```
bool bIgnoreScriptPackagesOutOfDateForIteration
```

Ignore native header file changes when doing iterative cooking, either in editor or out of editor

### bCompileBlueprintsInDevelopmentMode

```
bool bCompileBlueprintsInDevelopmentMode
```

Whether or not to compile Blueprints in development mode when cooking.

### bEnableCookOnTheSide

```
bool bEnableCookOnTheSide
```
### ClassesExcludedOnDedicatedServer

```
TArray<FString> ClassesExcludedOnDedicatedServer
```

List of class names to exclude when cooking for dedicated server

### ModulesExcludedOnDedicatedServer

```
TArray<FString> ModulesExcludedOnDedicatedServer
```

List of module names to exclude when cooking for dedicated server

### ClassesExcludedOnDedicatedClient

```
TArray<FString> ClassesExcludedOnDedicatedClient
```

List of class names to exclude when cooking for dedicated client

### ModulesExcludedOnDedicatedClient

```
TArray<FString> ModulesExcludedOnDedicatedClient
```

List of module names to exclude when cooking for dedicated client

### VersionedIntRValues

```
TArray<FString> VersionedIntRValues
```

List of r values that need to be versioned

---

## TEXTURES

### DefaultASTCQualityBySize

```
int DefaultASTCQualityBySize
```

Quality of 0 means smallest (12x12 block size), 4 means best (4x4 block size)

### DefaultASTCCompressor

```
ETextureFormatASTCCompressor DefaultASTCCompressor
```

which compressor to use for ASTC textures

### DefaultASTCQualityBySpeed

```
int DefaultASTCQualityBySpeed
```

Quality of 0 means fastest, 3 means best quality

---

## FUNCTIONS

### SetbAllowCookedDataInEditorBuilds

```
void SetbAllowCookedDataInEditorBuilds(bool Value)
```

SetbAllowASTCHDRProfile

### void SetbAllowASTCHDRProfile

```
void SetbAllowASTCHDRProfile(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCookerSettings::StaticClass()
```
