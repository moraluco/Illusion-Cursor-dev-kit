# UStaticMeshSocket

**Visibility:** public

## Inheritance

UObject → UStaticMeshSocket → STATICMESHSOCKET → RelativeLocation

## Description

FVector RelativeLocation RelativeRotation FRotator RelativeRotation RelativeScale FVector RelativeScale Tag FString Tag PreviewStaticMesh UStaticMesh PreviewStaticMesh SocketName FName SocketName

Defines a named attachment location on the UStaticMesh.  These are set up in editor and used as a shortcut instead of specifying everything explicitly to AttachComponent in the StaticMeshComponent.  The Outer of a StaticMeshSocket should always be the UStaticMesh.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UStaticMeshSocket::StaticClass()
```
