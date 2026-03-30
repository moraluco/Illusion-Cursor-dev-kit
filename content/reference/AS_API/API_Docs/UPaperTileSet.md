# UPaperTileSet

**Visibility:** public

## Inheritance

UObject → UPaperTileSet

## Description

A tile set is a collection of tiles pulled from a texture that can be used to fill out a tile map.

### See also

- UPaperTileMap, UPaperTileMapComponent

## SPRITE

### PerTileData

```
TArray<FPaperTileMetadata> PerTileData
```

Per-tile information

---

## TILESET

### AdditionalSourceTextures

```
TArray<TObjectPtr<UTexture>> AdditionalSourceTextures
```

Additional source textures for other slots

### BorderMargin

```
FIntMargin BorderMargin
```

The amount of padding around the border of the tile sheet (in pixels)

### PerTileSpacing

```
FIntPoint PerTileSpacing
```

The amount of padding between tiles in the tile sheet (in pixels)

### DrawingOffset

```
FIntPoint DrawingOffset
```

The drawing offset for tiles from this set (in pixels)

### BackgroundColor

```
FLinearColor BackgroundColor
```

The background color displayed in the tile set viewer

### TileSheet

```
UTexture2D TileSheet
```

The tile sheet texture associated with this tile set

### TileSize

```
FIntPoint TileSize
```

The width and height of a single tile (in pixels)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPaperTileSet::StaticClass()
```
