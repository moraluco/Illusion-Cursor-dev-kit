# Subsystem

## Inheritance

Subsystem

## Description

STATIC FUNCTIONS GetGameInstanceSubsystem static UGameInstanceSubsystem Subsystem::GetGameInstanceSubsystem(

## Members

### Class

```
TSubclassOf<UGameInstanceSubsystem> Class
```

)

### Get a Game Instance Subsystem from the Game Instance associated with the provided context

```
Get a Game Instance Subsystem from the Game Instance associated with the provided context
```

GetLocalPlayerSubsystem

### static ULocalPlayerSubsystem Subsystem::GetLocalPlayerSubsystem

```
static ULocalPlayerSubsystem Subsystem::GetLocalPlayerSubsystem(
```

### Class

```
TSubclassOf<ULocalPlayerSubsystem> Class
```

)

### Get a Local Player Subsystem from the Local Player associated with the provided context

```
Get a Local Player Subsystem from the Local Player associated with the provided context
```

GetLocalPlayerSubsystemFromLocalPlayer

### static ULocalPlayerSubsystem Subsystem::GetLocalPlayerSubsystemFromLocalPlayer

```
static ULocalPlayerSubsystem Subsystem::GetLocalPlayerSubsystemFromLocalPlayer(
```

ULocalPlayer 	LocalPlayer,

### Class

```
TSubclassOf<ULocalPlayerSubsystem> Class
```

)

### Get a Local Player Subsystem from the Local Player associated with the provided context

```
Get a Local Player Subsystem from the Local Player associated with the provided context
```

GetLocalPlayerSubsystemFromPlayerController

### static ULocalPlayerSubsystem Subsystem::GetLocalPlayerSubsystemFromPlayerController

```
static ULocalPlayerSubsystem Subsystem::GetLocalPlayerSubsystemFromPlayerController(
```

APlayerController 	PlayerController,

### Class

```
TSubclassOf<ULocalPlayerSubsystem> Class
```

)

### Get a Local Player Subsystem from the LocalPlayer associated with the provided context If the player controller isn't associated to a LocalPlayer nullptr is returned

```
Get a Local Player Subsystem from the LocalPlayer associated with the provided context If the player controller isn't associated to a LocalPlayer nullptr is returned
```

GetWorldSubsystem

### static UWorldSubsystem Subsystem::GetWorldSubsystem

```
static UWorldSubsystem Subsystem::GetWorldSubsystem(TSubclassOf<UWorldSubsystem> Class)
```

Get a World Subsystem from the World associated with the provided context

### GetEngineSubsystem

```
static UEngineSubsystem Subsystem::GetEngineSubsystem(TSubclassOf<UEngineSubsystem> Class)
```

Get a Game Instance Subsystem from the Game Instance associated with the provided context
