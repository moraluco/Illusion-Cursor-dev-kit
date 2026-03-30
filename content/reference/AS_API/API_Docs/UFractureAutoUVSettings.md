# UFractureAutoUVSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureAutoUVSettings

## Description

Settings for UV layout and texture baking on the geometry collection

## AMBIENTOCCLUSIONSETTINGS

### OcclusionBlurRadius

```
float OcclusionBlurRadius
```

Pixel Radius of Gaussian Blur Kernel applied to AO map (0 will apply no blur)

### OcclusionRays

```
int OcclusionRays
```

Number of occlusion rays

---

## ATTRIBUTESTOBAKE

### bAmbientOcclusion

```
bool bAmbientOcclusion
```

Bake the ambient occlusion of each bone (considered separately) to a texture channel (green)

### bSmoothedCurvature

```
bool bSmoothedCurvature
```

Bake a smoothed curvature metric to a texture channel (blue) Specifically, this is the mean curvature of a smoothed copy of each fractured piece, baked back to the respective fracture piece Note that this attribute is relatively expensive to compute

### bDistToOuter

```
bool bDistToOuter
```

Bake the distance to the external surface to a texture channel (red)

### BakeTextureType

```
ETextureType BakeTextureType
```

Which standard set of texture channels to bake

---

## DISTTOOUTERSETTINGS

### MaxDistance

```
float MaxDistance
```

Max distance to search for the outer mesh surface

---

## MAPSETTINGS

### TargetMaterialIDs

```
ETargetMaterialIDs TargetMaterialIDs
```

Choose whether to texture only faces with odd material IDs (corresponding to internal faces) or a custom selection

### bPromptToSave

```
bool bPromptToSave
```

Whether to prompt user for an asset name for each generated texture, or automatically place them next to the source Geometry Collections

### GutterSize

```
int GutterSize
```

Approximate space to leave between UV islands, measured in texels

### MaterialIDs

```
TArray<int> MaterialIDs
```

Custom selection of material IDs to target for texturing

### Resolution

```
EAutoUVTextureResolution Resolution
```

The pixel resolution of the generated map

### bReplaceExisting

```
bool bReplaceExisting
```

Whether to allow the new texture to overwrite an existing texture

---

## SMOOTHEDCURVATURESETTINGS

### CurvatureBlurRadius

```
float CurvatureBlurRadius
```

Pixel Radius of Gaussian Blur Kernel applied to Curvature map (0 will apply no blur)

### MaxCurvature

```
float MaxCurvature
```

Curvatures in the range [-MaxCurvature, MaxCurvature] will be mapped from [0,1]. Values outside that range will be clamped

### VoxelResolution

```
int VoxelResolution
```

Voxel resolution of smoothed shape representation

### SmoothingIterations

```
int SmoothingIterations
```

Amount of smoothing iterations to apply before computing curvature

### ThicknessFactor

```
float ThicknessFactor
```

Distance to search for correspondence between fractured shape and smoothed shape, as factor of voxel size

---

## UNWRAP

### ProjectionScale

```
FVector ProjectionScale
```

The scale factor to use for UV box projection

---

## UVCHANNEL

### UVChannel

```
FString UVChannel
```

Which UV channel to use for layout and baking

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureAutoUVSettings::StaticClass()
```
