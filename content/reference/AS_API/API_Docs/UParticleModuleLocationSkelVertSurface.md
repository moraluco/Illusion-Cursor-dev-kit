# UParticleModuleLocationSkelVertSurface

**Visibility:** public

## Inheritance

UParticleModuleLocationBase → UParticleModuleLocationSkelVertSurface → VERTSURFACE → ValidAssociatedBones

## Description

TArray<FName> ValidAssociatedBones

This module will only spawn from verts or surfaces associated with the bones in this list

UniversalOffset FVector UniversalOffset

An offset to apply to each vert/surface

InheritVelocityScale float32 InheritVelocityScale

A scale on how much of the bone's velocity a particle will inherit.

SkelMeshActorParamName FName SkelMeshActorParamName

The parameter name of the skeletal mesh actor that supplies the SkelMeshComponent for in-game.

EditorSkelMesh USkeletalMesh EditorSkelMesh

The name of the skeletal mesh to use in the editor

SourceType ELocationSkelVertSurfaceSource SourceType

Whether the module uses Verts or Surfaces for locations.

VERTSURFACESOURCE_Vert

Use Verts as the source locations.

VERTSURFACESOURCE_Surface

Use Surfaces as the source locations.

NormalToCompare FVector NormalToCompare

Use this normal to restrict spawning locations

NormalCheckToleranceDegrees float32 NormalCheckToleranceDegrees

Normal tolerance.  0 degrees means it must be an exact match, 180 degrees means it can be any angle.

ValidMaterialIndices TArray<int> ValidMaterialIndices

Array of material indices that are valid materials to spawn from.  If empty, any material will be considered valid

InheritUVChannel uint InheritUVChannel

UV channel to inherit from the spawn mesh, internally clamped to those available.

## FUNCTIONS

### SetbOrientMeshEmitters

```
void SetbOrientMeshEmitters(bool Value)
```

SetbInheritBoneVelocity

### void SetbInheritBoneVelocity

```
void SetbInheritBoneVelocity(bool Value)
```

SetbEnforceNormalCheck

### void SetbEnforceNormalCheck

```
void SetbEnforceNormalCheck(bool Value)
```

SetbInheritVertexColor

### void SetbInheritVertexColor

```
void SetbInheritVertexColor(bool Value)
```

SetbInheritUV

### void SetbInheritUV

```
void SetbInheritUV(bool Value)
```

SetbUpdatePositionEachFrame

### void SetbUpdatePositionEachFrame

```
void SetbUpdatePositionEachFrame(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleLocationSkelVertSurface::StaticClass()
```
