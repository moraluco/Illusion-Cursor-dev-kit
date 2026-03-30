# UAutoDestroySubsystem

**Visibility:** public

## Inheritance

UTickableWorldSubsystem → UAutoDestroySubsystem

## Description

The Auto destroy subsystem manages actors who have bAutoDestroyWhenFinished set as true. This ensures that even actors who do not have Tick enabled get properly destroyed, as well as decouple this behavior from AActor::Tick

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UAutoDestroySubsystem UAutoDestroySubsystem::Get()
```

StaticClass

### static UClass UAutoDestroySubsystem::StaticClass

```
static UClass UAutoDestroySubsystem::StaticClass()
```
