# UPlanarReflectionComponent

**Visibility:** public

## Inheritance

USceneCaptureComponent → UPlanarReflectionComponent

## Description

UPlanarReflectionComponent

## PLANARREFLECTION

### DistanceFromPlaneFadeoutStart

```
float32 DistanceFromPlaneFadeoutStart
```

Receiving pixels at this distance from the reflection plane will begin to fade out the planar reflection.

### PrefilterRoughness

```
float32 PrefilterRoughness
```

The roughness value to prefilter the planar reflection texture with, useful for hiding low resolution.  Larger values have larger GPU cost.

### PrefilterRoughnessDistance

```
float32 PrefilterRoughnessDistance
```

The distance at which the prefilter roughness value will be achieved.

### ScreenPercentage

```
int ScreenPercentage
```

Downsample percent, can be used to reduce GPU time rendering the planar reflection.

### ExtraFOV

```
float32 ExtraFOV
```

Additional FOV used when rendering to the reflection texture.  This is useful when normal distortion is causing reads outside the reflection texture.  Larger values increase rendering thread and GPU cost, as more objects and triangles have to be rendered into the planar reflection.

### NormalDistortionStrength

```
float32 NormalDistortionStrength
```

Controls the strength of normals when distorting the planar reflection.

### DistanceFromPlaneFadeoutEnd

```
float32 DistanceFromPlaneFadeoutEnd
```

Receiving pixels at this distance from the reflection plane will have completely faded out the planar reflection.

### AngleFromPlaneFadeStart

```
float32 AngleFromPlaneFadeStart
```

Receiving pixels whose normal is at this angle from the reflection plane will begin to fade out the planar reflection.

### AngleFromPlaneFadeEnd

```
float32 AngleFromPlaneFadeEnd
```

Receiving pixels whose normal is at this angle from the reflection plane will have completely faded out the planar reflection.

### bShowPreviewPlane

```
bool bShowPreviewPlane
```
### bRenderSceneTwoSided

```
bool bRenderSceneTwoSided
```

Whether to render the scene as two-sided, which can be useful to hide artifacts where normal distortion would read 'under' an object that has been clipped by the reflection plane.  With this setting enabled, the backfaces of a mesh would be displayed in the clipped region instead of the background which is potentially a bright sky.  Be sure to add the water plane to HiddenActors if enabling this, as the water plane will now block the reflection.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPlanarReflectionComponent UPlanarReflectionComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPlanarReflectionComponent UPlanarReflectionComponent::GetOrCreate

```
static UPlanarReflectionComponent UPlanarReflectionComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UPlanarReflectionComponent UPlanarReflectionComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPlanarReflectionComponent::StaticClass

```
static UClass UPlanarReflectionComponent::StaticClass()
```
