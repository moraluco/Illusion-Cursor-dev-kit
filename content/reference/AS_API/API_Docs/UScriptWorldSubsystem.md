# UScriptWorldSubsystem

**Visibility:** public

## Inheritance

UTickableWorldSubsystem → UScriptWorldSubsystem

## Description

WORLD SUBSYSTEM bCreateForGameWorlds bool bCreateForGameWorlds

Create this subsystem for worlds in gameplay (including Play-In-Editor)

bCreateForLevelEditorWorlds bool bCreateForLevelEditorWorlds

Create this subsystem for worlds representing levels loaded in the editor

## FUNCTIONS

### PostInitialize

```
void PostInitialize()
```

Initialize

### void Initialize

```
void Initialize()
```

OnWorldBeginPlay

### void OnWorldBeginPlay

```
void OnWorldBeginPlay()
```

OnWorldComponentsUpdated

### void OnWorldComponentsUpdated

```
void OnWorldComponentsUpdated()
```

Deinitialize

### void Deinitialize

```
void Deinitialize()
```

ShouldCreateSubsystem

### bool ShouldCreateSubsystem

```
bool ShouldCreateSubsystem(UObject Outer)const
```

Tick

### void Tick

```
void Tick(float32 DeltaTime)
```

UpdateStreamingState

### void UpdateStreamingState

```
void UpdateStreamingState()
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UScriptWorldSubsystem::StaticClass()
```
