# UGizmoBoxComponent

**Visibility:** public

## Inheritance

UGizmoBaseComponent → UGizmoBoxComponent

## Description

Simple Component intended to be used as part of 3D Gizmos.  Draws outline of 3D Box based on parameters.

## OPTIONS

### Rotation

```
FQuat Rotation
```
### Dimensions

```
FVector Dimensions
```
### LineThickness

```
float32 LineThickness
```
### bRemoveHiddenLines

```
bool bRemoveHiddenLines
```
### bEnableAxisFlip

```
bool bEnableAxisFlip
```
### Origin

```
FVector Origin STATIC FUNCTIONS Get static UGizmoBoxComponent UGizmoBoxComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UGizmoBoxComponent UGizmoBoxComponent::GetOrCreate

```
static UGizmoBoxComponent UGizmoBoxComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UGizmoBoxComponent UGizmoBoxComponent::Create

```
static UGizmoBoxComponent UGizmoBoxComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UGizmoBoxComponent::StaticClass

```
static UClass UGizmoBoxComponent::StaticClass()
```
