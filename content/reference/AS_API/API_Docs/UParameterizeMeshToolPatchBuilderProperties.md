# UParameterizeMeshToolPatchBuilderProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UParameterizeMeshToolPatchBuilderProperties → PATCHBUILDER → CurvatureAlignment

## Description

float32 CurvatureAlignment

Alignment of the initial patches to creases in the mesh.

MergingDistortionThreshold float32 MergingDistortionThreshold

Threshold for stretching and distortion below which island merging is allowed; larger values increase the allowable UV distortion.

MergingAngleThreshold float32 MergingAngleThreshold

Threshold for the average face normal deviation below which island merging is allowed.

SmoothingSteps int SmoothingSteps

Number of smoothing steps to apply; this slightly increases distortion but produces more stable results.

SmoothingAlpha float32 SmoothingAlpha

Smoothing parameter; larger values result in faster smoothing in each step.

bRepack bool bRepack

Automatically pack result UVs into the unit square, i.e. fit between 0 and 1 with no overlap.

TextureResolution int TextureResolution

Expected resolution of the output textures; this controls spacing left between UV islands to avoid interpolation artifacts. This is only enabled when Repack is enabled.

InitialPatches int InitialPatches

Number of initial patches the mesh will be split into before island merging.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParameterizeMeshToolPatchBuilderProperties::StaticClass()
```
