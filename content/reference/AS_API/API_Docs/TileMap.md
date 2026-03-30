# TileMap

## Inheritance

TileMap → SPRITE → GetTileTransform

## Description

static FTransform TileMap::GetTileTransform( FPaperTileInfo 	Tile 	)

Returns the transform for a tile

GetTileUserData static FName TileMap::GetTileUserData( FPaperTileInfo 	Tile 	)

Returns the user data name for the specified tile, or NAME_None if there is no user-specified data

MakeTile static FPaperTileInfo TileMap::MakeTile( int 	TileIndex, UPaperTileSet 	TileSet, bool 	bFlipH, bool 	bFlipV, bool 	bFlipD 	)

Creates a tile from the specified information

BreakTile static void TileMap::BreakTile( FPaperTileInfo 	Tile, int& 	TileIndex, UPaperTileSet& 	TileSet, bool& 	bFlipH, bool& 	bFlipV, bool& 	bFlipD 	)

Breaks out the information for a tile
