# ATestTerminator

**Visibility:** public

## Inheritance

AActor → ATestTerminator

## Description

ATestTerminator

This actor will execute an Exit command in the world where it is spawned when this object is destroyed.

Replication is configured so the actor is replicated on client worlds.

Destruction is handled by the integration test system.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ATestTerminator ATestTerminator::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ATestTerminator::StaticClass

```
static UClass ATestTerminator::StaticClass()
```
