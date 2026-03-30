# UMediaTexture

**Visibility:** public

## Inheritance

UTexture → UMediaTexture

## Description

Implements a texture asset for rendering video tracks from UMediaPlayer assets.

## MEDIA

### MediaPlayer

```
UMediaPlayer MediaPlayer
```

The media player asset associated with this texture.

### This property is meant for design-time convenience. To change the associated media player at run-time, use the SetMediaPlayer method.

```
This property is meant for design-time convenience. To change the associated media player at run-time, use the SetMediaPlayer method.
```

@see SetMediaPlayer

---

## MEDIATEXTURE

### AutoClear

```
bool AutoClear
```

Whether to clear the texture when no media is being played (default = enabled).

### ClearColor

```
FLinearColor ClearColor
```

The color used to clear the texture if AutoClear is enabled (default = black).

### EnableGenMips

```
bool EnableGenMips
```

Basic enablement for mip generation (default = false).

### AddressY

```
TextureAddress AddressY
```

The addressing mode to use for the Y axis.

### NumMips

```
uint8 NumMips
```

The number of mips to use (default = 1).

### NewStyleOutput

```
bool NewStyleOutput
```

Enable new style output (default = false).

### AddressX

```
TextureAddress AddressX
```

The addressing mode to use for the X axis.

### CurrentAspectRatio

```
float32 CurrentAspectRatio
```

Current aspect ratio

### CurrentOrientation

```
MediaTextureOrientation CurrentOrientation
```

Current media orientation

### OutputFormat

```
MediaTextureOutputFormat OutputFormat
```

---

## MEDIA \| MEDIATEXTURE

AspectRatio

### AspectRatio

```
const float32 AspectRatio
```

Gets the current aspect ratio of the texture.

TextureNumMips

### TextureNumMips

```
const int TextureNumMips
```

Gets the current numbe of mips of the texture.

Width

### Width

```
const int Width
```

Gets the current width of the texture.

### Height

```
const int Height
```

Gets the current height of the texture.

---

## MEDIA \| MEDIATEXTURE

### GetHeight

```
int GetHeight()const
```

Gets the current height of the texture.

**Returns**

Texture height (in pixels).

GetMediaPlayer
UMediaPlayer GetMediaPlayer() const

Get the media player that provides the video samples.

**Returns**

The texture's media player, or nullptr if not set.

GetTextureNumMips
int GetTextureNumMips() const

Gets the current numbe of mips of the texture.

**Returns**

Number of mips.

GetWidth
int GetWidth() const

Gets the current width of the texture.

**Returns**

Texture width (in pixels).

SetMediaPlayer
void SetMediaPlayer(
UMediaPlayer 	NewMediaPlayer
	)

Set the media player that provides the video samples.

**Parameters**

NewMediaPlayer
UMediaPlayer

The player to set.

UpdateResource
void UpdateResource()

Creates a new resource for the texture, and updates any cached references to the resource.  This obviously is just an override to expose to blueprints.

GetAspectRatio
float32 GetAspectRatio() const

Gets the current aspect ratio of the texture.

**Returns**

Texture aspect ratio.

STATIC FUNCTIONS
StaticClass
static UClass UMediaTexture::StaticClass()
