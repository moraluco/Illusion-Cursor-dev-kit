# UARFaceComponent

**Visibility:** public

## Inheritance

UARComponent → UARFaceComponent

## Description

AR GAMEPLAY bUpdateVertexNormal bool bUpdateVertexNormal

Whether to automatically update the vertex normal when the mesh is updated.

bFaceOutOfScreen bool bFaceOutOfScreen

Whether the mesh should be rotated so that it's facing out of the screen.

ReplicatedPayload FARFaceUpdatePayload ReplicatedPayload TransformSetting EARFaceTransformMixing TransformSetting

Determines how the transform from tracking data and the component's transform are mixed together.

AR GAMEPLAY | DEBUG SetFaceComponentDebugMode static void UARFaceComponent::SetFaceComponentDebugMode( EFaceComponentDebugMode 	NewDebugMode 	)

## FUNCTIONS

### ServerUpdatePayload

```
void ServerUpdatePayload(FARFaceUpdatePayload NewPayload)
```

Update

### void Update

```
void Update(FARFaceUpdatePayload Payload)
```

Event when native representation is updated, called on server and clients.

### Add

```
void Add(FARFaceUpdatePayload Payload)
```

Event when native representation is first added, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARFaceComponent UARFaceComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARFaceComponent UARFaceComponent::GetOrCreate

```
static UARFaceComponent UARFaceComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARFaceComponent UARFaceComponent::Create

```
static UARFaceComponent UARFaceComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARFaceComponent::StaticClass

```
static UClass UARFaceComponent::StaticClass()
```
