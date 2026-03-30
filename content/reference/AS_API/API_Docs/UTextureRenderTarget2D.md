# UTextureRenderTarget2D

**Visibility:** public

## Inheritance

UTextureRenderTarget → UTextureRenderTarget2D → UCanvasRenderTarget2D

## Description

TextureRenderTarget2D

2D render target texture resource. This can be used as a target for rendering as well as rendered as a regular 2D texture resource.

## TEXTURERENDERTARGET2D

### RenderTargetFormat

```
ETextureRenderTargetFormat RenderTargetFormat
```

Format of the texture render target.  Data written to the render target will be quantized to this format, which can limit the range and precision.  The largest format (RTF_RGBA32f) uses 16x more memory and bandwidth than the smallest (RTF_R8) and can greatly affect performance.  Use the smallest format that has enough precision and range for what you are doing.

### SizeY

```
int SizeY
```

The height of the texture.

### ClearColor

```
FLinearColor ClearColor
```

the color the texture is cleared to

### AddressX

```
TextureAddress AddressX
```

The addressing mode to use for the X axis.

### AddressY

```
TextureAddress AddressY
```

The addressing mode to use for the Y axis.

### SizeX

```
int SizeX
```

The width of the texture.

### MipsSamplerFilter

```
TextureFilter MipsSamplerFilter
```

Sampler filter type for AutoGenerateMips. Defaults to match texture filter.

### MipsAddressU

```
TextureAddress MipsAddressU
```

AutoGenerateMips sampler address mode for U channel. Defaults to clamp.

### MipsAddressV

```
TextureAddress MipsAddressV
```

AutoGenerateMips sampler address mode for V channel. Defaults to clamp.

### bGPUSharedFlag

```
bool bGPUSharedFlag
```

Whether to support GPU sharing of the underlying native texture resource.

### bAutoGenerateMips

```
bool bAutoGenerateMips
```

Whether to support Mip maps for this render target texture

---

## FUNCTIONS

### SetbGPUSharedFlag

```
void SetbGPUSharedFlag(bool Value)
```

GetbAutoGenerateMips

### bool GetbAutoGenerateMips

```
bool GetbAutoGenerateMips()const SetbAutoGenerateMips
```

void SetbAutoGenerateMips(

### bool 	Value

```
bool 	Value 	)
```

GetbGPUSharedFlag

### bool GetbGPUSharedFlag

```
bool GetbGPUSharedFlag()const STATIC FUNCTIONS
```

StaticClass

### static UClass UTextureRenderTarget2D::StaticClass

```
static UClass UTextureRenderTarget2D::StaticClass()
```
