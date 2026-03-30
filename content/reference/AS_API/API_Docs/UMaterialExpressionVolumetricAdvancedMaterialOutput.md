# UMaterialExpressionVolumetricAdvancedMaterialOutput

**Visibility:** public

## Inheritance

UMaterialExpressionCustomOutput → UMaterialExpressionVolumetricAdvancedMaterialOutput

## Description

Material output expression for writing advanced volumetric material properties.

MULTI-SCATTERING ConstMultiScatteringContribution float32 ConstMultiScatteringContribution

Only used if MultiScatteringContribution is not hooked up. Multi-scattering approximation: represents how much contribution each successive octave will add. Valid range is [0,1], from low to high contribution

ConstMultiScatteringOcclusion float32 ConstMultiScatteringOcclusion

Only used if MultiScatteringOcclusion is not hooked up. Multi-scattering approximation: represents how much occlusion will be reduced for each successive octave. Valid range is [0,1], from low to high occlusion.

MultiScatteringApproximationOctaveCount uint MultiScatteringApproximationOctaveCount

How many octave to use for the multiple-scattering approximation. This makes the shader more expensive so you should only use 0 or 1 for better performance, and tweak multiple scattering parameters accordingly. 0 means single scattering only. The maximum value is 2 (expenssive).

ConstMultiScatteringEccentricity float32 ConstMultiScatteringEccentricity

Only used if MultiScatteringEccentricity is not hooked up. Multi-scattering approximation: represents how much the phase will become isotropic for each successive octave. Valid range is [0,1], from anisotropic to isotropic phase.

## OPTIONS

### bGroundContribution

```
bool bGroundContribution
```

Sample the shadowed lighting contribution from the ground onto the medium (single scattering). This adds some costs to the tracing when enabled.

### bGrayScaleMaterial

```
bool bGrayScaleMaterial
```

Set this for the material to only be considered grey scale, only using the R chanel of the input parameters internally. The lighting will still be colored. This is an optimisation.

### bRayMarchVolumeShadow

```
bool bRayMarchVolumeShadow
```

Disable this to use the cloud shadow map instead of secondary raymarching. This is usually enough for clouds viewed from the ground and it result in a performance boost. Shadow now have infinite length but also becomes less accurate and gray scale.

---

## PHASE

### ConstPhaseBlend

```
float32 ConstPhaseBlend
```

Only used if PhaseBlend is not hooked up. Lerp factor when blending the two phase functions parameterized by G and G2. Valid range is [0,1].

### ConstPhaseG

```
float32 ConstPhaseG
```

Only used if PhaseG is not hooked up. Parameter 'g' input to the phase function  describing how much forward(g<0) or backward (g>0) light scatter around.

### PerSamplePhaseEvaluation

```
bool PerSamplePhaseEvaluation
```

Set this to true to force the phase function to be evaluated per sample, instead once per pixel (globally). Per sample evaluation is slower.

### ConstPhaseG2

```
float32 ConstPhaseG2
```

Only used if PhaseG2 is not hooked up. Parameter 'g' input to the second phase function  describing how much forward(g<0) or backward (g>0) light scatter around. Valid range is [-1,1].

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialExpressionVolumetricAdvancedMaterialOutput::StaticClass()
```
