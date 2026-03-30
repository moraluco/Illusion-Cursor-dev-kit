# UAnimBlueprint

**Visibility:** public

## Inheritance

UBlueprint → UAnimBlueprint

## Description

An Anim Blueprint is essentially a specialized Blueprint whose graphs control the animation of a Skeletal Mesh.  It can perform blending of animations, directly control the bones of the skeleton, and output a final pose for a Skeletal Mesh each frame.

## CLASSOPTIONS

### TargetSkeleton

```
USkeleton TargetSkeleton
```

This is the target skeleton asset for anim instances created from this blueprint; all animations referenced by the BP should be compatible with this skeleton.  For advanced use only, it is easy to cause errors if this is modified without updating or replacing all referenced animations.

---

## OPTIMIZATION

### bWarnAboutBlueprintUsage

```
bool bWarnAboutBlueprintUsage
```

Selecting this option will cause the compiler to emit warnings whenever a call into Blueprint is made from the animation graph. This can help track down optimizations that need to be made.

### bUseMultiThreadedAnimationUpdate

```
bool bUseMultiThreadedAnimationUpdate
```

Allows this anim Blueprint to update its native update, blend tree, montages and asset players on a worker thread. The compiler will attempt to pick up any issues that may occur with threaded update.  For updates to run in multiple threads both this flag and the project setting "Allow Multi Threaded Animation Update" should be set.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimBlueprint::StaticClass()
```
