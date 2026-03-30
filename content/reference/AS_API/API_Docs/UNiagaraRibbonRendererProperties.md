# UNiagaraRibbonRendererProperties

**Visibility:** public

## Inheritance

UNiagaraRendererProperties → UNiagaraRibbonRendererProperties → BINDINGS → MaterialParameterBindings

## Description

TArray<FNiagaraMaterialAttributeBinding> MaterialParameterBindings

If this array has entries, we will create a MaterialInstanceDynamic per Emitter instance from Material and set the Material parameters using the Niagara simulation variables listed.

## Members

### RENDERING

```
RIBBON RENDERING
```
### FacingMode

```
ENiagaraRibbonFacingMode FacingMode
```
### UV0Settings

```
FNiagaraRibbonUVSettings UV0Settings
```
### Material

```
UMaterialInterface Material
```
### END

```
UNiagaraRendererProperties Interface END
```
### DrawDirection

```
ENiagaraRibbonDrawDirection DrawDirection
```

If true, the particles are only sorted when using a translucent material.

### MaterialUserParamBinding

```
FNiagaraUserParameterBinding MaterialUserParamBinding
```

Use the UMaterialInterface bound to this user variable if it is set to a valid value. If this is bound to a valid value and Material is also set, UserParamBinding wins.

### UV1Settings

```
FNiagaraRibbonUVSettings UV1Settings
```
### SHAPE

```
RIBBON SHAPE
```
### WidthSegmentationCount

```
int WidthSegmentationCount
```

Tessellation factor to apply to the width of the ribbon.  Ranges from 1 to 16. Greater values increase amount of tessellation.

### bEnableAccurateGeometry

```
bool bEnableAccurateGeometry
```

Disables two-sided forced rendering (Will still respect material settings) MultiPlane will double geometry count to have triangles facing both sides. With this off MultiPlane will switch normal direction to face view.  3D Ribbons will render like normal meshes with backface culling enabled.

### Shape

```
ENiagaraRibbonShapeMode Shape
```

Shape of the ribbon, from flat plane, multiplane, 3d tube, and custom shapes.

### TubeSubdivisions

```
int TubeSubdivisions
```

Number of vertices/faces in a tube.

### CustomVertices

```
TArray<FNiagaraRibbonShapeCustomVertex> CustomVertices
```

Vertices for a cross section of the ribbon in custom shape mode.

### MultiPlaneCount

```
int MultiPlaneCount
```

Number of planes in multiplane shape. Evenly distributed from 0-90 or 0-180 degrees off camera facing depending on setting

---

## TESSELLATION

### TessellationFactor

```
int TessellationFactor
```

Custom tessellation factor.  Ranges from 1 to 16. Greater values increase amount of tessellation.

### bUseConstantFactor

```
bool bUseConstantFactor
```

If checked, use the above constant factor. Otherwise, adaptively select the tessellation factor based on the below parameters.

### TessellationAngle

```
float32 TessellationAngle
```

Defines the angle in degrees at which tessellation occurs.  Ranges from 1 to 180. Smaller values increase amount of tessellation.  If set to 0, use the maximum tessellation set above.

### bScreenSpaceTessellation

```
bool bScreenSpaceTessellation
```

If checked, use the ribbon's screen space percentage to adaptively adjust the tessellation factor.

### CurveTension

```
float32 CurveTension
```

Defines the curve tension, or how long the curve's tangents are.  Ranges from 0 to 1. The higher the value, the sharper the curve becomes.

### TessellationMode

```
ENiagaraRibbonTessellationMode TessellationMode
```

Defines the tessellation mode allowing custom tessellation parameters or disabling tessellation entirely.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraRibbonRendererProperties::StaticClass()
```
