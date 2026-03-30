# AGizmoActor

**Visibility:** public

## Inheritance

AInternalToolFrameworkActor → AGizmoActor → ACombinedTransformGizmoActor → AIntervalGizmoActor

## Description

AGizmoActor is a base class for Actors that would be created to represent Gizmos in the scene.  Currently this does not involve any special functionality, but a set of static functions are provided to create default Components commonly used in Gizmos.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AGizmoActor AGizmoActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AGizmoActor::StaticClass

```
static UClass AGizmoActor::StaticClass()
```
