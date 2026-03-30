# UMovieSceneUserImportFBXControlRigSettings

**Visibility:** public

## Inheritance

UObject → UMovieSceneUserImportFBXControlRigSettings

## Description

CONTROL ATTRIBUTE MAPPINGS ControlChannelMappings TArray<FControlToTransformMappings> ControlChannelMappings

Mappings for how Control Rig Control Attributes Map to the incoming Transforms

## IMPORT

### bConvertSceneUnit

```
bool bConvertSceneUnit
```

Convert the scene from FBX unit to UE unit(centimeter)

### ImportUniformScale

```
float32 ImportUniformScale
```
### Scale

```
Import Uniform Scale
```
### OPTIONS

```
IMPORT OPTIONS
```
### bImportOntoSelectedControls

```
bool bImportOntoSelectedControls
```

Whether or not import onto selected controls or all controls

### bForceFrontXAxis

```
bool bForceFrontXAxis
```

Convert the scene from FBX coordinate system to UE coordinate system with front X axis instead of -Y

### TimeToInsertOrReplaceAnimation

```
FFrameNumber TimeToInsertOrReplaceAnimation
```

Time that we insert or replace the imported animation

### bInsertAnimation

```
bool bInsertAnimation
```

Whether or not we insert or replace, by default we insert

### bSpecifyTimeRange

```
bool bSpecifyTimeRange
```

Whether to import over specific Time Range

### StartTimeRange

```
FFrameNumber StartTimeRange
```
### Import

```
Start Time Range To Import
```
### EndTimeRange

```
FFrameNumber EndTimeRange
```
### Import

```
End Time Range To Import
```
### STRING MATCHING OPTIONS

```
STRING MATCHING OPTIONS FindAndReplaceStrings TArray<FControlFindReplaceString> FindAndReplaceStrings
```

### Strings In Imported Node To Find And Replace

```
Strings In Imported Node To Find And Replace
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneUserImportFBXControlRigSettings::StaticClass()
```
