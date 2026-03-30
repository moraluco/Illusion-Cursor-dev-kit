# UEditorExperimentalSettings

**Visibility:** public

## Inheritance

UObject → UEditorExperimentalSettings

## Description

Implements Editor settings for experimental features.

## BLUEPRINTS

### bBreakOnExceptions

```
bool bBreakOnExceptions
```

Break on Exceptions allows you to trap Access Nones and other exceptional events in Blueprints.

### CONTENT BROWSER

```
CONTENT BROWSER bEnableLongPathsSupport bool bEnableLongPathsSupport
```

Allows creation of assets with paths longer than 260 characters. Note that this also requires the Windows 10 Anniversary Update (1607), and support for long paths to be enabled through the group policy editor.

---

## COOKING

### bSharedCookedBuilds

```
bool bSharedCookedBuilds
```
### bDisableCookInEditor

```
bool bDisableCookInEditor
```

Disable cook in the editor

### MultiProcessCooking

```
int MultiProcessCooking
```

---

## CORE

### bTextAssetFormatSupport

```
bool bTextAssetFormatSupport
```

Enables in-editor support for text asset formats

---

## FOLIAGE

### bProceduralFoliage

```
bool bProceduralFoliage
```

Allows usage of the procedural foliage system

---

## HDR

### HDREditorNITLevel

```
float32 HDREditorNITLevel
```

The brightness of the slate UI on HDR monitors

### bHDREditor

```
bool bHDREditor
```

Allows the editor to run on HDR monitors on Windows 10

---

## INTERCHANGE

### bEnableInterchangeFramework

```
bool bEnableInterchangeFramework
```

Enable interchange framework, the interchange framework is a new import system which can import asynchronously and in parallel. See the interchange project settings to configure the import pipeline

### bEnableInterchangeFrameworkForTextureOnly

```
bool bEnableInterchangeFrameworkForTextureOnly
```

Enable interchange framework, the interchange framework is a new import system which can import asynchronously and in parallel but only add support the texture assets. See the interchange project settings to configure the import pipeline

---

## LEVEL

### bPackedLevelActor

```
bool bPackedLevelActor
```

Allows creating APackedLevelActor blueprint actors

### bLevelInstance

```
bool bLevelInstance
```

Allows creating ALevelInstance actors

---

## LIGHTINGBUILDS

### bEnableMultithreadedLightmapEncoding

```
bool bEnableMultithreadedLightmapEncoding
```

Enable multithreaded lightmap encoding (decreases time taken to encode lightmaps)

### bEnableMultithreadedShadowmapEncoding

```
bool bEnableMultithreadedShadowmapEncoding
```

Enable multithreaded shadow map encoding (decreases time taken to encode shadow maps)

---

## MATERIALS

### bExampleLayersAndBlends

```
bool bExampleLayersAndBlends
```

When creating new Material Layers and Material Layer Blends, set up example graphs.

---

## PERFORMANCE

### bEnableAsyncStaticMeshCompilation

```
bool bEnableAsyncStaticMeshCompilation
```

Enable async static mesh compilation to improve import and map load time performance when compilation is required

### bEnableAsyncSkeletalMeshCompilation

```
bool bEnableAsyncSkeletalMeshCompilation
```

Enable async skeletal mesh compilation to improve import and map load time performance when compilation is required

### bEnableAsyncTextureCompilation

```
bool bEnableAsyncTextureCompilation
```

Enable async texture compilation to improve PIE and map load time performance when compilation is required

---

## PIE

### bAllowVulkanPreview

```
bool bAllowVulkanPreview
```
### Preview

```
Allow Vulkan Preview
```
### bAllowLateJoinInPIE

```
bool bAllowLateJoinInPIE
```

Enable late joining in PIE

### bMobilePIEPreviewDeviceLaunch

```
bool bMobilePIEPreviewDeviceLaunch
```

Enable experimental PIE preview device launch

---

## TOOLS

### bEnableActorFolderObjectSupport

```
bool bEnableActorFolderObjectSupport
```

Whether to enable actor folder object support in the engine.

### bEnableOneFilePerActorSupport

```
bool bEnableOneFilePerActorSupport
```

Whether to enable one file per actor support in the engine.

### bAllowPotentiallyUnsafePropertyEditing

```
bool bAllowPotentiallyUnsafePropertyEditing
```

Allows editing of potentially unsafe properties during PIE. Advanced use only

### use with caution.

```
use with caution.
```

bFacialAnimationImporter

### bool bFacialAnimationImporter

```
bool bFacialAnimationImporter
```

Enable experimental bulk facial animation importer (found in Developer Tools menu, requires editor restart)

### bUseOpenCLForConvexHullDecomp

```
bool bUseOpenCLForConvexHullDecomp
```

Whether to use OpenCL to accelerate convex hull decomposition (uses GPU to decrease time taken to decompose meshes, currently only available on Mac OS X)

### bEnableTranslationPicker

```
bool bEnableTranslationPicker
```

Allows usage of the Translation Picker

---

## USERINTERFACE

### ConsoleForGamepadLabels

```
EConsoleForGamepadLabels ConsoleForGamepadLabels
```

Specify which console-specific nomenclature to use for gamepad label text

### bContextMenuChunkAssignments

```
bool bContextMenuChunkAssignments
```

Allows ChunkIDs to be assigned to assets to via the content browser context menu.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorExperimentalSettings::StaticClass()
```
