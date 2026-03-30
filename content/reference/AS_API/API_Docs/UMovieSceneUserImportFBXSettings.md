# UMovieSceneUserImportFBXSettings

**Visibility:** public

## Inheritance

UObject → UMovieSceneUserImportFBXSettings → IMPORT

## Description

bForceFrontXAxis bool bForceFrontXAxis

Convert the scene from FBX coordinate system to UE coordinate system with front X axis instead of -Y

bConvertSceneUnit bool bConvertSceneUnit

Convert the scene from FBX unit to UE unit(centimeter)

ImportUniformScale float32 ImportUniformScale

## Members

### Scale

```
Import Uniform Scale
```
### bCreateCameras

```
bool bCreateCameras
```

Whether to create cameras if they don't already exist in the level.

### bReplaceTransformTrack

```
bool bReplaceTransformTrack
```

Whether to replace the existing transform track or create a new track/section

### bReduceKeys

```
bool bReduceKeys
```

Whether to remove keyframes within a tolerance from the imported tracks

### ReduceKeysTolerance

```
float32 ReduceKeysTolerance
```

The tolerance for reduce keys

### bMatchByNameOnly

```
bool bMatchByNameOnly
```

Match fbx node names to sequencer node names

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneUserImportFBXSettings::StaticClass()
```
