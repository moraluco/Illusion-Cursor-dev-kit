# AARSharedWorldPlayerController

**Visibility:** public

## Inheritance

APlayerController → AARSharedWorldPlayerController → FUNCTIONS → ClientUpdateARWorldData

## Description

void ClientUpdateARWorldData( int 	Offset, TArray<uint8> 	Buffer 	)

Copies the buffer into the AR world data (client)

Parameters Offset int

where in the buffer to start the copying

Buffer TArray<uint8>

the chunk of data to copy

ClientUpdatePreviewImageData void ClientUpdatePreviewImageData( int 	Offset, TArray<uint8> 	Buffer 	)

Copies the buffer into the image data (client)

Parameters Offset int

where in the buffer to start the copying

Buffer TArray<uint8>

the chunk of data to copy

ServerMarkReadyForReceiving void ServerMarkReadyForReceiving()

Tells the server it is ready for receiving any shared world data

ClientInitSharedWorld void ClientInitSharedWorld( int 	PreviewImageSize, int 	ARWorldDataSize 	)

Used to setup the initial values and size the arrays (client)

Parameters PreviewImageSize int

the total size in bytes of the image data that will be sent

ARWorldDataSize int

the total size in bytes of the AR world data that will be sent

## Members

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static AARSharedWorldPlayerController AARSharedWorldPlayerController::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AARSharedWorldPlayerController::StaticClass()
```
