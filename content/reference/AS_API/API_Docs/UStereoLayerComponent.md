# UStereoLayerComponent

**Visibility:** public

## Inheritance

USceneComponent → UStereoLayerComponent

## Description

A geometry layer within the stereo rendered viewport.

## STEREOLAYER

### Texture

```
UTexture Texture
```

Texture displayed on the stereo layer (is stereocopic textures are supported on the platfrom and more than one texture is provided, this will be the right eye)

### Shape

```
UStereoLayerShape Shape
```

Specifies which shape of layer it is.  Note that some shapes will be supported only on certain platforms!

### UVRect

```
FBox2D UVRect
```

UV coordinates mapped to the quad face

### Priority

```
int Priority
```

Render priority among all stereo layers, higher priority render on top of lower priority

### QuadSize

```
FVector2D QuadSize
```

Size of the rendered stereo layer quad

### StereoLayerType

```
EStereoLayerType StereoLayerType
```

Specifies how and where the quad is rendered to the screen

### bLiveTexture

```
bool bLiveTexture
```

True if the stereo layer texture needs to update itself every frame(scene capture, video, etc.)

### bSupportsDepth

```
bool bSupportsDepth
```

True if the stereo layer needs to support depth intersections with the scene geometry, if available on the platform

### bNoAlphaChannel

```
bool bNoAlphaChannel
```

True if the texture should not use its own alpha channel (1.0 will be substituted)

### bQuadPreserveTextureRatio

```
bool bQuadPreserveTextureRatio
```

True if the quad should internally set it's Y value based on the set texture's dimensions

### STEREOSCOPIC PROPERTIES

```
STEREOSCOPIC PROPERTIES LeftTexture UTexture LeftTexture
```

Texture displayed on the stereo layer for left eye, if stereoscopic textures are supported on the platform and by the layer shape

### COMPONENTS|STEREO LAYER

```
COMPONENTS|STEREO LAYER MarkTextureForUpdate void MarkTextureForUpdate()
```

Manually mark the stereo layer texture for updating

### GetPriority

```
int GetPriority()const
```

**Returns**

the render priority

GetQuadSize
FVector2D GetQuadSize() const

**Returns**

the height and width of the rendered quad

GetTexture
UTexture GetTexture() const

**Returns**

the texture mapped to the stereo layer.

GetUVRect
FBox2D GetUVRect() const

**Returns**

the UV coordinates mapped to the quad face

GetLeftTexture
UTexture GetLeftTexture() const

**Returns**

the texture mapped to the stereo layer for left eye, if stereoscopic layer textures are supported on the platform.

SetLeftTexture
void SetLeftTexture(
UTexture 	InTexture
	)

Change the texture displayed on the stereo layer for left eye, if stereoscopic layer textures are supported on the platform.

SetPriority
void SetPriority(
int 	InPriority
	)

Change the layer's render priority, higher priorities render on top of lower priorities

SetQuadSize
void SetQuadSize(
FVector2D 	InQuadSize
	)

Change the quad size. This is the unscaled height and width, before component scale is applied.

SetTexture
void SetTexture(
UTexture 	InTexture
	)

Change the texture displayed on the stereo layer.

If stereoscopic layer textures are supported on the platform and LeftTexture is set, this property controls the texture for the right eye.

SetUVRect
void SetUVRect(
FBox2D 	InUVRect
	)

Change the UV coordinates mapped to the quad face

---

## FUNCTIONS

### GetbLiveTexture

```
bool GetbLiveTexture()const
```

SetbLiveTexture

### void SetbLiveTexture

```
void SetbLiveTexture(bool Value)
```

GetbSupportsDepth

### bool GetbSupportsDepth

```
bool GetbSupportsDepth()const SetbSupportsDepth
```

void SetbSupportsDepth(

### bool 	Value

```
bool 	Value 	)
```

GetbNoAlphaChannel

### bool GetbNoAlphaChannel

```
bool GetbNoAlphaChannel()const SetbNoAlphaChannel
```

void SetbNoAlphaChannel(

### bool 	Value

```
bool 	Value 	)
```

GetbQuadPreserveTextureRatio

### bool GetbQuadPreserveTextureRatio

```
bool GetbQuadPreserveTextureRatio()const SetbQuadPreserveTextureRatio
```

void SetbQuadPreserveTextureRatio(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UStereoLayerComponent UStereoLayerComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UStereoLayerComponent UStereoLayerComponent::GetOrCreate

```
static UStereoLayerComponent UStereoLayerComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UStereoLayerComponent UStereoLayerComponent::Create

```
static UStereoLayerComponent UStereoLayerComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UStereoLayerComponent::StaticClass

```
static UClass UStereoLayerComponent::StaticClass()
```
