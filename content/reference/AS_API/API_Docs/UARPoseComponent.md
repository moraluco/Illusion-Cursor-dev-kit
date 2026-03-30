# UARPoseComponent

**Visibility:** public

## Inheritance

UARComponent → UARPoseComponent

## Description

AR GAMEPLAY ReplicatedPayload FARPoseUpdatePayload ReplicatedPayload AR GAMEPLAY | DEBUG SetPoseComponentDebugMode static void UARPoseComponent::SetPoseComponentDebugMode( EPoseComponentDebugMode 	NewDebugMode 	)

## FUNCTIONS

### ServerUpdatePayload

```
void ServerUpdatePayload(FARPoseUpdatePayload NewPayload)
```

Update

### void Update

```
void Update(FARPoseUpdatePayload Payload)
```

Event when native representation is updated, called on server and clients.

### Add

```
void Add(FARPoseUpdatePayload Payload)
```

Event when native representation is first added, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARPoseComponent UARPoseComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARPoseComponent UARPoseComponent::GetOrCreate

```
static UARPoseComponent UARPoseComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARPoseComponent UARPoseComponent::Create

```
static UARPoseComponent UARPoseComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARPoseComponent::StaticClass

```
static UClass UARPoseComponent::StaticClass()
```
