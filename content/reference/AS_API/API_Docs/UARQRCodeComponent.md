# UARQRCodeComponent

**Visibility:** public

## Inheritance

UARComponent → UARQRCodeComponent

## Description

AR GAMEPLAY ReplicatedPayload FARQRCodeUpdatePayload ReplicatedPayload AR GAMEPLAY | DEBUG SetQRCodeComponentDebugMode static void UARQRCodeComponent::SetQRCodeComponentDebugMode(

### EQRCodeComponentDebugMode 	NewDebugMode

```
EQRCodeComponentDebugMode 	NewDebugMode
```

)

## FUNCTIONS

### ServerUpdatePayload

```
void ServerUpdatePayload(FARQRCodeUpdatePayload NewPayload)
```

Update

### void Update

```
void Update(FARQRCodeUpdatePayload Payload)
```

Event when native representation is updated, called on server and clients.

### Add

```
void Add(FARQRCodeUpdatePayload Payload)
```

Event when native representation is first added, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARQRCodeComponent UARQRCodeComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARQRCodeComponent UARQRCodeComponent::GetOrCreate

```
static UARQRCodeComponent UARQRCodeComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARQRCodeComponent UARQRCodeComponent::Create

```
static UARQRCodeComponent UARQRCodeComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARQRCodeComponent::StaticClass

```
static UClass UARQRCodeComponent::StaticClass()
```
