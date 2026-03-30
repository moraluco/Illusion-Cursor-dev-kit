# UFbxAnimSequenceImportData

**Visibility:** public

## Inheritance

UFbxAssetImportData → UFbxAnimSequenceImportData

## Description

Import data and options used when importing any mesh from FBX

## IMPORTSETTINGS

### bImportBoneTracks

```
bool bImportBoneTracks
```

Import bone transform tracks. If false, this will discard any bone transform tracks. (useful for curves only animations)

### AnimationLength

```
EFBXAnimationLengthImportType AnimationLength
```

Which animation range to import. The one defined at Exported, at Animated time or define a range manually

### bUseDefaultSampleRate

```
bool bUseDefaultSampleRate
```

If enabled, samples all animation curves to 30 FPS

### CustomSampleRate

```
int CustomSampleRate
```

Sample fbx animation data at the specified sample rate, 0 find automaticaly the best sample rate

### bImportCustomAttribute

```
bool bImportCustomAttribute
```

Import if custom attribute as a curve within the animation

### bDeleteExistingCustomAttributeCurves

```
bool bDeleteExistingCustomAttributeCurves
```

If true, all previous custom attribute curves will be deleted when doing a re-import.

### bDeleteExistingNonCurveCustomAttributes

```
bool bDeleteExistingNonCurveCustomAttributes
```

If true, all previous non-curve custom attributes will be deleted when doing a re-import.

### bImportMeshesInBoneHierarchy

```
bool bImportMeshesInBoneHierarchy
```

If checked, meshes nested in bone hierarchies will be imported instead of being converted to bones.

### bSetMaterialDriveParameterOnCustomAttribute

```
bool bSetMaterialDriveParameterOnCustomAttribute
```

Set Material Curve Type for all custom attributes that exists

### MaterialCurveSuffixes

```
TArray<FString> MaterialCurveSuffixes
```

Set Material Curve Type for the custom attribute with the following suffixes. This doesn't matter if Set Material Curve Type is true

### bRemoveRedundantKeys

```
bool bRemoveRedundantKeys
```

When importing custom attribute as curve, remove redundant keys

### bDeleteExistingMorphTargetCurves

```
bool bDeleteExistingMorphTargetCurves
```

If enabled, this will delete this type of asset from the FBX

### bDoNotImportCurveWithZero

```
bool bDoNotImportCurveWithZero
```

When importing custom attribute or morphtarget as curve, do not import if it doens't have any value other than zero. This is to avoid adding extra curves to evaluate

### bPreserveLocalTransform

```
bool bPreserveLocalTransform
```

If enabled, this will import a curve within the animation

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFbxAnimSequenceImportData::StaticClass()
```
