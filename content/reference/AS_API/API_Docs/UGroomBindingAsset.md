# UGroomBindingAsset

**Visibility:** public

## Inheritance

UObject → UGroomBindingAsset

## Description

Implements an asset that can be used to store binding information between a groom and a skeletal mesh

## BUILDSETTINGS

### SourceGeometryCache

```
UGeometryCache SourceGeometryCache
```
### Groom

```
UGroomAsset Groom
```

Groom to bind.

### SourceSkeletalMesh

```
USkeletalMesh SourceSkeletalMesh
```

Skeletal mesh on which the groom has been authored. This is optional, and used only if the hair binding is done a different mesh than the one which it has been authored

### TargetSkeletalMesh

```
USkeletalMesh TargetSkeletalMesh
```

Skeletal mesh on which the groom is attached to.

### GroomBindingType

```
EGroomBindingMeshType GroomBindingType
```

Type of mesh to create groom binding for

### TargetGeometryCache

```
UGeometryCache TargetGeometryCache
```
### NumInterpolationPoints

```
int NumInterpolationPoints
```

Number of points used for the rbf interpolation

### MatchingSection

```
int MatchingSection
```

Number of points used for the rbf interpolation

---

## HAIRGROUPS

### GroupInfos

```
TArray<FGoomBindingGroupInfo> GroupInfos STATIC FUNCTIONS StaticClass static UClass UGroomBindingAsset::StaticClass()
```
