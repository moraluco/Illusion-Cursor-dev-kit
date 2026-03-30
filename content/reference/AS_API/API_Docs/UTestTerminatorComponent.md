# UTestTerminatorComponent

**Visibility:** public

## Inheritance

UActorComponent → UTestTerminatorComponent

## Description

UTestTerminatorComponent

This component is used as an acknowledge mechanism to ensure that replication of the ATestTermiantor actor has occurred.

This mechanism is based on component replication and server RPC.  This component is attached to the player controller by the ATestTerminator actor.

## FUNCTIONS

### ServerTerminatorReplicated

```
void ServerTerminatorReplicated()
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UTestTerminatorComponent UTestTerminatorComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UTestTerminatorComponent UTestTerminatorComponent::GetOrCreate

```
static UTestTerminatorComponent UTestTerminatorComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UTestTerminatorComponent UTestTerminatorComponent::Create

```
static UTestTerminatorComponent UTestTerminatorComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UTestTerminatorComponent::StaticClass

```
static UClass UTestTerminatorComponent::StaticClass()
```
