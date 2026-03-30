# USkeletalMeshComponent

**Visibility:** public

## Inheritance

USkinnedMeshComponent → USkeletalMeshComponent → UDebugSkelMeshComponent

## Description

SkeletalMeshComponent is used to create an instance of an animated SkeletalMesh asset.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Engine​/Content​/Types​/SkeletalMeshes​/ @see USkeletalMesh

## ANIMATION

### OnAnimInitialized

```
FOnAnimInitialized OnAnimInitialized
```

Broadcast when the components anim instance is initialized

### AnimationData

```
FSingleAnimationPlayData AnimationData
```
### GlobalAnimRateScale

```
float32 GlobalAnimRateScale
```

Used to scale speed of all animations on this skeletal mesh.

### bPauseAnims

```
bool bPauseAnims
```

pauses this component's animations (doesn't tick them, but still refreshes bones)

### AnimBlueprintGeneratedClass

```
UAnimBlueprintGeneratedClass AnimBlueprintGeneratedClass
```
### AnimClass

```
TSubclassOf<UAnimInstance> AnimClass
```

The AnimBlueprint class to use. Use 'SetAnimInstanceClass' to change at runtime.

### AnimationMode

```
EAnimationMode AnimationMode
```

Whether to use Animation Blueprint or play Single Animation Asset.

### bDisablePostProcessBlueprint

```
bool bDisablePostProcessBlueprint
```

Controls whether or not this component will evaluate its post process instance. The post-process Instance is dictated by the skeletal mesh so this is used for per-instance control.

---

## ANIMATIONRIG

### DefaultAnimatingRigOverride

```
TSoftObjectPtr<UObject> DefaultAnimatingRigOverride
```

Default Animating Rig to Use if bOverrideDefaultAnimatingRig is true

---

## CLOTHING

### bForceCollisionUpdate

```
bool bForceCollisionUpdate
```

Forces the cloth simulation to constantly update its external collisions, at the expense of performance.  This will help to prevent missed collisions if the cloth's skeletal mesh component isn't moving, and when instead, wind or other moving objects are causing new collision shapes to come into the cloth's vicinity.

### ClothingSimulationFactory

```
TSubclassOf<UClothingSimulationFactory> ClothingSimulationFactory
```

Class of the object responsible for

### ClothBlendWeight

```
float32 ClothBlendWeight
```

weight to blend between simulated results and key-framed positions if weight is 1.0, shows only cloth simulation results and 0.0 will show only skinned results

### bDisableClothSimulation

```
bool bDisableClothSimulation
```

Disable cloth simulation and play original animation without simulation

### bWaitForParallelClothTask

```
bool bWaitForParallelClothTask
```

Whether we should stall the Cloth tick task until the cloth simulation is complete. This is required if we want up-to-date cloth data on the game thread, for example if we want to generate particles at cloth vertices.

### bAllowClothActors

```
bool bAllowClothActors
```

Toggles creation of cloth simulation. Distinct from the simulation toggle below in that, if off, avoids allocating the actors entirely instead of just skipping the simulation step.

### ClothingSimulationInteractor

```
const UClothingSimulationInteractor ClothingSimulationInteractor
```

Get the current interactor for a clothing simulation, if the current simulation supports runtime interaction.

### ClothMaxDistanceScale

```
float32 ClothMaxDistanceScale bLocalSpaceSimulation bool bLocalSpaceSimulation
```

It's worth trying this option when you feel that the current cloth simulation is unstable.  The scale of the actor is maintained during the simulation.  It is possible to add the inertia effects to the simulation, through the inertiaScale parameter of the clothing material.  So with an inertiaScale of 1.0 there should be no visible difference between local space and global space simulation.  Known issues: - Currently there's simulation issues when this feature is used in 3.x (DE4076) So if localSpaceSim is enabled there's no inertia effect when the global pose of the clothing actor changes.

### bResetAfterTeleport

```
bool bResetAfterTeleport
```

reset the clothing after moving the clothing position (called teleport)

### TeleportDistanceThreshold

```
float32 TeleportDistanceThreshold
```

Conduct teleportation if the character's movement is greater than this threshold in 1 frame.  Zero or negative values will skip the check.  You can also do force teleport manually using ForceNextUpdateTeleport() / ForceNextUpdateTeleportAndReset().

### bCollideWithAttachedChildren

```
bool bCollideWithAttachedChildren
```

can't collide with part of attached children if total collision volumes exceed 16 capsules or 32 planes per convex

### TeleportRotationThreshold

```
float32 TeleportRotationThreshold
```

Rotation threshold in degrees, ranging from 0 to 180.  Conduct teleportation if the character's rotation is greater than this threshold in 1 frame.  Zero or negative values will skip the check.

### bCollideWithEnvironment

```
bool bCollideWithEnvironment
```

can't collide with part of environment if total collision volumes exceed 16 capsules or 32 planes per convex

---

## COMPONENTS \| ANIMATION

### PlayRate

```
float32 PlayRate
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

Position

### Position

```
const float32 Position
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

---

## COMPONENTS \| SKELETALMESH

### AllowClothActors

```
bool AllowClothActors
```
### PostProcessInstance

```
const UAnimInstance PostProcessInstance
```

Returns the active post process instance is one is available. This is set on the mesh that this component is using, and is evaluated immediately after the main instance.

### DisableAnimCurves

```
bool DisableAnimCurves
```
### DefaultAnimatingRig

```
const TSoftObjectPtr<UObject> DefaultAnimatingRig AllowRigidBodyAnimNode const bool AllowRigidBodyAnimNode AnimInstance const UAnimInstance AnimInstance
```

Returns the animation instance that is driving the class (if available). This is typically an instance of the class set as AnimBlueprintGeneratedClass (generated by an animation blueprint) Since this instance is transient, it is not safe to be used during construction script

AllowedAnimCurveEvaluate

### AllowedAnimCurveEvaluate

```
const bool AllowedAnimCurveEvaluate
```

---

## MASTERPOSECOMPONENT

### bPropagateCurvesToSlaves

```
bool bPropagateCurvesToSlaves
```

If true, propagates calls to ApplyAnimationCurvesToComponent for slave components, only needed if slave components do not tick themselves

---

## OPTIMIZATION

### bSkipKinematicUpdateWhenInterpolating

```
bool bSkipKinematicUpdateWhenInterpolating
```

Whether to skip UpdateKinematicBonesToAnim() when interpolating. Kinematic bones are updated to the target interpolation pose only on ticks when they are evaluated.

### bSkipBoundsUpdateWhenInterpolating

```
bool bSkipBoundsUpdateWhenInterpolating
```

Whether to skip bounds update when interpolating. Bounds are updated to the target interpolation pose only on ticks when they are evaluated.

---

## PHYSICS

### SkeletalCenterOfMass

```
const FVector SkeletalCenterOfMass
```

Returns the center of mass of the skeletal mesh, instead of the root body's location

### PhysicsTransformUpdateMode

```
EPhysicsTransformUpdateMode PhysicsTransformUpdateMode
```

Whether physics simulation updates component transform.

---

## SKELETALMESH

### KinematicBonesUpdateType

```
EKinematicBonesUpdateToPhysics KinematicBonesUpdateType
```

If we are running physics, should we update non-simulated bones based on the animation bone positions.

### bDeferKinematicBoneUpdate

```
bool bDeferKinematicBoneUpdate
```

Whether animation and world transform updates are deferred. If this is on, the kinematic bodies (scene query data) will not update until the next time the physics simulation is run

### bNoSkeletonUpdate

```
bool bNoSkeletonUpdate
```

Skips Ticking and Bone Refresh.

### bUpdateJointsFromAnimation

```
bool bUpdateJointsFromAnimation
```

If we should pass joint position to joints each frame, so that they can be used by motorized joints to drive the ragdoll based on the animation.

### bEnablePerPolyCollision

```
bool bEnablePerPolyCollision
```

Uses skinned data for collision data.

### bIncludeComponentLocationIntoBounds

```
bool bIncludeComponentLocationIntoBounds
```

If true, the Location of this Component will be included into its bounds calculation (this can be useful when using SMU_OnlyTickPoseWhenRendered on a character that moves away from the root and no bones are left near the origin of the component)

### bEnablePhysicsOnDedicatedServer

```
bool bEnablePhysicsOnDedicatedServer
```

If true, simulate physics for this component on a dedicated server.  This should be set if simulating physics and replicating with a dedicated server.  Note: This property cannot be changed at runtime.

---

## VARIABLES

### DisablePostProcessBlueprint

```
bool DisablePostProcessBlueprint
```

Gets whether the post process blueprint is currently disabled for this component

### OnConstraintBroken

```
FConstraintBrokenSignature OnConstraintBroken
```

Notification when constraint is broken.

### OnPlasticDeformation

```
FPlasticDeformationEventSignature OnPlasticDeformation
```

Notification when constraint plasticity drive target changes.

---

## CLOTHING

### ForceClothNextUpdateTeleport

```
void ForceClothNextUpdateTeleport()
```

Used to indicate we should force 'teleport' during the next call to UpdateClothState, This will transform positions and velocities and thus keep the simulation state, just translate it to a new pose.

### UnbindClothFromMasterPoseComponent

```
void UnbindClothFromMasterPoseComponent(bool bRestoreSimulationSpace = true)
```

If this component has a valid MasterPoseComponent and has previously had its cloth bound to the MCP, this function will unbind the cloth and resume simulation.

**Parameters**

bRestoreSimulationSpace
bool

if true and the master pose cloth was originally simulating in world space, we will restore this setting. This will cause the master component to reset which may be undesirable.

SuspendClothingSimulation
void SuspendClothingSimulation()

Stops simulating clothing, but does not show clothing ref pose. Keeps the last known simulation state

SetTeleportRotationThreshold
void SetTeleportRotationThreshold(
float32 	Threshold
	)

Sets the teleportation rotation threshold.

**Parameters**

Threshold
float32

Threshold in degrees.

BindClothToMasterPoseComponent
void BindClothToMasterPoseComponent()

If this component has a valid MasterPoseComponent then this function makes cloth items on the slave component take the transforms of the cloth items on the master component instead of simulating separately.  Note: This will FORCE any cloth actor on the master component to simulate in local space. Also The meshes used in the components must be identical for the cloth to bind correctly

SetTeleportDistanceThreshold
void SetTeleportDistanceThreshold(
float32 	Threshold
	)

Sets the teleportation distance threshold.

**Parameters**

Threshold
float32

Threshold value.

SetClothMaxDistanceScale
void SetClothMaxDistanceScale(
float32 	Scale
	)
ResumeClothingSimulation
void ResumeClothingSimulation()

Resumes a previously suspended clothing simulation, teleporting the clothing on the next tick

GetClothingSimulationInteractor
UClothingSimulationInteractor GetClothingSimulationInteractor() const

Get the current interactor for a clothing simulation, if the current simulation supports runtime interaction.

ForceClothNextUpdateTeleportAndReset
void ForceClothNextUpdateTeleportAndReset()

Used to indicate we should force 'teleport and reset' during the next call to UpdateClothState.  This can be used to reset it from a bad state or by a teleport where the old state is not important anymore.

ResetClothTeleportMode
void ResetClothTeleportMode()

Reset the teleport mode of a next update to 'Continuous'

IsClothingSimulationSuspended
bool IsClothingSimulationSuspended() const

Gets whether or not the clothing simulation is currently suspended

GetTeleportRotationThreshold
float32 GetTeleportRotationThreshold() const

Gets the teleportation rotation threshold.

**Returns**

Threshold in degrees.

GetTeleportDistanceThreshold
float32 GetTeleportDistanceThreshold() const

Gets the teleportation distance threshold.

**Returns**

Threshold value.

GetClothMaxDistanceScale
float32 GetClothMaxDistanceScale() const

Get/Set the max distance scale of clothing mesh vertices

---

## COMPONENTS \| ANIMATION

### GetAnimationMode

```
EAnimationMode GetAnimationMode()const
```

SetAnimationMode

### void SetAnimationMode

```
void SetAnimationMode(EAnimationMode InAnimationMode)
```

Below are the interface to control animation when animation mode, not blueprint mode

### GetPlayRate

```
float32 GetPlayRate()const
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

### SetPosition

```
void SetPosition(float32 InPos, bool bFireNotifies = true)
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

### SetPlayRate

```
void SetPlayRate(float32 Rate)
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

### Stop

```
void Stop()
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

### SetAnimation

```
void SetAnimation(UAnimationAsset NewAnimToPlay)
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

### PlayAnimation

```
void PlayAnimation(UAnimationAsset NewAnimToPlay, bool bLooping)
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

### GetPosition

```
float32 GetPosition()const
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

### Play

```
void Play(bool bLooping)
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

### OverrideAnimationData

```
void OverrideAnimationData(UAnimationAsset InAnimToPlay, bool bIsLooping = true, bool bIsPlaying = true, float32 Position = 0.000000, float32 PlayRate = 1.000000)
```

This overrides current AnimationData parameter in the SkeletalMeshComponent. This will serialize when the component serialize so it can be used during construction script. However note that this will override current existing data This can be useful if you'd like to make a blueprint with custom default animation per component This sets single player mode, which means you can't use AnimBlueprint with it

### IsPlaying

```
bool IsPlaying()const
```

Animation play functions * * These changes status of animation instance, which is transient data, which means it won't serialize with this component * Because of that reason, it is not safe to be used during construction script * Please use OverrideAnimationData for construction script. That will override AnimationData to be serialized

---

## COMPONENTS \| SKELETALMESH

### ToggleDisablePostProcessBlueprint

```
void ToggleDisablePostProcessBlueprint()
```

Toggles whether the post process blueprint will run for this component

### GetDisableAnimCurves

```
bool GetDisableAnimCurves()const
```

GetDefaultAnimatingRig

### TSoftObjectPtr<UObject> GetDefaultAnimatingRig

```
TSoftObjectPtr<UObject> GetDefaultAnimatingRig()const ResetAllowedAnimCurveEvaluation
```

void ResetAllowedAnimCurveEvaluation()

### By reset, it will allow all the curves to be evaluated

```
By reset, it will allow all the curves to be evaluated
```

SetUpdateAnimationInEditor

### void SetUpdateAnimationInEditor

```
void SetUpdateAnimationInEditor(bool NewUpdateState)
```

Sets whether or not to force tick component in order to update animation and refresh transform for this component This is supported only in the editor

### AllowAnimCurveEvaluation

```
void AllowAnimCurveEvaluation(FName NameOfCurve, bool bAllow)
```

SetAllowedAnimCurvesEvaluation

### void SetAllowedAnimCurvesEvaluation

```
void SetAllowedAnimCurvesEvaluation(TArray<FName> List, bool bAllow)
```

resets, and then only allow the following list to be allowed/disallowed

### GetMorphTarget

```
float32 GetMorphTarget(FName MorphTargetName)const
```

Get Morph target with given name

### SetMorphTarget

```
void SetMorphTarget(FName MorphTargetName, float32 Value, bool bRemoveZeroWeight = true)
```

Set Morph Target with Name and Value(0-1)

**Parameters**

bRemoveZeroWeight
bool

: Used by editor code when it should stay in the active list with zero weight

SnapshotPose
void SnapshotPose(
FPoseSnapshot& 	Snapshot
	)

Takes a snapshot of this skeletal mesh component's pose and saves it to the specified snapshot.  The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in LOD1 will use the reference pose

GetPostProcessInstance
UAnimInstance GetPostProcessInstance() const

Returns the active post process instance is one is available. This is set on the mesh that this component is using, and is evaluated immediately after the main instance.

SetDisableAnimCurves
void SetDisableAnimCurves(
bool 	bInDisableAnimCurves
	)
ClearMorphTargets
void ClearMorphTargets()

Clear all Morph Target that are set to this mesh

SetAnimClass
void SetAnimClass(
UClass 	NewClass
	)

Set the anim instance class. Clears and re-initializes the anim instance with the new class and sets animation mode to 'AnimationBlueprint'

GetAnimInstance
UAnimInstance GetAnimInstance() const

Returns the animation instance that is driving the class (if available). This is typically an instance of the class set as AnimBlueprintGeneratedClass (generated by an animation blueprint) Since this instance is transient, it is not safe to be used during construction script

GetAllowRigidBodyAnimNode
bool GetAllowRigidBodyAnimNode() const
SetAllowRigidBodyAnimNode
void SetAllowRigidBodyAnimNode(
bool 	bInAllow,
bool 	bReinitAnim	 = 	true
	)

Sets whether or not to allow rigid body animation nodes for this component

SetUpdateClothInEditor
void SetUpdateClothInEditor(
bool 	NewUpdateState
	)

Sets whether or not to animate cloth in the editor. Requires Update Animation In Editor to also be true.  This is supported only in the editor

HasValidAnimationInstance
bool HasValidAnimationInstance() const

Returns whether there are any valid instances to run, currently this means whether we have have an animation instance or a post process instance available to process.

SetAllowClothActors
void SetAllowClothActors(
bool 	bInAllow
	)

Sets whether cloth assets should be created/simulated in this component.  This will update the conditional flag and you will want to call RecreateClothingActors for it to take effect.

**Parameters**

bInAllow
bool

Whether to allow the creation of cloth assets and simulation.

GetAllowedAnimCurveEvaluate
bool GetAllowedAnimCurveEvaluate() const
SetAllowAnimCurveEvaluation
void SetAllowAnimCurveEvaluation(
bool 	bInAllow
	)
GetClosestPointOnPhysicsAsset
bool GetClosestPointOnPhysicsAsset(
FVector 	WorldPosition,
FVector& 	ClosestWorldPosition,
FVector& 	Normal,
FName& 	BoneName,
float32& 	Distance
	) const

Given a world position, find the closest point on the physics asset. Note that this is independent of collision and welding. This is based purely on animation position

**Parameters**

WorldPosition
FVector

The point we want the closest point to (i.e. for all bodies in the physics asset, find the one that has a point closest to WorldPosition)

**Returns**

true if we found a closest point

GetAllowClothActors
bool GetAllowClothActors() const
ResetAnimInstanceDynamics
void ResetAnimInstanceDynamics(
ETeleportType 	InTeleportType	 = 	ETeleportType :: ResetPhysics
	)

Informs any active anim instances (main instance, linked instances, post instance) that a dynamics reset is required for example if a teleport occurs.

COMPONENTS|SKELETALMESH|ANIMATION BLUEPRINT LINKING
UnlinkAnimClassLayers
void UnlinkAnimClassLayers(
TSubclassOf<UAnimInstance> 	InClass
	)

Runs through all layer nodes, attempting to find layer nodes that are currently running the specified class, then resets each to its default value.  State sharing rules are as with SetLayerOverlay.  If InClass is null, does nothing.

LinkAnimGraphByTag
void LinkAnimGraphByTag(
FName 	InTag,
TSubclassOf<UAnimInstance> 	InClass
	)

Runs through all nodes, attempting to find linked instance by name/tag, then sets the class of each node if the tag matches

LinkAnimClassLayers
void LinkAnimClassLayers(
TSubclassOf<UAnimInstance> 	InClass
	)

Runs through all layer nodes, attempting to find layer nodes that are implemented by the specified class, then sets up a linked instance of the class for each.  Allocates one linked instance to run each of the groups specified in the class, so state is shared. If a layer is not grouped (ie. NAME_None), then state is not shared and a separate linked instance is allocated for each layer node.  If InClass is null, then all layers are reset to their defaults.

GetLinkedAnimGraphInstanceByTag
UAnimInstance GetLinkedAnimGraphInstanceByTag(
FName 	InTag
	) const

Returns the a tagged linked instance node. If no linked instances are found or none are tagged with the supplied name, this will return NULL.

GetLinkedAnimLayerInstanceByGroup
UAnimInstance GetLinkedAnimLayerInstanceByGroup(
FName 	InGroup
	) const

Gets the layer linked instance corresponding to the specified group

GetLinkedAnimLayerInstanceByClass
UAnimInstance GetLinkedAnimLayerInstanceByClass(
TSubclassOf<UAnimInstance> 	InClass
	) const

Gets the first layer linked instance corresponding to the specified class

---

## CUSTOMATTRIBUTES

GetFloatAttribute

### bool GetFloatAttribute

```
bool GetFloatAttribute(
```

FName 	BoneName,

FName 	AttributeName,

float32 	DefaultValue,

float32& 	OutValue,

ECustomBoneAttributeLookup 	LookupType	 = 	ECustomBoneAttributeLookup :: BoneOnly

)

Get float type attribute value.

**Parameters**

BoneName
FName

Name of the bone to retrieve try and retrieve the attribute from

AttributeName
FName

Name of the attribute to retrieve

DefaultValue
float32

In case the attribute could not be found

OutValue
float32&

Retrieved attribute value if found, otherwise is set to DefaultValue

LookupType
ECustomBoneAttributeLookup

Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)

**Returns**

Whether or not the atttribute was successfully retrieved

GetTransformAttribute_Ref
bool GetTransformAttribute_Ref(

FName 	BoneName,
FName 	AttributeName,
FTransform& 	OutValue,
ECustomBoneAttributeLookup 	LookupType	 = 	ECustomBoneAttributeLookup :: BoneOnly

)

Get FTransform type attribute value.

**Parameters**

BoneName
FName

Name of the bone to retrieve try and retrieve the attribute from

AttributeName
FName

Name of the attribute to retrieve

OutValue
FTransform&

(reference) Retrieved attribute value if found, otherwise is set to DefaultValue

LookupType
ECustomBoneAttributeLookup

Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)

**Returns**

Whether or not the atttribute was successfully retrieved

GetFloatAttribute_Ref
bool GetFloatAttribute_Ref(

FName 	BoneName,
FName 	AttributeName,
float32& 	OutValue,
ECustomBoneAttributeLookup 	LookupType	 = 	ECustomBoneAttributeLookup :: BoneOnly

)

Get float type attribute value.

**Parameters**

BoneName
FName

Name of the bone to retrieve try and retrieve the attribute from

AttributeName
FName

Name of the attribute to retrieve

OutValue
float32&

(reference) Retrieved attribute value if found, otherwise is set to DefaultValue

LookupType
ECustomBoneAttributeLookup

Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)

**Returns**

Whether or not the atttribute was successfully retrieved

GetTransformAttribute
bool GetTransformAttribute(

FName 	BoneName,
FName 	AttributeName,
FTransform 	DefaultValue,
FTransform& 	OutValue,
ECustomBoneAttributeLookup 	LookupType	 = 	ECustomBoneAttributeLookup :: BoneOnly

)

Get FTransform type attribute value.

**Parameters**

BoneName
FName

Name of the bone to retrieve try and retrieve the attribute from

AttributeName
FName

Name of the attribute to retrieve

OutValue
FTransform&

(reference) Retrieved attribute value if found, otherwise is set to DefaultValue

LookupType
ECustomBoneAttributeLookup

Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)

**Returns**

Whether or not the atttribute was successfully retrieved

GetIntegerAttribute_Ref
bool GetIntegerAttribute_Ref(

FName 	BoneName,
FName 	AttributeName,
int& 	OutValue,
ECustomBoneAttributeLookup 	LookupType	 = 	ECustomBoneAttributeLookup :: BoneOnly

)

Get integer type attribute value.

**Parameters**

BoneName
FName

Name of the bone to retrieve try and retrieve the attribute from

AttributeName
FName

Name of the attribute to retrieve

OutValue
int&

(reference) Retrieved attribute value if found, otherwise is set to DefaultValue

LookupType
ECustomBoneAttributeLookup

Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)

**Returns**

Whether or not the atttribute was successfully retrieved

GetStringAttribute
bool GetStringAttribute(

FName 	BoneName,
FName 	AttributeName,
FString 	DefaultValue,
FString& 	OutValue,
ECustomBoneAttributeLookup 	LookupType	 = 	ECustomBoneAttributeLookup :: BoneOnly

)

Get string type attribute value.

**Parameters**

BoneName
FName

Name of the bone to retrieve try and retrieve the attribute from

AttributeName
FName

Name of the attribute to retrieve

DefaultValue
FString

In case the attribute could not be found

OutValue
FString&

Retrieved attribute value if found, otherwise is set to DefaultValue

LookupType
ECustomBoneAttributeLookup

Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)

**Returns**

Whether or not the atttribute was successfully retrieved

GetStringAttribute_Ref
bool GetStringAttribute_Ref(

FName 	BoneName,
FName 	AttributeName,
FString& 	OutValue,
ECustomBoneAttributeLookup 	LookupType	 = 	ECustomBoneAttributeLookup :: BoneOnly

)

Get string type attribute value.

**Parameters**

BoneName
FName

Name of the bone to retrieve try and retrieve the attribute from

AttributeName
FName

Name of the attribute to retrieve

OutValue
FString&

(reference) Retrieved attribute value if found, otherwise is set to DefaultValue

LookupType
ECustomBoneAttributeLookup

Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)

**Returns**

Whether or not the atttribute was successfully retrieved

GetIntegerAttribute
bool GetIntegerAttribute(

FName 	BoneName,
FName 	AttributeName,
int 	DefaultValue,
int& 	OutValue,
ECustomBoneAttributeLookup 	LookupType	 = 	ECustomBoneAttributeLookup :: BoneOnly

)

Get integer type attribute value.

**Parameters**

BoneName
FName

Name of the bone to retrieve try and retrieve the attribute from

AttributeName
FName

Name of the attribute to retrieve

DefaultValue
int

In case the attribute could not be found

OutValue
int&

Retrieved attribute value if found, otherwise is set to DefaultValue

LookupType
ECustomBoneAttributeLookup

Determines how the attribute is retrieved from the specified BoneName (see ECustomBoneAttributeLookup)

**Returns**

Whether or not the atttribute was successfully retrieved

---

## PHYSICS

### SetAllMotorsAngularPositionDrive

```
void SetAllMotorsAngularPositionDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, bool bSkipCustomPhysicsType = false)
```

Enable or Disable AngularPositionDrive. If motor is in SLERP mode it will be turned on if either EnableSwingDrive OR EnableTwistDrive are enabled. In Twist and Swing mode the twist and the swing can be controlled individually.

### SetAllMotorsAngularVelocityDrive

```
void SetAllMotorsAngularVelocityDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, bool bSkipCustomPhysicsType = false)
```

Enable or Disable AngularVelocityDrive. If motor is in SLERP mode it will be turned on if either EnableSwingDrive OR EnableTwistDrive are enabled. In Twist and Swing mode the twist and the swing can be controlled individually.

### GetCurrentJointAngles

```
void GetCurrentJointAngles(FName InBoneName, float32& Swing1Angle, float32& TwistAngle, float32& Swing2Angle)
```

Gets the current Angular state for a named bone constraint

**Parameters**

InBoneName
FName

Name of bone to get constraint ranges for

Swing1Angle
float32&

current angular state of the constraint

TwistAngle
float32&

current angular state of the constraint

Swing2Angle
float32&

current angular state of the constraint

SetConstraintProfileForAll
void SetConstraintProfileForAll(
FName 	ProfileName,
bool 	bDefaultIfNotFound	 = 	false
	)

Sets the constraint profile properties (limits, motors, etc...) to match the constraint profile as defined in the physics asset for all constraints. If profile name is not found the joint is set to use the default constraint profile.

IsBodyGravityEnabled
bool IsBodyGravityEnabled(
FName 	BoneName
	)

Checks whether or not gravity is enabled on the given bone.  NAME_None indicates the root body should be queried.  If the bone name given is otherwise invalid, false is returned.

**Parameters**

BoneName
FName

The name of the bone to check.

**Returns**

True if gravity is enabled on the bone.

SetAllBodiesPhysicsBlendWeight
void SetAllBodiesPhysicsBlendWeight(
float32 	PhysicsBlendWeight,
bool 	bSkipCustomPhysicsType	 = 	false
	)
SetAllBodiesBelowPhysicsBlendWeight
void SetAllBodiesBelowPhysicsBlendWeight(
FName 	InBoneName,
float32 	PhysicsBlendWeight,
bool 	bSkipCustomPhysicsType	 = 	false,
bool 	bIncludeSelf	 = 	true
	)

Set all of the bones below passed in bone to be simulated

GetBoneMass
float32 GetBoneMass(
FName 	BoneName	 = 	NAME_None,
bool 	bScaleMass	 = 	true
	) const

Returns the mass (in kg) of the given bone

**Parameters**

BoneName
FName

Name of the body to return. 'None' indicates root body.

bScaleMass
bool

If true, the mass is scaled by the bone's MassScale.

AccumulateAllBodiesBelowPhysicsBlendWeight
void AccumulateAllBodiesBelowPhysicsBlendWeight(
FName 	InBoneName,
float32 	AddPhysicsBlendWeight,
bool 	bSkipCustomPhysicsType	 = 	false
	)

Accumulate AddPhysicsBlendWeight to physics blendweight for all of the bones below passed in bone to be simulated

SetEnablePhysicsBlending
void SetEnablePhysicsBlending(
bool 	bNewBlendPhysics
	)

Disable physics blending of bones

SetBodyNotifyRigidBodyCollision
void SetBodyNotifyRigidBodyCollision(
bool 	bNewNotifyRigidBodyCollision,
FName 	BoneName	 = 	NAME_None
	)

Changes the value of bNotifyRigidBodyCollision for a given body

**Parameters**

bNewNotifyRigidBodyCollision
bool

The value to assign to bNotifyRigidBodyCollision

BoneName
FName

Name of the body to turn hit notifies on/off. None implies root body

SetAllBodiesSimulatePhysics
void SetAllBodiesSimulatePhysics(
bool 	bNewSimulate
	)

Set bSimulatePhysics to true for all bone bodies. Does not change the component bSimulatePhysics flag.

SetConstraintProfile
void SetConstraintProfile(
FName 	JointName,
FName 	ProfileName,
bool 	bDefaultIfNotFound	 = 	false
	)

Sets the constraint profile properties (limits, motors, etc...) to match the constraint profile as defined in the physics asset. If profile name is not found the joint is set to use the default constraint profile.

SetAngularLimits
void SetAngularLimits(
FName 	InBoneName,
float32 	Swing1LimitAngle,
float32 	TwistLimitAngle,
float32 	Swing2LimitAngle
	)

Sets the Angular Motion Ranges for a named constraint

**Parameters**

InBoneName
FName

Name of bone to adjust constraint ranges for

Swing1LimitAngle
float32

Size of limit in degrees, 0 means locked, 180 means free

TwistLimitAngle
float32

Size of limit in degrees, 0 means locked, 180 means free

Swing2LimitAngle
float32

Size of limit in degrees, 0 means locked, 180 means free

GetConstraints
void GetConstraints(
bool 	bIncludesTerminated,
TArray<FConstraintInstanceAccessor>& 	OutConstraints
	)

Gets all the constraints

**Parameters**

OutConstraints
TArray<FConstraintInstanceAccessor>&

returned list of constraints matching the parameters

GetSkeletalCenterOfMass
FVector GetSkeletalCenterOfMass() const

Returns the center of mass of the skeletal mesh, instead of the root body's location

ResetAllBodiesSimulatePhysics
void ResetAllBodiesSimulatePhysics()

Allows you to reset bodies Simulate state based on where bUsePhysics is set to true in the BodySetup.

SetAllMotorsAngularDriveParams
void SetAllMotorsAngularDriveParams(
float32 	InSpring,
float32 	InDamping,
float32 	InForceLimit,
bool 	bSkipCustomPhysicsType	 = 	false
	)

Set Angular Drive motors params for all constraint instances

SetEnableGravityOnAllBodiesBelow
void SetEnableGravityOnAllBodiesBelow(
bool 	bEnableGravity,
FName 	BoneName,
bool 	bIncludeSelf	 = 	true
	)

Enables or disables gravity to all bodies below the given bone.  NAME_None indicates all bodies will be edited.  In that case, consider using UPrimitiveComponent::EnableGravity.

**Parameters**

bEnableGravity
bool

Whether gravity should be enabled or disabled.

BoneName
FName

The name of the top most bone.

bIncludeSelf
bool

Whether the bone specified should be edited.

FindConstraintBoneName
FName FindConstraintBoneName(
int 	ConstraintIndex
	)

Find Constraint Name from index

**Parameters**

ConstraintIndex
int

Index of constraint to look for

**Returns**

Constraint Joint Name

SetAllBodiesBelowLinearVelocity
void SetAllBodiesBelowLinearVelocity(
FName 	InBoneName,
FVector 	LinearVelocity,
bool 	bIncludeSelf	 = 	true
	)

set the linear velocity of the child bodies to match that of the given parent bone

GetConstraintsFromBody
void GetConstraintsFromBody(
FName 	BodyName,
bool 	bParentConstraints,
bool 	bChildConstraints,
bool 	bIncludesTerminated,
TArray<FConstraintInstanceAccessor>& 	OutConstraints
	)

Gets all the constraints attached to a body

**Parameters**

BodyName
FName

name of the body to get the attached constraints from

bParentConstraints
bool

return constraints where BodyName is the child of the constraint

bChildConstraints
bool

return constraints where BodyName is the parent of the constraint

OutConstraints
TArray<FConstraintInstanceAccessor>&

returned list of constraints matching the parameters

SetNotifyRigidBodyCollisionBelow
void SetNotifyRigidBodyCollisionBelow(
bool 	bNewNotifyRigidBodyCollision,
FName 	BoneName	 = 	NAME_None,
bool 	bIncludeSelf	 = 	true
	)

Changes the value of bNotifyRigidBodyCollision on all bodies below a given bone

**Parameters**

bNewNotifyRigidBodyCollision
bool

The value to assign to bNotifyRigidBodyCollision

BoneName
FName

Name of the body to turn hit notifies on (and below)

bIncludeSelf
bool

Whether to modify the given body (useful for roots with multiple children)

SetPhysicsBlendWeight
void SetPhysicsBlendWeight(
float32 	PhysicsBlendWeight
	)

This is global set up for setting physics blend weight This does multiple things automatically If PhysicsBlendWeight == 1.f, it will enable Simulation, and if PhysicsBlendWeight == 0.f, it will disable Simulation.  Also it will respect each body's setup, so if the body is fixed, it won't simulate. Vice versa So if you'd like all bodies to change manually, do not use this function, but SetAllBodiesPhysicsBlendWeight

GetConstraintByName
FConstraintInstanceAccessor GetConstraintByName(
FName 	ConstraintName,
bool 	bIncludesTerminated
	)

Gets a constraint by its name

**Parameters**

ConstraintName
FName

name of the constraint

GetBoneLinearVelocity
FVector GetBoneLinearVelocity(
FName 	InBoneName
	)
BreakConstraint
void BreakConstraint(
FVector 	Impulse,
FVector 	HitLocation,
FName 	InBoneName
	)

Break a constraint off a Gore mesh.

**Parameters**

Impulse
FVector

vector of impulse

HitLocation
FVector

location of the hit

InBoneName
FName

Name of bone to break constraint for

SetAllBodiesBelowPhysicsDisabled
void SetAllBodiesBelowPhysicsDisabled(
FName 	InBoneName,
bool 	bDisabled,
bool 	bIncludeSelf	 = 	true
	)

[WARNING: Chaos Only] Set all of the bones below passed in bone to be disabled or not for the associated physics solver Bodies will not be colliding or be part of the physics simulation.  This is different from SetAllBodiesBelowSimulatePhysics that changes bodies to Kinematic/simulated

SetAllBodiesBelowSimulatePhysics
void SetAllBodiesBelowSimulatePhysics(
FName 	InBoneName,
bool 	bNewSimulate,
bool 	bIncludeSelf	 = 	true
	)

Set all of the bones below passed in bone to be simulated

SetEnableBodyGravity
void SetEnableBodyGravity(
bool 	bEnableGravity,
FName 	BoneName
	)

Enables or disables gravity for the given bone.  NAME_None indicates the root body will be edited.  If the bone name given is otherwise invalid, nothing happens.

**Parameters**

bEnableGravity
bool

Whether gravity should be enabled or disabled.

BoneName
FName

The name of the bone to modify.

TermBodiesBelow
void TermBodiesBelow(
FName 	ParentBoneName
	)

Terminate physics on all bodies below the named bone, effectively disabling collision forever. If you terminate, you won't be able to re-init later.

AddImpulseToAllBodiesBelow
void AddImpulseToAllBodiesBelow(
FVector 	Impulse,
FName 	BoneName	 = 	NAME_None,
bool 	bVelChange	 = 	false,
bool 	bIncludeSelf	 = 	true
	)

Add impulse to all single rigid bodies below. Good for one time instant burst.

**Parameters**

Impulse
FVector

Magnitude and direction of impulse to apply.

BoneName
FName

If a SkeletalMeshComponent, name of body to apply impulse to. 'None' indicates root body.

bVelChange
bool

If true, the Strength is taken as a change in velocity instead of an impulse (ie. mass will have no effect).

bIncludeSelf
bool

If false, Force is only applied to bodies below but not given bone name.

AddForceToAllBodiesBelow
void AddForceToAllBodiesBelow(
FVector 	Force,
FName 	BoneName	 = 	NAME_None,
bool 	bAccelChange	 = 	false,
bool 	bIncludeSelf	 = 	true
	)

Add a force to all rigid bodies below.  This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.

**Parameters**

Force
FVector

Force vector to apply. Magnitude indicates strength of force.

BoneName
FName

If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body.

bAccelChange
bool

If true, Force is taken as a change in acceleration instead of a physical force (i.e. mass will have no effect).

bIncludeSelf
bool

If false, Force is only applied to bodies below but not given bone name.

---

## FUNCTIONS

### GetDisablePostProcessBlueprint

```
bool GetDisablePostProcessBlueprint()const
```

Gets whether the post process blueprint is currently disabled for this component

### SetDefaultAnimatingRigOverride

```
void SetDefaultAnimatingRigOverride(TSoftObjectPtr<UObject> InAnimatingRig)
```

GetbLocalSpaceSimulation

### bool GetbLocalSpaceSimulation

```
bool GetbLocalSpaceSimulation()const GetDefaultAnimatingRigOverride
```

TSoftObjectPtr<UObject> GetDefaultAnimatingRigOverride() const

### GetAnimClass

```
const TSubclassOf<UAnimInstance>& GetAnimClass()const
```

GetbDisablePostProcessBlueprint

### bool GetbDisablePostProcessBlueprint

```
bool GetbDisablePostProcessBlueprint()const SetbDisablePostProcessBlueprint
```

void SetbDisablePostProcessBlueprint(

### bool 	Value

```
bool 	Value 	)
```

SetbUpdateOverlapsOnAnimationFinalize

### void SetbUpdateOverlapsOnAnimationFinalize

```
void SetbUpdateOverlapsOnAnimationFinalize(bool Value)
```

GetbEnablePhysicsOnDedicatedServer

### bool GetbEnablePhysicsOnDedicatedServer

```
bool GetbEnablePhysicsOnDedicatedServer()const SetbEnablePhysicsOnDedicatedServer
```

void SetbEnablePhysicsOnDedicatedServer(

### bool 	Value

```
bool 	Value 	)
```

GetbUpdateJointsFromAnimation

### bool GetbUpdateJointsFromAnimation

```
bool GetbUpdateJointsFromAnimation()const SetbUpdateJointsFromAnimation
```

void SetbUpdateJointsFromAnimation(

### bool 	Value

```
bool 	Value 	)
```

GetbAllowClothActors

### bool GetbAllowClothActors

```
bool GetbAllowClothActors()const SetbAllowClothActors
```

void SetbAllowClothActors(

### bool 	Value

```
bool 	Value 	)
```

GetbDisableClothSimulation

### bool GetbDisableClothSimulation

```
bool GetbDisableClothSimulation()const SetbDisableClothSimulation
```

void SetbDisableClothSimulation(

### bool 	Value

```
bool 	Value 	)
```

SetbDisableRigidBodyAnimNode

### void SetbDisableRigidBodyAnimNode

```
void SetbDisableRigidBodyAnimNode(bool Value)
```

SetbAllowAnimCurveEvaluation

### void SetbAllowAnimCurveEvaluation

```
void SetbAllowAnimCurveEvaluation(bool Value)
```

GetbCollideWithEnvironment

### bool GetbCollideWithEnvironment

```
bool GetbCollideWithEnvironment()const SetbCollideWithEnvironment
```

void SetbCollideWithEnvironment(

### bool 	Value

```
bool 	Value 	)
```

GetbCollideWithAttachedChildren

### bool GetbCollideWithAttachedChildren

```
bool GetbCollideWithAttachedChildren()const SetbCollideWithAttachedChildren
```

void SetbCollideWithAttachedChildren(

### bool 	Value

```
bool 	Value 	)
```

GetbForceCollisionUpdate

### bool GetbForceCollisionUpdate

```
bool GetbForceCollisionUpdate()const SetbForceCollisionUpdate
```

void SetbForceCollisionUpdate(

### bool 	Value

```
bool 	Value 	)
```

SetDisablePostProcessBlueprint

### void SetDisablePostProcessBlueprint

```
void SetDisablePostProcessBlueprint(bool bInDisablePostProcess)
```

Sets whether the post process blueprint is currently running for this component.  If it is not currently running, and is set to run, the instance will be reinitialized

### SetbLocalSpaceSimulation

```
void SetbLocalSpaceSimulation(bool Value)
```

GetbResetAfterTeleport

### bool GetbResetAfterTeleport

```
bool GetbResetAfterTeleport()const SetbResetAfterTeleport
```

void SetbResetAfterTeleport(

### bool 	Value

```
bool 	Value 	)
```

GetbDeferKinematicBoneUpdate

### bool GetbDeferKinematicBoneUpdate

```
bool GetbDeferKinematicBoneUpdate()const SetbDeferKinematicBoneUpdate
```

void SetbDeferKinematicBoneUpdate(

### bool 	Value

```
bool 	Value 	)
```

GetbNoSkeletonUpdate

### bool GetbNoSkeletonUpdate

```
bool GetbNoSkeletonUpdate()const SetbNoSkeletonUpdate
```

void SetbNoSkeletonUpdate(

### bool 	Value

```
bool 	Value 	)
```

GetbPauseAnims

### bool GetbPauseAnims

```
bool GetbPauseAnims()const SetbPauseAnims
```

void SetbPauseAnims(

### bool 	Value

```
bool 	Value 	)
```

SetbUseRefPoseOnInitAnim

### void SetbUseRefPoseOnInitAnim

```
void SetbUseRefPoseOnInitAnim(bool Value)
```

GetbEnablePerPolyCollision

### bool GetbEnablePerPolyCollision

```
bool GetbEnablePerPolyCollision()const SetbEnablePerPolyCollision
```

void SetbEnablePerPolyCollision(

### bool 	Value

```
bool 	Value 	)
```

GetbIncludeComponentLocationIntoBounds

### bool GetbIncludeComponentLocationIntoBounds

```
bool GetbIncludeComponentLocationIntoBounds()const SetbIncludeComponentLocationIntoBounds
```

void SetbIncludeComponentLocationIntoBounds(

### bool 	Value

```
bool 	Value 	)
```

GetbPropagateCurvesToSlaves

### bool GetbPropagateCurvesToSlaves

```
bool GetbPropagateCurvesToSlaves()const SetbPropagateCurvesToSlaves
```

void SetbPropagateCurvesToSlaves(

### bool 	Value

```
bool 	Value 	)
```

GetbSkipKinematicUpdateWhenInterpolating

### bool GetbSkipKinematicUpdateWhenInterpolating

```
bool GetbSkipKinematicUpdateWhenInterpolating()const SetbSkipKinematicUpdateWhenInterpolating
```

void SetbSkipKinematicUpdateWhenInterpolating(

### bool 	Value

```
bool 	Value 	)
```

GetbSkipBoundsUpdateWhenInterpolating

### bool GetbSkipBoundsUpdateWhenInterpolating

```
bool GetbSkipBoundsUpdateWhenInterpolating()const SetbSkipBoundsUpdateWhenInterpolating
```

void SetbSkipBoundsUpdateWhenInterpolating(

### bool 	Value

```
bool 	Value 	)
```

SetbUpdateAnimationInEditor

### void SetbUpdateAnimationInEditor

```
void SetbUpdateAnimationInEditor(bool Value)
```

SetbUpdateClothInEditor

### void SetbUpdateClothInEditor

```
void SetbUpdateClothInEditor(bool Value)
```

SetbOverrideDefaultAnimatingRig

### void SetbOverrideDefaultAnimatingRig

```
void SetbOverrideDefaultAnimatingRig(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static USkeletalMeshComponent USkeletalMeshComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USkeletalMeshComponent USkeletalMeshComponent::GetOrCreate

```
static USkeletalMeshComponent USkeletalMeshComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USkeletalMeshComponent USkeletalMeshComponent::Create

```
static USkeletalMeshComponent USkeletalMeshComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USkeletalMeshComponent::StaticClass

```
static UClass USkeletalMeshComponent::StaticClass()
```
