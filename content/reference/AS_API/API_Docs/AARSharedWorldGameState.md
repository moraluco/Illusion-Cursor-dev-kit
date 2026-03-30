# AARSharedWorldGameState

**Visibility:** public

## Inheritance

AGameState → AARSharedWorldGameState

## Description

AR SHARED WORLD ARWorldData TArray<uint8> ARWorldData

Each client and the host have a copy of the shared world data

PreviewImageBytesTotal int PreviewImageBytesTotal

The size of the image that will be replicated to each client

ARWorldBytesTotal int ARWorldBytesTotal

The size of the AR world data that will be replicated to each client

PreviewImageBytesDelivered int PreviewImageBytesDelivered

The amount of the preview image data that has been replicated to this client so far

ARWorldBytesDelivered int ARWorldBytesDelivered

The amount of the AR world data that has been replicated to this client so far

PreviewImageData TArray<uint8> PreviewImageData

The image taken at the time of world saving for use when aligning the AR world later in the session

### AR SHARED WORLD

```
AR SHARED WORLD OnARWorldMapIsReady void OnARWorldMapIsReady()
```

## Members

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static AARSharedWorldGameState AARSharedWorldGameState::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AARSharedWorldGameState::StaticClass()
```
