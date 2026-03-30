# AInternalToolFrameworkActor

**Visibility:** public

## Inheritance

AActor → AInternalToolFrameworkActor → AGizmoActor → APreviewGeometryActor → APreviewMeshActor

## Description

AInternalToolFrameworkActor is a base class for internal Actors that the ToolsFramework may spawn (for gizmos, mesh previews, etc). These Actors may need special-case handling, for example to prevent the user from selecting and deleting them.

## Members

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static AInternalToolFrameworkActor AInternalToolFrameworkActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AInternalToolFrameworkActor::StaticClass()
```
