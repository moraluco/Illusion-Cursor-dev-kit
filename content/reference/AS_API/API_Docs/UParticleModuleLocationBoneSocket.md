# UParticleModuleLocationBoneSocket

**Visibility:** public

## Inheritance

UParticleModuleLocationBase → UParticleModuleLocationBoneSocket → BONESOCKET → UniversalOffset

## Description

FVector UniversalOffset

An offset to apply to each bone/socket

SourceLocations TArray<FLocationBoneSocketInfo> SourceLocations

The name(s) of the bone/socket(s) to position at. If this is empty, the module will attempt to spawn from all bones or sockets.

SelectionMethod ELocationBoneSocketSelectionMethod SelectionMethod

The method by which to select the bone/socket to spawn at.

SEL_Sequential

loop through the bone/socket array in order

SEL_Random

randomly select a bone/socket from the array

InheritVelocityScale float32 InheritVelocityScale

A scale on how much of the bone's velocity a particle will inherit.

SkelMeshActorParamName FName SkelMeshActorParamName

The parameter name of the skeletal mesh actor that supplies the SkelMeshComponent for in-game.

NumPreSelectedIndices int NumPreSelectedIndices

When we have no source locations and we need to track bone velocities due to bInheritBoneVelocity, we pre select a set of bones to use each frame. This property determines how big the list is.  Too low and the randomness of selection may suffer, too high and memory will be wasted.

EditorSkelMesh USkeletalMesh EditorSkelMesh

The name of the skeletal mesh to use in the editor

SourceType ELocationBoneSocketSource SourceType

Whether the module uses Bones or Sockets for locations.

BONESOCKETSOURCE_Bones

Use Bones as the source locations.

BONESOCKETSOURCE_Sockets

Use Sockets as the source locations.

## FUNCTIONS

### SetbInheritBoneVelocity

```
void SetbInheritBoneVelocity(bool Value)
```

SetbUpdatePositionEachFrame

### void SetbUpdatePositionEachFrame

```
void SetbUpdatePositionEachFrame(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleLocationBoneSocket::StaticClass()
```
