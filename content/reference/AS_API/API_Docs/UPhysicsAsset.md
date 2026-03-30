# UPhysicsAsset

**Visibility:** public

## Inheritance

UObject → UPhysicsAsset

## Description

PhysicsAsset contains a set of rigid bodies and constraints that make up a single ragdoll.  The asset is not limited to human ragdolls, and can be used for any physical simulation using bodies and constraints.  A SkeletalMesh has a single PhysicsAsset, which allows for easily turning ragdoll physics on or off for many SkeletalMeshComponents The asset can be configured inside the Physics Asset Editor.

### See also

- https://​docs​.unrealengine​.com​/InteractiveExperiences​/Physics​/PhysicsAssetEditor @see USkeletalMesh

## PROFILES

### ConstraintProfiles

```
TArray<FName> ConstraintProfiles PhysicalAnimationProfiles TArray<FName> PhysicalAnimationProfiles SOLVERSETTINGS SolverType EPhysicsAssetSolverType SolverType
```

Solver type used in physics asset editor. This can be used to make what you see in the asset editror more closely resembles what you see in game (though there will be differences owing to framerate variation etc). If your asset will primarily be used as a ragdoll select "World", but if it will be used in the AnimGraph select "RBAN".

### SolverSettings

```
FPhysicsAssetSolverSettings SolverSettings
```

Solver settings when the asset is used with a RigidBody Anim Node (RBAN).

---

## THUMBNAIL

### ThumbnailInfo

```
UThumbnailInfo ThumbnailInfo
```

Information for thumbnail rendering

---

## PHYSICS \| CONSTRAINTS

### GetConstraintByName

```
FConstraintInstanceAccessor GetConstraintByName(FName ConstraintName)
```

Gets a constraint by its joint name

**Parameters**

ConstraintName
FName

name of the constraint

**Returns**

ConstraintInstance accessor to the constraint data

GetConstraints
void GetConstraints(
bool 	bIncludesTerminated,
TArray<FConstraintInstanceAccessor>& 	OutConstraints
	)

Gets all constraints

**Parameters**

OutConstraints
TArray<FConstraintInstanceAccessor>&

returned list of constraints matching the parameters

GetConstraintByBoneNames
FConstraintInstanceAccessor GetConstraintByBoneNames(
FName 	Bone1Name,
FName 	Bone2Name
	)

Gets a constraint by its joint name

**Parameters**

Bone1Name
FName

name of the first bone in the joint

Bone2Name
FName

name of the second bone in the joint

**Returns**

ConstraintInstance accessor to the constraint data

---

## FUNCTIONS

### SetbNotForDedicatedServer

```
void SetbNotForDedicatedServer(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPhysicsAsset::StaticClass()
```
