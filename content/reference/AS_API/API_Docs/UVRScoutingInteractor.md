# UVRScoutingInteractor

**Visibility:** public

## Inheritance

UVREditorInteractor → UVRScoutingInteractor

## Description

Represents the interactor in the world

## INTERACTOR

### FlyingIndicatorComponent

```
UStaticMeshComponent FlyingIndicatorComponent
```

Shown in Navigation mode

---

## SCOUTING

### GizmoMode

```
EGizmoHandleTypes GizmoMode
```

Gets the gizmo mode for selected object

### STATIC VARIABLES

```
STATIC VARIABLES SelectedActors static const TArray<AActor> UVRScoutingInteractor::SelectedActors SCOUTING SetGizmoMode void SetGizmoMode(EGizmoHandleTypes InGizmoMode)
```

Sets the gizmo mode for selected object

### GetSelectedActors

```
static TArray<AActor> UVRScoutingInteractor::GetSelectedActors()
```

Gets all actors that are selected in the world editor

### GetGizmoMode

```
EGizmoHandleTypes GetGizmoMode()const
```

Gets the gizmo mode for selected object

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVRScoutingInteractor::StaticClass()
```
