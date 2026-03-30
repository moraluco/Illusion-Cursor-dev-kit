# ACombinedTransformGizmoActor

**Visibility:** public

## Inheritance

AGizmoActor → ACombinedTransformGizmoActor

## Description

ACombinedTransformGizmoActor is an Actor type intended to be used with UCombinedTransformGizmo, as the in-scene visual representation of the Gizmo.

FCombinedTransformGizmoActorFactory returns an instance of this Actor type (or a subclass), and based on which Translate and Rotate UProperties are initialized, will associate those Components with UInteractiveGizmo's that implement Axis Translation, Plane Translation, and Axis Rotation.

If a particular sub-Gizmo is not required, simply set that FProperty to null.

The static factory method ::ConstructDefault3AxisGizmo() creates and initializes an Actor suitable for use in a standard 3-axis Transformation Gizmo.

## Members

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static ACombinedTransformGizmoActor ACombinedTransformGizmoActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass ACombinedTransformGizmoActor::StaticClass()
```
