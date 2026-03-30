# UMovieSceneSkeletalAnimationTrack

**Visibility:** public

## Inheritance

UMovieSceneNameableTrack → UMovieSceneSkeletalAnimationTrack

## Description

Handles animation of skeletal mesh actors

## Members

### MOTIONS

```
ROOT MOTIONS
```
### bShowRootMotionTrail

```
bool bShowRootMotionTrail
```

Whether to show the position of the root for this sections

### bBlendFirstChildOfRoot

```
bool bBlendFirstChildOfRoot
```

Whether to blend and adjust the first child node instead of the root, this should be true for blending when the root is static, false if the animations have proper root motion

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneSkeletalAnimationTrack::StaticClass()
```
