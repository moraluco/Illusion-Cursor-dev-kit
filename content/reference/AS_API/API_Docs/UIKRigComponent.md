# UIKRigComponent

**Visibility:** public

## Inheritance

UActorComponent → UIKRigComponent → IKRIGGOALS → SetIKRigGoal

## Description

void SetIKRigGoal( FIKRigGoal 	Goal 	)

Apply a IKRigGoal and store it on this rig. Goal transform assumed in Component Space of Skeletal Mesh.

SetIKRigGoalPositionAndRotation void SetIKRigGoalPositionAndRotation( const 	FName 	GoalName, const 	FVector 	Position, const 	FQuat 	Rotation, 	float32 	PositionAlpha, 	float32 	RotationAlpha 	)

Set an IK Rig Goal position and rotation (assumed in Component Space of Skeletal Mesh) with separate alpha values.

SetIKRigGoalTransform void SetIKRigGoalTransform( const 	FName 	GoalName, const 	FTransform 	Transform, 	float32 	PositionAlpha, 	float32 	RotationAlpha 	)

Set an IK Rig Goal transform (assumed in Component Space of Skeletal Mesh) with separate alpha values.

ClearAllGoals void ClearAllGoals()

Remove all stored goals in this component.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UIKRigComponent UIKRigComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UIKRigComponent UIKRigComponent::GetOrCreate

```
static UIKRigComponent UIKRigComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UIKRigComponent UIKRigComponent::Create

```
static UIKRigComponent UIKRigComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UIKRigComponent::StaticClass

```
static UClass UIKRigComponent::StaticClass()
```
