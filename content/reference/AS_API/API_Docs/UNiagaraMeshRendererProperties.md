# UNiagaraMeshRendererProperties

**Visibility:** public

## Inheritance

UNiagaraRendererProperties → UNiagaraMeshRendererProperties → BINDINGS → MaterialParameterBindings

## Description

TArray<FNiagaraMaterialAttributeBinding> MaterialParameterBindings

If this array has entries, we will create a MaterialInstanceDynamic per Emitter instance from Material and set the Material parameters using the Niagara simulation variables listed.

## Members

### FLIPBOOK

```
MESH FLIPBOOK
```
### FlipbookSuffixFormat

```
FString FlipbookSuffixFormat
```

Provides the format of the suffix of the names of the static meshes when searching for flipbook frames. "{frame_number}" is used to mark where the frame number should appear in the suffix. If "Particle Mesh" contains this suffix, the number in its name will be treated as the starting frame index. Otherwise, it will assume "Particle Mesh" is frame number 0, and that subsequent frames follow this format, starting with frame number 1.

### FlipbookSuffixNumDigits

```
uint FlipbookSuffixNumDigits
```

The number of digits to expect in the frame number of the flipbook page. A value of 1 will expect no leading zeros in the package names, and can also be used for names with frame numbers that extend to 10 and beyond (Example: Frame_1, Frame_2, ..., Frame_10, Frame_11, etc.)

### FirstFlipbookFrame

```
UStaticMesh FirstFlipbookFrame
```

The static mesh to use for the first frame of the flipbook. Its name will also be used to find subsequent frames of a similar name.  NOTE: The subsequent frames are expected to exist in the same content directory as the first frame of the flipbook, otherwise they will not be found or used.

### NumFlipbookFrames

```
uint NumFlipbookFrames
```

The number of frames (static meshes) to be included in the flipbook.

### RENDERING

```
MESH RENDERING
```
### LockedAxis

```
FVector LockedAxis
```

Arbitrary axis by which to lock facing rotations

### SourceMode

```
ENiagaraRendererSourceDataMode SourceMode
```

Whether or not to draw a single element for the Emitter or to draw the particles.

### Meshes

```
TArray<FNiagaraMeshRendererMeshProperties> Meshes
```

The static mesh(es) to be instanced when rendering mesh particles.

---

## NOTES

If "Override Material" is not specified, the mesh's material is used. Override materials must have the Niagara Mesh Particles flag checked.

If "Enable Mesh Flipbook" is specified, this mesh is assumed to be the first frame of the flipbook.

### OverrideMaterials

```
TArray<FNiagaraMeshMaterialOverride> OverrideMaterials
```

The materials to be used instead of the StaticMesh's materials. Note that each material must have the Niagara Mesh Particles flag checked. If the ParticleMesh requires more materials than exist in this array or any entry in this array is set to None, we will use the ParticleMesh's existing Material instead.

### FacingMode

```
ENiagaraMeshFacingMode FacingMode
```

Determines how the mesh orients itself relative to the camera.

### LockedAxisSpace

```
ENiagaraMeshLockedAxisSpace LockedAxisSpace
```

Specifies what space the locked axis is in

---

## SORTING

### SortMode

```
ENiagaraSortMode SortMode
```

Determines how we sort the particles prior to rendering.

---

## SUBUV

### SubImageSize

```
FVector2D SubImageSize
```

When using SubImage lookups for particles, this variable contains the number of columns in X and the number of rows in Y.

---

## VISIBILITY

### MaxCameraDistance

```
float32 MaxCameraDistance
```
### RendererVisibility

```
uint RendererVisibility
```

If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.

### MinCameraDistance

```
float32 MinCameraDistance FUNCTIONS SetbEnableFrustumCulling void SetbEnableFrustumCulling(bool Value)
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

SetbSubImageBlend

### void SetbSubImageBlend

```
void SetbSubImageBlend(bool Value)
```

SetbOverrideMaterials

### void SetbOverrideMaterials

```
void SetbOverrideMaterials(bool Value)
```

SetbEnableCameraDistanceCulling

### void SetbEnableCameraDistanceCulling

```
void SetbEnableCameraDistanceCulling(bool Value)
```

SetbEnableMeshFlipbook

### void SetbEnableMeshFlipbook

```
void SetbEnableMeshFlipbook(bool Value)
```

SetbLockedAxisEnable

### void SetbLockedAxisEnable

```
void SetbLockedAxisEnable(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraMeshRendererProperties::StaticClass()
```
