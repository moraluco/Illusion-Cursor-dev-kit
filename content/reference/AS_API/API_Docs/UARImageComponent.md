# UARImageComponent

**Visibility:** public

## Inheritance

UARComponent → UARImageComponent

## Description

AR GAMEPLAY ReplicatedPayload FARImageUpdatePayload ReplicatedPayload AR GAMEPLAY | DEBUG SetImageComponentDebugMode static void UARImageComponent::SetImageComponentDebugMode( EImageComponentDebugMode 	NewDebugMode 	)

## FUNCTIONS

### ServerUpdatePayload

```
void ServerUpdatePayload(FARImageUpdatePayload NewPayload)
```

Update

### void Update

```
void Update(FARImageUpdatePayload Payload)
```

Event when native representation is updated, called on server and clients.

### Add

```
void Add(FARImageUpdatePayload Payload)
```

Event when native representation is first added, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARImageComponent UARImageComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARImageComponent UARImageComponent::GetOrCreate

```
static UARImageComponent UARImageComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARImageComponent UARImageComponent::Create

```
static UARImageComponent UARImageComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARImageComponent::StaticClass

```
static UClass UARImageComponent::StaticClass()
```
