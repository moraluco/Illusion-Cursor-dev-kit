# URuntimeVirtualTextureComponent

**Visibility:** public

## Inheritance

USceneComponent → URuntimeVirtualTextureComponent

## Description

Component used to place a URuntimeVirtualTexture in the world.

## TRANSFORMFROMBOUNDS

### bSnapBoundsToLandscape

```
bool bSnapBoundsToLandscape
```

If the Bounds Align Actor is a Landscape then this will snap the bounds so that virtual texture texels align with landscape vertex positions.

### BoundsAlignActor

```
TSoftObjectPtr<AActor> BoundsAlignActor
```

Actor to align rotation to. If set this actor is always included in the bounds calculation.

---

## VIRTUALTEXTURE

### bEnableScalability

```
bool bEnableScalability
```

Set to true to enable scalability settings for the virtual texture.

### ScalabilityGroup

```
uint ScalabilityGroup
```

Group index of the scalability settings to use for the virtual texture.

### VirtualTexture

```
URuntimeVirtualTexture VirtualTexture
```

The virtual texture object to use.

### bHidePrimitives

```
bool bHidePrimitives
```

Hide primitives in the main pass. Hidden primitives will be those that draw to this virtual texture with 'Draw in Main Pass' set to 'From Virtual Texture'.

---

## VIRTUALTEXTUREBUILD

### StreamLowMips

```
int StreamLowMips
```

Number of streaming low mips to build for the virtual texture.

### bUseStreamingLowMipsInEditor

```
bool bUseStreamingLowMipsInEditor
```

Use streaming low mips when rendering in editor. Set true to view and debug the baked streaming low mips.

### bEnableCompressCrunch

```
bool bEnableCompressCrunch
```

Enable Crunch texture compression for the streaming low mips. Generic ZLib compression is used when Crunch is disabled.

### bBuildDebugStreamingMips

```
bool bBuildDebugStreamingMips
```

Build the streaming low mips using debug coloring. This can help show where streaming mips are being used.

### StreamingTexture

```
UVirtualTextureBuilder StreamingTexture
```

Texture object containing streamed low mips. This can reduce rendering update cost.

---

## VIRTUALTEXTURE

### Invalidate

```
void Invalidate(FBoxSphereBounds WorldBounds)
```

This function marks an area of the runtime virtual texture as dirty.

**Parameters**

WorldBounds
FBoxSphereBounds

: The world space bounds of the pages to invalidate.

STATIC FUNCTIONS
Get
static URuntimeVirtualTextureComponent URuntimeVirtualTextureComponent::Get(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
GetOrCreate
static URuntimeVirtualTextureComponent URuntimeVirtualTextureComponent::GetOrCreate(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
Create
static URuntimeVirtualTextureComponent URuntimeVirtualTextureComponent::Create(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
StaticClass
static UClass URuntimeVirtualTextureComponent::StaticClass()
