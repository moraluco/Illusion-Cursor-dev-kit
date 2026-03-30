# UInterchangeTexture2DNode

**Visibility:** public

## Inheritance

UInterchangeTextureNode → UInterchangeTexture2DNode

## Description

ns UE

INTERCHANGE | NODE | TEXTURE | UDIMS SourceBlocks TMap<int,FString> SourceBlocks

Get the source blocks for the texture If the map is empty then the texture will be simply be imported as normal texture using the payload key

INTERCHANGE | NODE | TEXTURE | UDIMS GetSourceBlocks TMap<int,FString> GetSourceBlocks() const

Get the source blocks for the texture If the map is empty then the texture will be simply be imported as normal texture using the payload key

SetSourceBlocks void SetSourceBlocks( TMap<int,FString> 	InSourceBlocks 	)

Set the source blocks Using this will force the texture factory to consider this texture as UDIM.

Parameters InSourceBlocks TMap<int,FString>

The blocks and their source image that compose the whole texture. The textures must be of the same format and use the same pixel format The first block inserted in the map be used to determine the accepted texture format and pixel format

ClearSourceBlocksData void ClearSourceBlocksData()

Remove the source block data from texture node This is a easy way to stop a texture from being imported as a UDIM

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangeTexture2DNode::StaticClass()
```
