# UARPointComponent

**Visibility:** public

## Inheritance

UARComponent → UARPointComponent

## Description

AR GAMEPLAY ReplicatedPayload FARPointUpdatePayload ReplicatedPayload

## FUNCTIONS

### Update

```
void Update(FARPointUpdatePayload Payload)
```

Event when native representation is updated, called on server and clients.

### ServerUpdatePayload

```
void ServerUpdatePayload(FARPointUpdatePayload NewPayload)
```

Add

### void Add

```
void Add(FARPointUpdatePayload Payload)
```

Event when native representation is first added, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARPointComponent UARPointComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARPointComponent UARPointComponent::GetOrCreate

```
static UARPointComponent UARPointComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARPointComponent UARPointComponent::Create

```
static UARPointComponent UARPointComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARPointComponent::StaticClass

```
static UClass UARPointComponent::StaticClass()
```
