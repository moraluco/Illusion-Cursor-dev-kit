# UGroomCreateBindingOptions

**Visibility:** public

## Inheritance

UObject → UGroomCreateBindingOptions → BUILDSETTINGS → TargetGeometryCache

## Description

UGeometryCache TargetGeometryCache

GeometryCache on which the groom is attached to.

TargetSkeletalMesh USkeletalMesh TargetSkeletalMesh

Skeletal mesh on which the groom is attached to.

GroomBindingType EGroomBindingMeshType GroomBindingType

Type of mesh to create groom binding for

## CONVERSION

### SourceGeometryCache

```
UGeometryCache SourceGeometryCache
```

GeometryCache on which the groom has been authored

### MatchingSection

```
int MatchingSection
```

Section to pick to transfer the position

### SourceSkeletalMesh

```
USkeletalMesh SourceSkeletalMesh
```

Skeletal mesh on which the groom has been authored. This is optional, and used only if the hair binding is done a different mesh than the one which it has been authored, i.e., only if the curves roots and the surface geometry don't aligned and need to be wrapped/transformed.

---

## HAIRINTERPOLATION

### NumInterpolationPoints

```
int NumInterpolationPoints
```

Number of points used for the rbf interpolation

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGroomCreateBindingOptions::StaticClass()
```
