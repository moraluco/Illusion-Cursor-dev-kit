# UAREnvironmentProbeComponent

**Visibility:** public

## Inheritance

UARComponent → UAREnvironmentProbeComponent

## Description

AR GAMEPLAY ReplicatedPayload FAREnvironmentProbeUpdatePayload ReplicatedPayload

## FUNCTIONS

### Update

```
void Update(FAREnvironmentProbeUpdatePayload Payload)
```

Event when native representation is updated, called on server and clients.

### ServerUpdatePayload

```
void ServerUpdatePayload(FAREnvironmentProbeUpdatePayload NewPayload)
```

Add

### void Add

```
void Add(FAREnvironmentProbeUpdatePayload Payload)
```

Event when native representation is first added, called on server and clients.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UAREnvironmentProbeComponent UAREnvironmentProbeComponent::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UAREnvironmentProbeComponent UAREnvironmentProbeComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UAREnvironmentProbeComponent UAREnvironmentProbeComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UAREnvironmentProbeComponent::StaticClass()
```
