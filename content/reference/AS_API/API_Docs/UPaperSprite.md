# UPaperSprite

**Visibility:** public

## Inheritance

UObject → UPaperSprite

## Description

Sprite Asset

Stores the data necessary to render a single 2D sprite (from a region of a texture) Can also contain collision shapes for the sprite.

### See also

- UPaperSpriteComponent

## COLLISION

### CollisionThickness

```
float32 CollisionThickness
```

The extrusion thickness of collision geometry when using a 3D collision domain

### CollisionGeometry

```
FSpriteGeometryCollection CollisionGeometry
```

Custom collision geometry polygons (in texture space)

### SpriteCollisionDomain

```
ESpriteCollisionMode SpriteCollisionDomain
```

Collision domain (no collision, 2D, or 3D)

---

## NEVERSHOWN

### BodySetup

```
UBodySetup BodySetup
```

Baked physics data.

---

## RENDERING

### AlternateMaterial

```
UMaterialInterface AlternateMaterial
```

The alternate material to use on a sprite instance if not overridden (this is only used for Diced render geometry, and will be the opaque material in that case, slot 1)

### RenderGeometry

```
FSpriteGeometryCollection RenderGeometry
```

Custom render geometry polygons (in texture space)

---

## SPRITE

### SourceTexture

```
TSoftObjectPtr<UTexture2D> SourceTexture
```

The source texture that the sprite comes from

### AdditionalSourceTextures

```
TArray<TObjectPtr<UTexture>> AdditionalSourceTextures
```

Additional source textures for other slots

### DefaultMaterial

```
UMaterialInterface DefaultMaterial
```

The material to use on a sprite instance if not overridden (this is the default material when only one is being used, and is the translucent/masked material for Diced render geometry, slot 0)

### SourceDimension

```
FVector2D SourceDimension
```

Dimensions within SourceTexture (in pixels)

### SourceTextureDimension

```
FVector2D SourceTextureDimension
```

Dimension of the texture when this sprite was created Used when the sprite is resized at some point

### OriginInSourceImageBeforeTrimming

```
FVector2D OriginInSourceImageBeforeTrimming
```

Origin within SourceImage, prior to atlasing

### SourceUV

```
FVector2D SourceUV
```

Position within SourceTexture (in pixels)

### PixelsPerUnrealUnit

```
float32 PixelsPerUnrealUnit
```

The scaling factor between pixels and Unreal units (cm) (e.g., 0.64 would make a 64 pixel wide sprite take up 100 cm)

### bRotatedInSourceImage

```
bool bRotatedInSourceImage
```

This texture is rotated in the atlas

### PivotMode

```
ESpritePivotMode PivotMode
```

### Pivot mode

```
Pivot mode
```

CustomPivotPoint

### FVector2D CustomPivotPoint

```
FVector2D CustomPivotPoint
```

Custom pivot point (relative to the sprite rectangle)

### bSnapPivotToPixelGrid

```
bool bSnapPivotToPixelGrid
```

Should the pivot be snapped to a pixel boundary?

### bTrimmedInSourceImage

```
bool bTrimmedInSourceImage
```

This texture is trimmed, consider the values above

### SourceImageDimensionBeforeTrimming

```
FVector2D SourceImageDimensionBeforeTrimming
```

Dimensions of SourceImage

### Sockets

```
TArray<FPaperSpriteSocket> Sockets
```

List of sockets on this sprite

### AtlasGroup

```
UPaperSpriteAtlas AtlasGroup
```

Spritesheet group that this sprite belongs to

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPaperSprite::StaticClass()
```
