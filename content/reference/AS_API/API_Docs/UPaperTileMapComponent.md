# UPaperTileMapComponent

**Visibility:** public

## Inheritance

UMeshComponent → UPaperTileMapComponent

## Description

A component that handles rendering and collision for a single instance of a UPaperTileMap asset.

This component is created when you drag a tile map asset from the content browser into a Blueprint, or contained inside of the actor created when you drag one into the level.

NOTE: This is an beta preview class.  While not considered production-ready, it is a step beyond 'experimental' and is being provided as a preview of things to come: - We will try to provide forward-compatibility for content you create.  - The classes may change significantly in the future.  - The code is in an early state and may not meet the desired polish / quality bar.  - There is probably no documentation or example content yet.  - They will be promoted out of 'beta' when they are production ready.

### See also

- UPrimitiveComponent, UPaperTileMap

## MATERIALS

### TileMapColor

```
FLinearColor TileMapColor
```

The color of the tile map (multiplied with the per-layer color and passed to the material as a vertex color)

---

## RENDERING

### bShowPerTileGridWhenSelected

```
bool bShowPerTileGridWhenSelected
```

Should this component show a tile grid when the component is selected?

### bShowPerLayerGridWhenSelected

```
bool bShowPerLayerGridWhenSelected
```

Should this component show an outline around each layer when the component is selected?

### UseSingleLayerIndex

```
int UseSingleLayerIndex
```

The index of the single layer to use if enabled

### bShowPerTileGridWhenUnselected

```
bool bShowPerTileGridWhenUnselected
```

Should this component show a tile grid when the component is not selected?

### bShowPerLayerGridWhenUnselected

```
bool bShowPerLayerGridWhenUnselected
```

Should this component show an outline around each layer when the component is not selected?

### bUseSingleLayer

```
bool bUseSingleLayer
```

Should we draw a single layer?

### bShowOutlineWhenUnselected

```
bool bShowOutlineWhenUnselected
```

Should this component show an outline around the first layer when the component is not selected?

---

## SETUP

### TileMap

```
UPaperTileMap TileMap
```

The tile map used by this component

---

## SPRITE

### ResizeMap

```
void ResizeMap(int NewWidthInTiles, int NewHeightInTiles)
```

Resizes the tile map (Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets)

### CreateNewTileMap

```
void CreateNewTileMap(int MapWidth = 4, int MapHeight = 4, int TileWidth = 32, int TileHeight = 32, float32 PixelsPerUnrealUnit = 1.000000, bool bCreateLayer = true)
```

Creates a new tile map of the specified size, replacing the TileMap reference (or dropping the previous owned one)

**Parameters**

MapWidth
int

Width of the map (in tiles)

MapHeight
int

Height of the map (in tiles)

TileWidth
int

Width of one tile (in pixels)

TileHeight
int

Height of one tile (in pixels)

bCreateLayer
bool

Should an empty layer be created?

GetLayerColor
FLinearColor GetLayerColor(
int 	Layer	 = 	0
	) const

Gets the per-layer color multiplier for a specific layer (multiplied with the tile map color and passed to the material as a vertex color)

GetMapSize
void GetMapSize(
int& 	MapWidth,
int& 	MapHeight,
int& 	NumLayers
	)

Returns the size of the tile map

GetTile
FPaperTileInfo GetTile(
int 	X,
int 	Y,
int 	Layer
	) const

Returns the contents of a specified tile cell

GetTileCenterPosition
FVector GetTileCenterPosition(
int 	TileX,
int 	TileY,
int 	LayerIndex	 = 	0,
bool 	bWorldSpace	 = 	false
	) const

Returns the position of the center of the specified tile

GetTileCornerPosition
FVector GetTileCornerPosition(
int 	TileX,
int 	TileY,
int 	LayerIndex	 = 	0,
bool 	bWorldSpace	 = 	false
	) const

Returns the position of the top left corner of the specified tile

GetTileMapColor
FLinearColor GetTileMapColor() const

Gets the tile map global color multiplier (multiplied with the per-layer color and passed to the material as a vertex color)

GetTilePolygon
void GetTilePolygon(
int 	TileX,
int 	TileY,
TArray<FVector>& 	Points,
int 	LayerIndex	 = 	0,
bool 	bWorldSpace	 = 	false
	) const

Returns the polygon for the specified tile (will be 4 or 6 vertices as a rectangle, diamond, or hexagon)

MakeTileMapEditable
void MakeTileMapEditable()

Makes the tile map asset pointed to by this component editable.  Nothing happens if it was already instanced, but if the tile map is an asset reference, it is cloned to make a unique instance.

OwnsTileMap
bool OwnsTileMap() const

Does this component own the tile map (is it instanced instead of being an asset reference)?

RebuildCollision
void RebuildCollision()

Rebuilds collision for the tile map

AddNewLayer
UPaperTileLayer AddNewLayer()

Creates and adds a new layer to the tile map Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets

SetDefaultCollisionThickness
void SetDefaultCollisionThickness(
float32 	Thickness,
bool 	bRebuildCollision	 = 	true
	)

Sets the default thickness for any layers that don't override the collision thickness Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets

SetLayerCollision
void SetLayerCollision(
int 	Layer	 = 	0,
bool 	bHasCollision	 = 	true,
bool 	bOverrideThickness	 = 	true,
float32 	CustomThickness	 = 	50.000000,
bool 	bOverrideOffset	 = 	false,
float32 	CustomOffset	 = 	0.000000,
bool 	bRebuildCollision	 = 	true
	)

Sets the collision thickness for a specific layer Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets

SetLayerColor
void SetLayerColor(
FLinearColor 	NewColor,
int 	Layer	 = 	0
	)

Sets the per-layer color multiplier for a specific layer (multiplied with the tile map color and passed to the material as a vertex color) Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets

SetTile
void SetTile(
int 	X,
int 	Y,
int 	Layer,
FPaperTileInfo 	NewValue
	)

Modifies the contents of a specified tile cell (Note: This will only work on components that own their own tile map (OwnsTileMap returns true), you cannot modify standalone tile map assets) Note: Does not update collision by default, call RebuildCollision after all edits have been done in a frame if necessary

SetTileMap
bool SetTileMap(
UPaperTileMap 	NewTileMap
	)

Change the PaperTileMap used by this instance.

SetTileMapColor
void SetTileMapColor(
FLinearColor 	NewColor
	)

Sets the tile map global color multiplier (multiplied with the per-layer color and passed to the material as a vertex color)

---

## FUNCTIONS

### GetTileMap

```
UPaperTileMap GetTileMap()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPaperTileMapComponent UPaperTileMapComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPaperTileMapComponent UPaperTileMapComponent::GetOrCreate

```
static UPaperTileMapComponent UPaperTileMapComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPaperTileMapComponent UPaperTileMapComponent::Create

```
static UPaperTileMapComponent UPaperTileMapComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPaperTileMapComponent::StaticClass

```
static UClass UPaperTileMapComponent::StaticClass()
```
