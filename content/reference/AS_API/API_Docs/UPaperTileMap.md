# UPaperTileMap

**Visibility:** public

## Inheritance

UObject → UPaperTileMap

## Description

A tile map is a 2D grid with a defined width and height (in tiles).  There can be multiple layers, each of which can specify which tile should appear in each cell of the map for that layer.

## COLLISION

### SpriteCollisionDomain

```
ESpriteCollisionMode SpriteCollisionDomain
```

Collision domain (no collision, 2D, or 3D)

### CollisionThickness

```
float32 CollisionThickness
```

The extrusion thickness of collision geometry when using a 3D collision domain

---

## IMPORTSETTINGS

### AssetImportData

```
UAssetImportData AssetImportData
```

Importing data and options used for this tile map

---

## SETUP

### PixelsPerUnrealUnit

```
float32 PixelsPerUnrealUnit
```

The scaling factor between pixels and Unreal units (cm) (e.g., 0.64 would make a 64 pixel wide tile take up 100 cm)

### TileHeight

```
int TileHeight
```

Height of one tile (in pixels)

### SeparationPerTileY

```
float32 SeparationPerTileY
```

The Z-separation incurred as you travel in Y (not strictly applied, batched tiles will be put at the same Z level)

### SeparationPerLayer

```
float32 SeparationPerLayer
```

The Z-separation between each layer of the tile map

### Material

```
UMaterialInterface Material
```

The material to use on a tile map instance if not overridden

### TileWidth

```
int TileWidth
```

Width of one tile (in pixels)

### SeparationPerTileX

```
float32 SeparationPerTileX
```

The Z-separation incurred as you travel in X (not strictly applied, batched tiles will be put at the same Z level)

### ProjectionMode

```
ETileMapProjectionMode ProjectionMode
```

Tile map type

### MapWidth

```
int MapWidth
```

Width of map (in tiles)

### MapHeight

```
int MapHeight
```

Height of map (in tiles)

### HexSideLength

```
int HexSideLength
```

The vertical height of the sides of the hex cell for a tile.  Note: This value should already be included as part of the TileHeight, and is purely cosmetic; it only affects how the tile cursor preview is drawn.

### MultiTileGridWidth

```
int MultiTileGridWidth
```

Number of tiles the multi tile grid spans horizontally. 0 removes vertical lines

### BackgroundColor

```
FLinearColor BackgroundColor
```

The background color displayed in the tile map editor

### TileGridColor

```
FLinearColor TileGridColor
```

The color of the tile grid

### MultiTileGridColor

```
FLinearColor MultiTileGridColor
```

The color of the multi tile grid

### MultiTileGridHeight

```
int MultiTileGridHeight
```

Number of tiles the multi tile grid spans vertically. 0 removes horizontal lines

### MultiTileGridOffsetX

```
int MultiTileGridOffsetX
```

Number of tiles the multi tile grid is shifted to the right

### MultiTileGridOffsetY

```
int MultiTileGridOffsetY
```

Number of tiles the multi tile grid is shifted downwards

### LayerGridColor

```
FLinearColor LayerGridColor
```

The color of the layer grid

---

## SPRITE

### TileLayers

```
TArray<TObjectPtr<UPaperTileLayer>> TileLayers
```

The list of layers

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPaperTileMap::StaticClass()
```
