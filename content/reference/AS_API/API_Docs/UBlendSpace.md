# UBlendSpace

**Visibility:** public

## Inheritance

UAnimationAsset → UBlendSpace → UAimOffsetBlendSpace → UBlendSpace1D

## Description

Allows multiple animations to be blended between based on input parameters

## ADDITIVESETTINGS

### PreviewBasePose

```
UAnimSequence PreviewBasePose
```

Preview Base pose for additive BlendSpace

---

## ANALYSISPROPERTIES

### AnalysisProperties

```
UAnalysisProperties AnalysisProperties
```

Analysis properties for each axis. Note that these can be null. They will be created/set from FBlendSpaceDetails::HandleAnalysisFunctionChanged

---

## ANIMATIONNOTIFIES

### NotifyTriggerMode

```
ENotifyTriggerMode NotifyTriggerMode
```

The current mode used by the BlendSpace to decide which animation notifies to fire. Valid options are: - AllAnimations: All notify events will fire - HighestWeightedAnimation: Notify events will only fire from the highest weighted animation - None: No notify events will fire from any animations

---

## BLENDPARAMETERSTEST

### BlendParameters

```
FBlendParameter BlendParameters
```

Blend Parameters for each axis.

---

## BLENDSAMPLES

### SampleData

```
TArray<FBlendSample> SampleData
```

Sample animation data

---

## INPUTINTERPOLATION

### bInterpolateUsingGrid

```
bool bInterpolateUsingGrid
```

If true then interpolation is done via a grid at runtime. If false the interpolation uses the triangulation.

### InterpolationParam

```
FInterpolationParameter InterpolationParam
```

Input Smoothing parameters for each input axis

### PreferredTriangulationDirection

```
EPreferredTriangulationDirection PreferredTriangulationDirection
```

Preferred edge direction when the triangulation has to make an arbitrary choice

### AxisToScaleAnimation

```
EBlendSpaceAxis AxisToScaleAnimation
```

If you have input smoothing, this specifies the axis on which to scale the animation playback speed. E.g. for locomotion animation, the speed axis will scale the animation speed in order to make up the difference between the target and the result of blending the samples.

---

## SAMPLESMOOTHING

### TargetWeightInterpolationSpeedPerSec

```
float32 TargetWeightInterpolationSpeedPerSec
```

If greater than zero, this is the speed at which the sample weights are allowed to change.

### A speed of 1 means a sample weight can change from zero to one

```
A speed of 1 means a sample weight can change from zero to one(or one to zero)in one second. A speed of 2 means that this would take half a second.
```

This allows the Blend Space to switch to new parameters without going through intermediate states, effectively blending between where it was and where the new target is. For example, imagine we have a blend space for locomotion, moving left, forward and right. Now if you interpolate the inputs of the blend space itself, from one extreme to the other, you will go from left, to forward, to right.  As an alternative, by setting this Sample Weight Speed to a value higher than zero, it will go directly from left to right, without going through moving forward first.

Smaller values mean slower adjustments of the sample weights, and thus more smoothing. However, a value of zero disables this smoothing entirely.

### bTargetWeightInterpolationEaseInOut

```
bool bTargetWeightInterpolationEaseInOut
```

If set then this eases in/out the sample weight adjustments, using the speed to determine how much smoothing to apply.

### PerBoneBlend

```
TArray<FPerBoneInterpolation> PerBoneBlend
```

Per bone sample smoothing settings, which affect the specified bone and all its descendants in the skeleton.  These act as overrides to the global sample smoothing speed, which means the global sample smoothing speed does not affect these bones. Note that they also override each other - so a per-bone setting on the chest will not affect the hand if there is a per-bone setting on the arm.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBlendSpace::StaticClass()
```
