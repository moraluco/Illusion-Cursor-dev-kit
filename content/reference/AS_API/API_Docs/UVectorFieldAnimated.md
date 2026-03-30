# UVectorFieldAnimated

**Visibility:** public

## Inheritance

UVectorField → UVectorFieldAnimated → ANIMATION → FramesPerSecond

## Description

float32 FramesPerSecond

The rate at which to interpolate between frames.

## NOISE

### NoiseMax

```
float32 NoiseMax
```

The maximum magnitude of noise vectors to apply.

### NoiseScale

```
float32 NoiseScale
```

Scale to apply to vectors in the noise field.

### NoiseField

```
UVectorFieldStatic NoiseField
```

A static vector field used to add noise.

---

## RECONSTRUCTION

### VolumeSizeZ

```
int VolumeSizeZ
```

The size of the volume. Valid sizes: 16, 32, 64.

### Texture

```
UTexture2D Texture
```

The texture from which to create the vector field.

### FrameCount

```
int FrameCount
```

The number of frames in the atlas.

### ConstructionOp

```
EVectorFieldConstructionOp ConstructionOp
```

The operation used to construct the vector field.

### VolumeSizeY

```
int VolumeSizeY
```

The size of the volume. Valid sizes: 16, 32, 64.

### VolumeSizeX

```
int VolumeSizeX
```

The size of the volume. Valid sizes: 16, 32, 64.

### SubImagesX

```
int SubImagesX
```

The number of horizontal subimages in the texture atlas.

### SubImagesY

```
int SubImagesY
```

The number of vertical subimages in the texture atlas.

---

## FUNCTIONS

### SetbLoop

```
void SetbLoop(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVectorFieldAnimated::StaticClass()
```
