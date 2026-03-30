# UARMeshComponent

**Visibility:** public

## Inheritance

UARComponent → UARMeshComponent

## Description

AR GAMEPLAY ReplicatedPayload FARMeshUpdatePayload ReplicatedPayload

## FUNCTIONS

### Update

```
void Update(FARMeshUpdatePayload Payload)
```

Event when native representation is updated, called on server and clients.

### ServerUpdatePayload

```
void ServerUpdatePayload(FARMeshUpdatePayload NewPayload)
```

Add

### void Add

```
void Add(FARMeshUpdatePayload Payload)
```

Event when native representation is first added, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARMeshComponent UARMeshComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARMeshComponent UARMeshComponent::GetOrCreate

```
static UARMeshComponent UARMeshComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARMeshComponent UARMeshComponent::Create

```
static UARMeshComponent UARMeshComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARMeshComponent::StaticClass

```
static UClass UARMeshComponent::StaticClass()
```
