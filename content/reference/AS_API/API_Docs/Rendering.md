# Rendering

## Inheritance

Rendering → GAME → RenderTargetCreateStaticTexture2DEditorOnly

## Description

static UTexture2D Rendering::RenderTargetCreateStaticTexture2DEditorOnly(

UTextureRenderTarget2D 	RenderTarget, FString 	Name	 = 	"", TextureCompressionSettings 	CompressionSettings	 = 	TextureCompressionSettings :: TC_Default, TextureMipGenSettings 	MipSettings	 = 	TextureMipGenSettings :: TMGS_FromTextureGroup

)

Creates a new Static Texture from a Render Target 2D. Render Target Must be power of two and use four channels.  Only works in the editor

## RENDERING

### CalculateProjectionMatrix

```
static FMatrix Rendering::CalculateProjectionMatrix(FMinimalViewInfo MinimalViewInfo)
```

Calculates the projection matrix using this view info's aspect ratio (regardless of bConstrainAspectRatio)

### ClearRenderTarget2D

```
static void Rendering::ClearRenderTarget2D(
```

UTextureRenderTarget2D 	TextureRenderTarget,

### FLinearColor 	ClearColor	 = 	FLinearColor

```
FLinearColor ClearColor = FLinearColor(0.000000, 0.000000, 0.000000, 1.000000)
```

)

### Clears the specified render target with the given ClearColor.

```
Clears the specified render target with the given ClearColor.
```

ConvertRenderTargetToTexture2DEditorOnly

### static void Rendering::ConvertRenderTargetToTexture2DEditorOnly

```
static void Rendering::ConvertRenderTargetToTexture2DEditorOnly(
```

UTextureRenderTarget2D 	RenderTarget,

### Texture

```
UTexture2D Texture
```

)

### Copies the contents of a render target to a UTexture2D Only works in the editor

```
Copies the contents of a render target to a UTexture2D Only works in the editor
```

CreateRenderTarget2D

### static UTextureRenderTarget2D Rendering::CreateRenderTarget2D

```
static UTextureRenderTarget2D Rendering::CreateRenderTarget2D(
```

int 	Width	 = 	256,

### int 	Height	 = 	256,

```
int Height = 256, ETextureRenderTargetFormat Format = ETextureRenderTargetFormat :: RTF_RGBA16f, FLinearColor ClearColor = FLinearColor(0.000000, 0.000000, 0.000000, 1.000000),
```

bool 	bAutoGenerateMipMaps	 = 	false

)

### dimensions

```
Creates a new render target and initializes it to the specified dimensions
```

BreakSkinWeightInfo static void Rendering::BreakSkinWeightInfo( FSkelMeshSkinWeightInfo 	InWeight, int& 	Bone0, uint8& 	Weight0, int& 	Bone1, uint8& 	Weight1, int& 	Bone2, uint8& 	Weight2, int& 	Bone3, uint8& 	Weight3 )

### FSkelMeshSkinWeightInfo

```
Break FSkelMeshSkinWeightInfo
```

CreateRenderTarget2DArray static UTextureRenderTarget2DArray Rendering::CreateRenderTarget2DArray(

### int 	Width	 = 	256,

```
int Width = 256, int Height = 256, int Slices = 1, ETextureRenderTargetFormat Format = ETextureRenderTargetFormat :: RTF_RGBA16f, FLinearColor ClearColor = FLinearColor(0.000000, 0.000000, 0.000000, 1.000000),
```

bool 	bAutoGenerateMipMaps	 = 	false

)

### dimensions

```
Creates a new render target array and initializes it to the specified dimensions
```

CreateRenderTargetVolume static UTextureRenderTargetVolume Rendering::CreateRenderTargetVolume(

### int 	Width	 = 	16,

```
int Width = 16, int Height = 16, int Depth = 16, ETextureRenderTargetFormat Format = ETextureRenderTargetFormat :: RTF_RGBA16f, FLinearColor ClearColor = FLinearColor(0.000000, 0.000000, 0.000000, 1.000000),
```

bool 	bAutoGenerateMipMaps	 = 	false

### )

```
)
```

Creates a new volume render target and initializes it to the specified dimensions

### DrawMaterialToRenderTarget

```
static void Rendering::DrawMaterialToRenderTarget(UTextureRenderTarget2D TextureRenderTarget, UMaterialInterface Material)
```

Renders a quad with the material applied to the specified render target.  This sets the render target even if it is already set, which is an expensive operation.  Use BeginDrawCanvasToRenderTarget / EndDrawCanvasToRenderTarget instead if rendering multiple primitives to the same render target.

### EndDrawCanvasToRenderTarget

```
static void Rendering::EndDrawCanvasToRenderTarget(FDrawToRenderTargetContext Context)
```

Must be paired with a BeginDrawCanvasToRenderTarget to complete rendering to a render target.

### ExportRenderTarget

```
static void Rendering::ExportRenderTarget(UTextureRenderTarget2D TextureRenderTarget, FString FilePath, FString FileName)
```

Exports a render target as a HDR or PNG image onto the disk (depending on the format of the render target)

### ExportTexture2D

```
static void Rendering::ExportTexture2D(UTexture2D Texture, FString FilePath, FString FileName)
```

Exports a Texture2D as a HDR image onto the disk.

### ImportBufferAsTexture2D

```
static UTexture2D Rendering::ImportBufferAsTexture2D(TArray<uint8> Buffer)
```

Imports a texture from a buffer and creates Texture2D from it.

### BeginDrawCanvasToRenderTarget

```
static void Rendering::BeginDrawCanvasToRenderTarget(
```

UTextureRenderTarget2D 	TextureRenderTarget,

UCanvas& 	Canvas,

FVector2D& 	Size,

FDrawToRenderTargetContext& 	Context

)

Returns a Canvas object that can be used to draw to the specified render target.  Canvas has functions like DrawMaterial with size parameters that can be used to draw to a specific area of a render target.  Be sure to call EndDrawCanvasToRenderTarget to complete the rendering!

MakeSkinWeightInfo

### static FSkelMeshSkinWeightInfo Rendering::MakeSkinWeightInfo

```
static FSkelMeshSkinWeightInfo Rendering::MakeSkinWeightInfo(int Bone0, uint8 Weight0, int Bone1, uint8 Weight1, int Bone2, uint8 Weight2, int Bone3, uint8 Weight3)
```

### Create FSkelMeshSkinWeightInfo

```
Create FSkelMeshSkinWeightInfo
```

ReadRenderTarget

### static bool Rendering::ReadRenderTarget

```
static bool Rendering::ReadRenderTarget(UTextureRenderTarget2D TextureRenderTarget, TArray<FColor>& OutSamples, bool bNormalize = true)
```

Incredibly inefficient and slow operation! Reads entire render target as sRGB color and returns a linear array of sRGB colors.  LDR render targets are assumed to be in sRGB space. HDR ones are assumed to be in linear space.  Result whether the operation succeeded.  If successful, OutSamples will an entry per pixel, where each is 8-bit per channel [0,255] BGRA in sRGB space.

### ReadRenderTargetPixel

```
static FColor Rendering::ReadRenderTargetPixel(UTextureRenderTarget2D TextureRenderTarget, int X, int Y)
```

Incredibly inefficient and slow operation! Read a value as sRGB color from a render target using integer pixel coordinates.  LDR render targets are assumed to be in sRGB space. HDR ones are assumed to be in linear space.  Result is 8-bit per channel [0,255] BGRA in sRGB space.

### ReadRenderTargetRaw

```
static bool Rendering::ReadRenderTargetRaw(UTextureRenderTarget2D TextureRenderTarget, TArray<FLinearColor>& OutLinearSamples, bool bNormalize = true)
```

Incredibly inefficient and slow operation! Read entire texture as-is from a render target.

### ReadRenderTargetRawPixel

```
static FLinearColor Rendering::ReadRenderTargetRawPixel(
```

UTextureRenderTarget2D 	TextureRenderTarget,

int 	X,

int 	Y,

bool 	bNormalize	 = 	true

)

Incredibly inefficient and slow operation! Read a value as-is from a render target using integer pixel coordinates.

ReadRenderTargetRawPixelArea

### static TArray<FLinearColor> Rendering::ReadRenderTargetRawPixelArea

```
static TArray<FLinearColor> Rendering::ReadRenderTargetRawPixelArea(
```

UTextureRenderTarget2D 	TextureRenderTarget,

int 	MinX,

int 	MinY,

int 	MaxX,

int 	MaxY,

bool 	bNormalize	 = 	true

)

Incredibly inefficient and slow operation! Read an area of values as-is from a render target using a rectangle defined by integer pixel coordinates.

### ReadRenderTargetRawUV

```
static FLinearColor Rendering::ReadRenderTargetRawUV(
```

UTextureRenderTarget2D 	TextureRenderTarget,

float32 	U,

float32 	V,

bool 	bNormalize	 = 	true

)

Incredibly inefficient and slow operation! Read a value as-is from a render target using UV [0,1]x[0,1] coordinates.

### ReadRenderTargetRawUVArea

```
static TArray<FLinearColor> Rendering::ReadRenderTargetRawUVArea(
```

UTextureRenderTarget2D 	TextureRenderTarget,

FBox2D 	Area,

bool 	bNormalize	 = 	true

)

### Incredibly inefficient and slow operation! Read an area of values as-is from a render target using a rectangle defined by UV [0,1]x[0,1] coordinates.

```
Incredibly inefficient and slow operation! Read an area of values as-is from a render target using a rectangle defined by UV [0,1]x[0,1] coordinates.
```

ReadRenderTargetUV

### static FColor Rendering::ReadRenderTargetUV

```
static FColor Rendering::ReadRenderTargetUV(UTextureRenderTarget2D TextureRenderTarget, float32 U, float32 V)
```

Incredibly inefficient and slow operation! Read a value as sRGB color from a render target using UV [0,1]x[0,1] coordinates.  LDR render targets are assumed to be in sRGB space. HDR ones are assumed to be in linear space.  Result is 8-bit per channel [0,255] BGRA in sRGB space.

### ReleaseRenderTarget2D

```
static void Rendering::ReleaseRenderTarget2D(UTextureRenderTarget2D TextureRenderTarget)
```

Manually releases GPU resources of a render target. This is useful for blueprint creating a lot of render target that would normally be released too late by the garbage collector that can be problematic on platforms that have tight GPU memory constrains.

### ImportFileAsTexture2D

```
static UTexture2D Rendering::ImportFileAsTexture2D(FString Filename)
```

Imports a texture file from disk and creates Texture2D from it.

### SetCastInsetShadowForAllAttachments

```
static void Rendering::SetCastInsetShadowForAllAttachments(
```

UPrimitiveComponent 	PrimitiveComponent,

### bool 	bCastInsetShadow,

```
bool 	bLightAttachmentsAsGroup
```

)

Set the inset shadow casting state of the given component and all its child attachments.  Also choose if all attachments should be grouped for the inset shadow rendering. If enabled, one depth target will be shared for all attachments.
