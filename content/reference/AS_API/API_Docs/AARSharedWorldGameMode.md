# AARSharedWorldGameMode

**Visibility:** public

## Inheritance

AGameMode → AARSharedWorldGameMode

## Description

AR SHARED WORLD ARSharedWorldGameState const AARSharedWorldGameState ARSharedWorldGameState BufferSizePerChunk int BufferSizePerChunk

The size of the buffer to use per send request. Must be between 1 and 65535, though should not be max to avoid saturation

### AR SHARED WORLD

```
AR SHARED WORLD SetARSharedWorldData void SetARSharedWorldData(TArray<uint8> ARWorldData)
```

Sets the image data for the shared world game session

**Parameters**

ARWorldData
TArray<uint8>

the blob to use as the AR world data

SetARWorldSharingIsReady
void SetARWorldSharingIsReady()

Tells the game mode that the AR data is ready and should be replicated to all connected clients

SetPreviewImageData
void SetPreviewImageData(
TArray<uint8> 	ImageData
	)

Sets the image data for the shared world game session

**Parameters**

ImageData
TArray<uint8>

the blob to use as the image data

GetARSharedWorldGameState
AARSharedWorldGameState GetARSharedWorldGameState()

**Returns**

the game state for this game mode

STATIC FUNCTIONS
Spawn
static AARSharedWorldGameMode AARSharedWorldGameMode::Spawn(

FVector 	Location	 = 	FVector :: ZeroVector,
FRotator 	Rotation	 = 	FRotator :: ZeroRotator,
FName 	Name	 = 	NAME_None,
ULevel 	Level	 = 	nullptr

)
StaticClass
static UClass AARSharedWorldGameMode::StaticClass()
