# UBoundsCopyComponent

**Visibility:** public

## Inheritance

UActorComponent → UBoundsCopyComponent

## Description

Component used to copy the bounds of another Actor.

## TRANSFORMFROMBOUNDS

### bUseCollidingComponentsForSourceBounds

```
bool bUseCollidingComponentsForSourceBounds
```

If true, the source actor's bounds will include its colliding components bounds.

### bKeepOwnBoundsScale

```
bool bKeepOwnBoundsScale
```

If true, the actor's scale will be changed so that after adjustment, its own bounds match the source bounds.

### bUseCollidingComponentsForOwnBounds

```
bool bUseCollidingComponentsForOwnBounds
```

If true, the actor's own bounds will include its colliding components bounds.

### BoundsSourceActor

```
TSoftObjectPtr<AActor> BoundsSourceActor
```

Actor to copy the bounds from to set up the transform.

---

## TRANSFORMFROMBOUNDS

### SetTransformToBounds

```
void SetTransformToBounds()
```

Set this component transform to include the BoundsSourceActor bounds

### SetRotation

```
void SetRotation()
```

Copy the rotation from BoundsSourceActor to this component

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UBoundsCopyComponent UBoundsCopyComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UBoundsCopyComponent UBoundsCopyComponent::GetOrCreate

```
static UBoundsCopyComponent UBoundsCopyComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UBoundsCopyComponent UBoundsCopyComponent::Create

```
static UBoundsCopyComponent UBoundsCopyComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UBoundsCopyComponent::StaticClass

```
static UClass UBoundsCopyComponent::StaticClass()
```
