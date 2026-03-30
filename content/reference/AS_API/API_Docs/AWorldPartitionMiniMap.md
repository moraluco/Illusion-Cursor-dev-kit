# AWorldPartitionMiniMap

**Visibility:** public

## Inheritance

AInfo → AWorldPartitionMiniMap

## Description

A mini map to preview the world in world partition window. (editor-only)

## WORLDPARTITIONMINIMAP

### ExcludedDataLayers

```
TSet<FActorDataLayer> ExcludedDataLayers
```

Datalayers excluded from MiniMap rendering

### MiniMapTileSize

```
int MiniMapTileSize
```
### Size

```
MiniMap Tile Size
```
### UVOffset

```
FBox2D UVOffset
```

UVOffset used to setup Virtual Texture

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static AWorldPartitionMiniMap AWorldPartitionMiniMap::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AWorldPartitionMiniMap::StaticClass()
```
