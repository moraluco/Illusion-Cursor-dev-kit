# AGeometryCollectionRenderLevelSetActor

**Visibility:** public

## Inheritance

AActor → AGeometryCollectionRenderLevelSetActor

## Description

AGeometryCollectionRenderLevelSetActor An actor representing the collection of data necessary to render volumes.  This references a ray marching material, which is used internally by a post process component blendable.  This is a workflow that can be improved with a deeper implementation in the future if we decide to.  Note that behavior with multiple render level set actors isn't currently supported very well, but could be improved in the future

## RENDERING

### RayMarchMaterial

```
UMaterial RayMarchMaterial
```

Material that performs ray marching.  Note this must have certain parameters in order to work correctly

### SurfaceTolerance

```
float32 SurfaceTolerance
```

Surface tolerance used for rendering.  When surface reconstruction is noisy, try tweaking this value

### Isovalue

```
float32 Isovalue
```

Isovalue of the level set to use for surface reconstruction.  Generally you want this to be zero, but it can be useful for exploring the distance values to make this negative to see the interior structure of the levelset

### Enabled

```
bool Enabled
```

Enable or disable rendering

### RenderVolumeBoundingBox

```
bool RenderVolumeBoundingBox
```

Enable or disable rendering

---

## VOLUME

### TargetVolumeTexture

```
UVolumeTexture TargetVolumeTexture
```

Volume texture to fill

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static AGeometryCollectionRenderLevelSetActor AGeometryCollectionRenderLevelSetActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AGeometryCollectionRenderLevelSetActor::StaticClass()
```
