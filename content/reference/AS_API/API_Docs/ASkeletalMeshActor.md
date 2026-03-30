# ASkeletalMeshActor

**Visibility:** public

## Inheritance

AActor → ASkeletalMeshActor → AAnimationThumbnailSkeletalMeshActor

## Description

SkeletalMeshActor is an instance of a USkeletalMesh in the world.  Skeletal meshes are deformable meshes that can be animated and change their geometry at run-time.  Skeletal meshes dragged into the level from the Content Browser are automatically converted to StaticMeshActors.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Engine​/Content​/Types​/SkeletalMeshes​/ @see USkeletalMesh

## ANIMATION

### bShouldDoAnimNotifies

```
bool bShouldDoAnimNotifies
```

Whether or not this actor should respond to anim notifies

CURRENTLY ONLY AFFECTS PlayParticleEffect NOTIFIES*

---

## SKELETALMESHACTOR

### SkeletalMeshComponent

```
USkeletalMeshComponent SkeletalMeshComponent FUNCTIONS SetbShouldDoAnimNotifies void SetbShouldDoAnimNotifies(bool Value)
```

GetbShouldDoAnimNotifies

### bool GetbShouldDoAnimNotifies

```
bool GetbShouldDoAnimNotifies()const STATIC FUNCTIONS
```

Spawn

### static ASkeletalMeshActor ASkeletalMeshActor::Spawn

```
static ASkeletalMeshActor ASkeletalMeshActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ASkeletalMeshActor::StaticClass

```
static UClass ASkeletalMeshActor::StaticClass()
```
