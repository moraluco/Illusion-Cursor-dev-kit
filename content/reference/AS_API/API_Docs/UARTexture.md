# UARTexture

**Visibility:** public

## Inheritance

UTexture → UARTexture → UARTextureCameraDepth → UARTextureCameraImage

## Description

Base class for all AR texture types.  Derived from UTexture instead of UTexture2D because UTexture2D is all about streaming and source art

## Members

### AUGMENTEDREALITY

```
AR AUGMENTEDREALITY
```
### Timestamp

```
float32 Timestamp
```

The timestamp this texture was captured at

### ExternalTextureGuid

```
FGuid ExternalTextureGuid
```

The guid of texture that gets registered as an external texture

### Size

```
FVector2D Size
```

The width and height of the texture

### TextureType

```
EARTextureType TextureType
```

The type of texture this is

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UARTexture::StaticClass()
```
