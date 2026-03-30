# AIntervalGizmoActor

**Visibility:** public

## Inheritance

AGizmoActor → AIntervalGizmoActor

## Description

AIntervalGizmoActor is an Actor type intended to be used with UIntervalGizmo, as the in-scene visual representation of the Gizmo.

FIntervalGizmoActorFactory returns an instance of this Actor type (or a subclass).

If a particular sub-Gizmo is not required, simply set that UProperty to null.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AIntervalGizmoActor AIntervalGizmoActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AIntervalGizmoActor::StaticClass

```
static UClass AIntervalGizmoActor::StaticClass()
```
