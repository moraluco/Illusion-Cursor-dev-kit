# UFbxAssetImportData

**Visibility:** public

## Inheritance

UAssetImportData → UFbxAssetImportData → UFbxAnimSequenceImportData → UFbxMeshImportData → UFbxTextureImportData

## Description

Base class for import data and options used when importing any asset from FBX

## MISCELLANEOUS

### bForceFrontXAxis

```
bool bForceFrontXAxis
```

Convert the scene from FBX coordinate system to UE coordinate system with front X axis instead of -Y

### bConvertScene

```
bool bConvertScene
```

Convert the scene from FBX coordinate system to UE coordinate system

### bConvertSceneUnit

```
bool bConvertSceneUnit
```

Convert the scene from FBX unit to UE unit (centimeter).

---

## TRANSFORM

### ImportUniformScale

```
float32 ImportUniformScale ImportRotation FRotator ImportRotation ImportTranslation FVector ImportTranslation STATIC FUNCTIONS StaticClass static UClass UFbxAssetImportData::StaticClass()
```
