# UGroomAsset

**Visibility:** public

## Inheritance

UObject → UGroomAsset

## Description

Implements an asset that can be used to store hair strands

## HAIRCARDS

### HairGroupsCards

```
TArray<FHairGroupsCardsSourceDescription> HairGroupsCards
```

Cards

### data

```
Source description data
```

---

## HAIRINFO

### HairGroupsInfo

```
TArray<FHairGroupInfoWithVisibility> HairGroupsInfo HAIRINTERPOLATION HairGroupsInterpolation TArray<FHairGroupsInterpolation> HairGroupsInterpolation EnableGlobalInterpolation bool EnableGlobalInterpolation
```

Enable radial basis function interpolation to be used instead of the local skin rigid transform (WIP)

### HairInterpolationType

```
EGroomInterpolationType HairInterpolationType
```

Type of interpolation used (WIP)

---

## HAIRLOD

### HairGroupsLOD

```
TArray<FHairGroupsLOD> HairGroupsLOD
```

---

## HAIRMATERIALS

### HairGroupsMaterials

```
TArray<FHairGroupsMaterial> HairGroupsMaterials
```

Meshes

### data

```
Source description data
```

---

## HAIRMESHES

### HairGroupsMeshes

```
TArray<FHairGroupsMeshesSourceDescription> HairGroupsMeshes
```

Meshes

### data

```
Source description data
```

---

## HAIRPHYSICS

### HairGroupsPhysics

```
TArray<FHairGroupsPhysics> HairGroupsPhysics
```

---

## HAIRRENDERING

### HairGroupsRendering

```
TArray<FHairGroupsRendering> HairGroupsRendering
```

---

## HIDDEN

### AssetUserData

```
TArray<TObjectPtr<UAssetUserData>> AssetUserData
```

Array of user data stored with the asset

---

## IMPORTSETTINGS

### AssetImportData

```
UAssetImportData AssetImportData
```

Asset data to be used when re-importing

---

## LOD

### DisableBelowMinLodStripping

```
FPerPlatformBool DisableBelowMinLodStripping
```

When true all LODs below MinLod will still be cooked

### MinLOD

```
FPerPlatformInt MinLOD
```

Minimum LOD to cook

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGroomAsset::StaticClass()
```
