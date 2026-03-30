# UNiagaraSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UNiagaraSettings → ASYNCGPUTRACEDI → NDICollisionQuery_AsyncGpuTraceProviderOrder

## Description

TArray<ENDICollisionQuery_AsyncGpuTraceProvider> NDICollisionQuery_AsyncGpuTraceProviderOrder

Defines how traces tagged as 'Project Default' will be interpreted when using the AsyncGpuTrace data interface.  The system will go through (starting at element 0) to find the first provider that is available.

## NIAGARA

### AdditionalParameterEnums

```
TArray<FSoftObjectPath> AdditionalParameterEnums
```
### AdditionalPayloadTypes

```
TArray<FSoftObjectPath> AdditionalPayloadTypes
```
### bShowConvertibleInputsInStack

```
bool bShowConvertibleInputsInStack
```

If true then the "link input" menu will also show variables of different types, as long as there is a conversion script for them.

### AdditionalParameterTypes

```
TArray<FSoftObjectPath> AdditionalParameterTypes
```
### bSystemsSupportLargeWorldCoordinates

```
bool bSystemsSupportLargeWorldCoordinates
```

If true then active effects rebase the simulation positions to not lose precision. Can be turned off if not needed to skip unnecessary rebasing calculations.

### bEnforceStrictStackTypes

```
bool bEnforceStrictStackTypes
```

If set to true, types like positions and vectors cannot be assigned to each other without an explicit conversion step.  If false, type checks are loosened and some types can be implicitly converted into each other.  It is recommended to not disable this when working with large world coordinates.

### DefaultEffectType

```
FSoftObjectPath DefaultEffectType
```

Default effect type to use for effects that don't define their own. Can be null.

### PositionPinTypeColor

```
FLinearColor PositionPinTypeColor
```

Position pin type color. The other pin colors are defined in the general editor settings.

---

## RENDERER

### ComponentRendererWarningsPerClass

```
TMap<FString,FText> ComponentRendererWarningsPerClass
```

Info texts that the component renderer shows the user depending on the selected component class.

### DefaultRenderTargetFormat

```
ETextureRenderTargetFormat DefaultRenderTargetFormat
```

The default render target format used by all Niagara Render Target Data Interfaces unless overridden.

### DefaultGridFormat

```
ENiagaraGpuBufferFormat DefaultGridFormat
```

The default buffer format used by all Niagara Grid Data Interfaces unless overridden.

### DefaultRendererMotionVectorSetting

```
ENiagaraDefaultRendererMotionVectorSetting DefaultRendererMotionVectorSetting
```

The default setting for motion vectors in Niagara renderers

### DefaultPixelCoverageMode

```
ENiagaraDefaultRendererPixelCoverageMode DefaultPixelCoverageMode
```

The default setting for pixel coverage mode when automatic is set on the Niagara Renderer.

---

## SCALABILITY

### QualityLevels

```
TArray<FText> QualityLevels
```

The quality levels Niagara uses.

---

## SKELETALMESHDI

### NDISkelMesh_GpuMaxInfluences

```
ENDISkelMesh_GpuMaxInfluences NDISkelMesh_GpuMaxInfluences
```

Controls the maximum number of influences we allow the Skeletal Mesh Data Interface to use on the GPU.  Changing this setting requires restarting the editor.

### NDISkelMesh_GpuUniformSamplingFormat

```
ENDISkelMesh_GpuUniformSamplingFormat NDISkelMesh_GpuUniformSamplingFormat
```

Controls the format used for uniform sampling on the GPU.  Changing this setting requires restarting the editor.

### NDISkelMesh_AdjacencyTriangleIndexFormat

```
ENDISkelMesh_AdjacencyTriangleIndexFormat NDISkelMesh_AdjacencyTriangleIndexFormat
```

Controls the format used for specifying triangle indexes in adjacency buffers.  Changing this setting requires restarting the editor.

---

## STATICMESHDI

### NDIStaticMesh_AllowDistanceFields

```
bool NDIStaticMesh_AllowDistanceFields
```

When enabled the static mesh data interface is allowed to sample from the distance field data (if present) on the GPU.  Enabling this feature will move all systems that contain static mesh samples into PostRenderOpaque tick group regardless of the features used.  Changing this setting requires restarting the editor.

---

## VIEWPORT

### bSystemViewportInOrbitMode

```
bool bSystemViewportInOrbitMode
```

Sets the default navigation behavior for the system preview viewport.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraSettings::StaticClass()
```
