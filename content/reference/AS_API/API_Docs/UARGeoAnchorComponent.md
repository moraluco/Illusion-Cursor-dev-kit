# UARGeoAnchorComponent

**Visibility:** public

## Inheritance

UARComponent → UARGeoAnchorComponent

## Description

AR GAMEPLAY ReplicatedPayload FARGeoAnchorUpdatePayload ReplicatedPayload AR GAMEPLAY | DEBUG SetGeoAnchorComponentDebugMode static void UARGeoAnchorComponent::SetGeoAnchorComponentDebugMode(

### EGeoAnchorComponentDebugMode 	NewDebugMode

```
EGeoAnchorComponentDebugMode 	NewDebugMode
```

)

## FUNCTIONS

### ServerUpdatePayload

```
void ServerUpdatePayload(FARGeoAnchorUpdatePayload NewPayload)
```

Update

### void Update

```
void Update(FARGeoAnchorUpdatePayload Payload)
```

Event when native representation is updated, called on server and clients.

### Add

```
void Add(FARGeoAnchorUpdatePayload Payload)
```

Event when native representation is first added, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARGeoAnchorComponent UARGeoAnchorComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARGeoAnchorComponent UARGeoAnchorComponent::GetOrCreate

```
static UARGeoAnchorComponent UARGeoAnchorComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARGeoAnchorComponent UARGeoAnchorComponent::Create

```
static UARGeoAnchorComponent UARGeoAnchorComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARGeoAnchorComponent::StaticClass

```
static UClass UARGeoAnchorComponent::StaticClass()
```
