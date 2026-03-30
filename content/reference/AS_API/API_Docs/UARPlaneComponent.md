# UARPlaneComponent

**Visibility:** public

## Inheritance

UARComponent → UARPlaneComponent

## Description

AR GAMEPLAY ReplicatedPayload FARPlaneUpdatePayload ReplicatedPayload STATIC VARIABLES ObjectClassificationDebugColors static TMap<EARObjectClassification,FLinearColor> UARPlaneComponent::ObjectClassificationDebugColors AR GAMEPLAY | DEBUG SetPlaneComponentDebugMode static void UARPlaneComponent::SetPlaneComponentDebugMode( EPlaneComponentDebugMode 	NewDebugMode 	) GetObjectClassificationDebugColors static const TMap<EARObjectClassification,FLinearColor>& UARPlaneComponent::GetObjectClassificationDebugColors() SetObjectClassificationDebugColors static void UARPlaneComponent::SetObjectClassificationDebugColors(

### TMap<EARObjectClassification,FLinearColor> 	InColors

```
TMap<EARObjectClassification,FLinearColor> 	InColors
```

)

## FUNCTIONS

### ServerUpdatePayload

```
void ServerUpdatePayload(FARPlaneUpdatePayload NewPayload)
```

Add

### void Add

```
void Add(FARPlaneUpdatePayload Payload)
```

Event when native representation is first added, called on server and clients.

### Update

```
void Update(FARPlaneUpdatePayload Payload)
```

Event when native representation is updated, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UARPlaneComponent UARPlaneComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UARPlaneComponent UARPlaneComponent::GetOrCreate

```
static UARPlaneComponent UARPlaneComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UARPlaneComponent UARPlaneComponent::Create

```
static UARPlaneComponent UARPlaneComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UARPlaneComponent::StaticClass

```
static UClass UARPlaneComponent::StaticClass()
```
