# UFbxTextureImportData

**Visibility:** public

## Inheritance

UFbxAssetImportData → UFbxTextureImportData

## Description

Import data and options used when importing any mesh from FBX

## IMPORTSETTINGS

### bInvertNormalMaps

```
bool bInvertNormalMaps
```

If importing textures is enabled, this option will cause normal map Y (Green) values to be inverted

### MaterialSearchLocation

```
EMaterialSearchLocation MaterialSearchLocation
```

Specify where we should search for matching materials when importing

---

## MATERIAL

### BaseDiffuseTextureName

```
FString BaseDiffuseTextureName
```
### BaseColorName

```
FString BaseColorName
```
### BaseMaterialName

```
FSoftObjectPath BaseMaterialName
```

Base material to instance from when importing materials.

### BaseNormalTextureName

```
FString BaseNormalTextureName
```
### BaseEmmisiveTextureName

```
FString BaseEmmisiveTextureName
```
### BaseSpecularTextureName

```
FString BaseSpecularTextureName
```
### BaseOpacityTextureName

```
FString BaseOpacityTextureName BaseEmissiveColorName FString BaseEmissiveColorName FUNCTIONS SetbInvertNormalMaps void SetbInvertNormalMaps(bool Value)
```

GetbInvertNormalMaps

### bool GetbInvertNormalMaps

```
bool GetbInvertNormalMaps()const STATIC FUNCTIONS
```

StaticClass

### static UClass UFbxTextureImportData::StaticClass

```
static UClass UFbxTextureImportData::StaticClass()
```
