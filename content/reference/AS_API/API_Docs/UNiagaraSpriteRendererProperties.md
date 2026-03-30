# UNiagaraSpriteRendererProperties

**Visibility:** public

## Inheritance

UNiagaraRendererProperties → UNiagaraSpriteRendererProperties → BINDINGS → MaterialParameterBindings

## Description

TArray<FNiagaraMaterialAttributeBinding> MaterialParameterBindings

If this array has entries, we will create a MaterialInstanceDynamic per Emitter instance from Material and set the Material parameters using the Niagara simulation variables listed.

## CUTOUT

### AlphaThreshold

```
float32 AlphaThreshold
```

Alpha channel values larger than the threshold are considered occupied and will be contained in the bounding geometry.  Raising this threshold slightly can reduce overdraw in particles using this animation asset.

### bUseMaterialCutoutTexture

```
bool bUseMaterialCutoutTexture
```

Use the cutout texture from the material opacity mask, or if none exist, from the material opacity.

### CutoutTexture

```
UTexture2D CutoutTexture
```

Texture to generate bounding geometry from.

### BoundingMode

```
ESubUVBoundingVertexCount BoundingMode
```

More bounding vertices results in reduced overdraw, but adds more triangle overhead.  The eight vertex mode is best used when the SubUV texture has a lot of space to cut out that is not captured by the four vertex version, and when the particles using the texture will be few and large.

### OpacitySourceMode

```
EOpacitySourceMode OpacitySourceMode
```

---

## SORTING

### SortMode

```
ENiagaraSortMode SortMode
```

Determines how we sort the particles prior to rendering.

### RENDERING

```
SPRITE RENDERING
```
### MaxFacingCameraBlendDistance

```
float32 MaxFacingCameraBlendDistance
```

When FacingMode is FacingCameraDistanceBlend, the distance at which the sprite is fully facing the camera position

### PivotInUVSpace

```
FVector2D PivotInUVSpace
```

Determines the location of the pivot point of this particle. It follows Unreal's UV space, which has the upper left of the image at 0,0 and bottom right at 1,1. The middle is at 0.5, 0.5.  NOTE: This value is ignored if "Pivot Offset Binding" is bound to a valid attribute

### Alignment

```
ENiagaraSpriteAlignment Alignment
```

Imagine the particle texture having an arrow pointing up, these modes define how the particle aligns that texture to other particle attributes.

### Material

```
UMaterialInterface Material
```

The material used to render the particle. Note that it must have the Use with Niagara Sprites flag checked.

### PixelCoverageBlend

```
float32 PixelCoverageBlend
```

When pixel coverage is enabled this allows you to control the blend of the pixel coverage color adjustment.  i.e. 1.0 = full, 0.5 = 50/50 blend, 0.0 = none

### MacroUVRadius

```
float32 MacroUVRadius
```

World space radius that UVs generated with the ParticleMacroUV material node will tile based on.

### FacingMode

```
ENiagaraSpriteFacingMode FacingMode
```

Determines how the particle billboard orients itself relative to the camera.

### MaterialUserParamBinding

```
FNiagaraUserParameterBinding MaterialUserParamBinding
```

Use the UMaterialInterface bound to this user variable if it is set to a valid value. If this is bound to a valid value and Material is also set, UserParamBinding wins.

### PixelCoverageMode

```
ENiagaraRendererPixelCoverageMode PixelCoverageMode
```

This setting controls what happens when a sprite becomes less than a pixel in size.  Disabling will apply nothing and can result in flickering issues, especially with Temporal Super Resolution.  Automatic will enable the appropriate settings when the material blend mode is some form of translucency, project setting must also be enabled.  When coverage is less than a pixel, we also calculate a percentage of coverage, and then darken or reduce opacity to visually compensate. The different enabled settings allow you to control how the coverage amount is applied to your particle color.  If particle color is not connected to your material the compensation will not be applied.

### SourceMode

```
ENiagaraRendererSourceDataMode SourceMode
```

Whether or not to draw a single element for the Emitter or to draw the particles.

### MinFacingCameraBlendDistance

```
float32 MinFacingCameraBlendDistance
```

When FacingMode is FacingCameraDistanceBlend, the distance at which the sprite is fully facing the camera plane.

---

## SUBUV

### SubImageSize

```
FVector2D SubImageSize
```

When using SubImage lookups for particles, this variable contains the number of columns in X and the number of rows in Y.

---

## VISIBILITY

### MinCameraDistance

```
float32 MinCameraDistance
```
### MaxCameraDistance

```
float32 MaxCameraDistance
```
### RendererVisibility

```
uint RendererVisibility
```

If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.

---

## FUNCTIONS

### SetbRemoveHMDRollInVR

```
void SetbRemoveHMDRollInVR(bool Value)
```

SetbSortOnlyWhenTranslucent

### void SetbSortOnlyWhenTranslucent

```
void SetbSortOnlyWhenTranslucent(bool Value)
```

SetbGpuLowLatencyTranslucency

### void SetbGpuLowLatencyTranslucency

```
void SetbGpuLowLatencyTranslucency(bool Value)
```

SetbEnableCameraDistanceCulling

### void SetbEnableCameraDistanceCulling

```
void SetbEnableCameraDistanceCulling(bool Value)
```

SetbSubImageBlend

### void SetbSubImageBlend

```
void SetbSubImageBlend(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraSpriteRendererProperties::StaticClass()
```
