# UARObjectComponent

**Visibility:** public

## Inheritance

UARComponent → UARObjectComponent

## Description

AR GAMEPLAY ReplicatedPayload FARObjectUpdatePayload ReplicatedPayload

## FUNCTIONS

### Update

```
void Update(FARObjectUpdatePayload Payload)
```

Event when native representation is updated, called on server and clients.

### ServerUpdatePayload

```
void ServerUpdatePayload(FARObjectUpdatePayload NewPayload)
```

Add

### void Add

```
void Add(FARObjectUpdatePayload Payload)
```

Event when native representation is first added, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARObjectComponent UARObjectComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARObjectComponent UARObjectComponent::GetOrCreate

```
static UARObjectComponent UARObjectComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARObjectComponent UARObjectComponent::Create

```
static UARObjectComponent UARObjectComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARObjectComponent::StaticClass

```
static UClass UARObjectComponent::StaticClass()
```
