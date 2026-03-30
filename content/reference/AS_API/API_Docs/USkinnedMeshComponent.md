# USkinnedMeshComponent

**Visibility:** public

## Inheritance

UMeshComponent → USkinnedMeshComponent → UPoseableMeshComponent → USkeletalMeshComponent

## Description

Skinned mesh component that supports bone skinned mesh rendering.  This class does not support animation.

### See also

- USkeletalMeshComponent

## COMPONENTS \| SKINNEDMESH

### CurrentSkinWeightProfileName

```
const FName CurrentSkinWeightProfileName
```

Return the name of the Skin Weight Profile that is currently set otherwise returns 'None'

NumLODs

### NumLODs

```
const int NumLODs
```

Get the number of LODs on this component

NumBones

### NumBones

```
const int NumBones
```

Returns the number of bones in the skeleton.

### ForcedLOD

```
int ForcedLOD
```

Get ForcedLodModel of the mesh component. Note that the actual forced LOD level is the return value minus one and zero means no forced LOD

---

## DEFORMER

### MeshDeformer

```
UMeshDeformer MeshDeformer
```

If set then the MeshDeformer will be used instead of the fixed animation pipeline.

---

## LIGHTING

### bCastCapsuleDirectShadow

```
bool bCastCapsuleDirectShadow
```

Whether to use the capsule representation (when present) from a skeletal mesh's ShadowPhysicsAsset for direct shadowing from lights.  This type of shadowing is approximate but handles extremely wide area shadowing well.  The softness of the shadow depends on the light's LightSourceAngle / SourceRadius.  This flag will force bCastInsetShadow to be enabled.

### bCastCapsuleIndirectShadow

```
bool bCastCapsuleIndirectShadow
```

Whether to use the capsule representation (when present) from a skeletal mesh's ShadowPhysicsAsset for shadowing indirect lighting (from lightmaps or skylight).

### CapsuleIndirectShadowMinVisibility

```
float32 CapsuleIndirectShadowMinVisibility
```

Controls how dark the capsule indirect shadow can be.

---

## LOD

### ForcedLodModel

```
int ForcedLodModel MinLodModel int MinLodModel
```

This is the min LOD that this component will use.  (e.g. if set to 2 then only 2+ LOD Models will be used.) This is useful to set on meshes which are known to be a certain distance away and still want to have better LODs when zoomed in on them.

### bOverrideMinLod

```
bool bOverrideMinLod
```

Whether we should use the min lod specified in MinLodModel for this component instead of the min lod in the mesh

### bIgnoreMasterPoseComponentLOD

```
bool bIgnoreMasterPoseComponentLOD
```

Flag that when set will ensure UpdateLODStatus will not take the MasterPoseComponent's current LOD in consideration when determining the correct LOD level (this requires MasterPoseComponent's LOD to always be >= determined LOD otherwise bone transforms could be missing

---

## MESH

### SkinCacheUsage

```
TArray<ESkinCacheUsage> SkinCacheUsage
```

How this Component's LOD uses the skin cache feature. Auto will defer to the asset's (SkeletalMesh) option. If Ray Tracing is enabled, will imply Enabled

### SkeletalMesh

```
const USkeletalMesh SkeletalMesh
```

The skeletal mesh used by this component.

---

## OPTIMIZATION

### bRenderStatic

```
bool bRenderStatic
```

If true, render as static in reference pose.

### bEnableUpdateRateOptimizations

```
bool bEnableUpdateRateOptimizations
```

if TRUE, Owner will determine how often animation will be updated and evaluated. See AnimUpdateRateTick() This allows to skip frames for performance. (For example based on visibility and size on screen).

### bConsiderAllBodiesForBounds

```
bool bConsiderAllBodiesForBounds
```

If true, when updating bounds from a PhysicsAsset, consider all BodySetups, not just those flagged with bConsiderForBounds.

### VisibilityBasedAnimTickOption

```
EVisibilityBasedAnimTickOption VisibilityBasedAnimTickOption
```

This is tick animation frequency option based on this component rendered or not or using montage You can change this default value in the INI file Mostly related with performance

### bComponentUseFixedSkelBounds

```
bool bComponentUseFixedSkelBounds
```

When true, skip using the physics asset etc. and always use the fixed bounds defined in the SkeletalMesh.

### bDisplayDebugUpdateRateOptimizations

```
bool bDisplayDebugUpdateRateOptimizations
```

Enable on screen debugging of update rate optimization.  Red = Skipping 0 frames, Green = skipping 1 frame, Blue = skipping 2 frames, black = skipping more than 2 frames.  @todo: turn this into a console command.

---

## PHYSICS

### PhysicsAssetOverride

```
UPhysicsAsset PhysicsAssetOverride
```

PhysicsAsset is set in SkeletalMesh by default, but you can override with this value

---

## RENDERING

### bSyncAttachParentLOD

```
bool bSyncAttachParentLOD
```

If true, this component uses its parents LOD when attached if available ForcedLOD can override this change. By default, it will use parent LOD.

---

## SKELETALMESH

### bPerBoneMotionBlur

```
bool bPerBoneMotionBlur
```

If true, use per-bone motion blur on this skeletal mesh (requires additional rendering, can be disabled to save performance).

### bDisableMorphTarget

```
bool bDisableMorphTarget
```

Disable Morphtarget for this component.

### StreamingDistanceMultiplier

```
float32 StreamingDistanceMultiplier
```

Allows adjusting the desired streaming distance of streaming textures that uses UV 0.  1.0 is the default, whereas a higher value makes the textures stream in sooner from far away.  A lower value (0.0-1.0) makes the textures stream in later (you have to be closer).  Value can be < 0 (from legcay content, or code changes)

### bUseBoundsFromMasterPoseComponent

```
bool bUseBoundsFromMasterPoseComponent
```

When true, we will just using the bounds from our MasterPoseComponent.  This is useful for when we have a Mesh Parented to the main SkelMesh (e.g. outline mesh or a full body overdraw effect that is toggled) that is always going to be the same bounds as parent.  We want to do no calculations in that case.

---

## COMPONENTS \| SKINNEDMESH

### ShowAllMaterialSections

```
void ShowAllMaterialSections(int LODIndex)
```

Clear any material visibility modifications made by ShowMaterialSection

### ClearSkinWeightOverride

```
void ClearSkinWeightOverride(int LODIndex)
```

Clear any applied skin weight override

### ClearSkinWeightProfile

```
void ClearSkinWeightProfile()
```

Clear the Skin Weight Profile from this component, in case it is set

### ClearVertexColorOverride

```
void ClearVertexColorOverride(int LODIndex)
```

Clear any applied vertex color override

### FindClosestBone_K2

```
FName FindClosestBone_K2(FVector TestLocation, FVector& BoneLocation, float32 IgnoreScale = 0.000000, bool bRequirePhysicsAsset = false)const
```

finds the closest bone to the given location

**Parameters**

TestLocation
FVector

the location to test against

BoneLocation
FVector&

(optional, out) if specified, set to the world space location of the bone that was found, or (0,0,0) if no bone was found

IgnoreScale
float32

(optional) if specified, only bones with scaling larger than the specified factor are considered

bRequirePhysicsAsset
bool

(optional) if true, only bones with physics will be considered

**Returns**

the name of the bone that was found, or 'None' if no bone was found

GetBoneIndex
int GetBoneIndex(
FName 	BoneName
	) const

Find the index of bone by name. Looks in the current SkeletalMesh being used by this SkeletalMeshComponent.

**Parameters**

BoneName
FName

Name of bone to look up

**Returns**

Index of the named bone in the current SkeletalMesh. Will return INDEX_NONE if bone not found.

GetBoneName
FName GetBoneName(
int 	BoneIndex
	) const

Get Bone Name from index

**Parameters**

BoneIndex
int

Index of the bone

**Returns**

the name of the bone at the specified index

GetCurrentSkinWeightProfileName
FName GetCurrentSkinWeightProfileName() const

Return the name of the Skin Weight Profile that is currently set otherwise returns 'None'

GetDeltaTransformFromRefPose
FTransform GetDeltaTransformFromRefPose(
FName 	BoneName,
FName 	BaseName	 = 	NAME_None
	) const

Get delta transform from reference pose based on BaseNode.  This uses last frame up-to-date transform, so it will have a frame delay if you use this info in the AnimGraph

**Parameters**

BoneName
FName

Name of the bone

BaseName
FName

Name of the base bone - if none, it will use parent as a base

**Returns**

the delta transform from refpose in that given space (BaseName)

GetForcedLOD
int GetForcedLOD() const

Get ForcedLodModel of the mesh component. Note that the actual forced LOD level is the return value minus one and zero means no forced LOD

GetNumBones
int GetNumBones() const

Returns the number of bones in the skeleton.

GetNumLODs
int GetNumLODs() const

Get the number of LODs on this component

GetParentBone
FName GetParentBone(
FName 	BoneName
	) const

Get Parent Bone of the input bone

**Parameters**

BoneName
FName

Name of the bone

**Returns**

the name of the parent bone for the specified bone. Returns 'None' if the bone does not exist or it is the root bone

GetRefPosePosition
FVector GetRefPosePosition(
int 	BoneIndex
	) const

Gets the local-space position of a bone in the reference pose.

**Parameters**

BoneIndex
int

Index of the bone

**Returns**

Local space reference position

GetRefPoseTransform
FTransform GetRefPoseTransform(
int 	BoneIndex
	) const

Gets the local-space transform of a bone in the reference pose.

**Parameters**

BoneIndex
int

Index of the bone

**Returns**

Local space reference transform

GetSocketBoneName
FName GetSocketBoneName(
FName 	InSocketName
	) const

Returns bone name linked to a given named socket on the skeletal mesh component.  If you're unsure to deal with sockets or bones names, you can use this function to filter through, and always return the bone name.

**Returns**

bone name

GetTwistAndSwingAngleOfDeltaRotationFromRefPose
bool GetTwistAndSwingAngleOfDeltaRotationFromRefPose(
FName 	BoneName,
float32& 	OutTwistAngle,
float32& 	OutSwingAngle
	) const

Get Twist and Swing Angle in Degree of Delta Rotation from Reference Pose in Local space

First this function gets rotation of current, and rotation of ref pose in local space, and And gets twist/swing angle value from refpose aligned.

**Parameters**

BoneName
FName

Name of the bone

OutTwistAngle
float32&

TwistAngle in degree

OutSwingAngle
float32&

SwingAngle in degree

**Returns**

true if succeed. False otherwise. Often due to incorrect bone name.

GetVertexOffsetUsage
int GetVertexOffsetUsage(
int 	LODIndex
	) const
HideBoneByName
void HideBoneByName(
FName 	BoneName,
EPhysBodyOp 	PhysBodyOption
	)

Hides the specified bone with name.  Currently this just enforces a scale of 0 for the hidden bones.  Compared to HideBone By Index - This keeps track of list of bones and update when LOD changes

**Parameters**

BoneName
FName

Name of bone to hide

PhysBodyOption
EPhysBodyOp

Option for physics bodies that attach to the bones to be hidden

IsBoneHiddenByName
bool IsBoneHiddenByName(
FName 	BoneName
	)

Determines if the specified bone is hidden.

**Parameters**

BoneName
FName

Name of bone to check

**Returns**

true if hidden

IsMaterialSectionShown
bool IsMaterialSectionShown(
int 	MaterialID,
int 	LODIndex
	)

Returns whether a specific material section is currently hidden on this component (by using ShowMaterialSection)

IsUsingSkinWeightProfile
bool IsUsingSkinWeightProfile() const

Check whether or not a Skin Weight Profile is currently set

SetSkinWeightProfile
bool SetSkinWeightProfile(
FName 	InProfileName
	)

Setup an override Skin Weight Profile for this component

SetVertexColorOverride_LinearColor
void SetVertexColorOverride_LinearColor(
int 	LODIndex,
TArray<FLinearColor> 	VertexColors
	)

Allow override of vertex colors on a per-component basis, taking array of Blueprint-friendly LinearColors.

SetSkeletalMesh
void SetSkeletalMesh(
USkeletalMesh 	NewMesh,
bool 	bReinitPose	 = 	true
	)

Change the SkeletalMesh that is rendered for this Component. Will re-initialize the animation tree etc.

**Parameters**

NewMesh
USkeletalMesh

New mesh to set for this component

bReinitPose
bool

Whether we should keep current pose or reinitialize.

SetForcedLOD
void SetForcedLOD(
int 	InNewForcedLOD
	)

Set ForcedLodModel of the mesh component

**Parameters**

InNewForcedLOD
int

Set new ForcedLODModel that forces to set the incoming LOD. Range from [1, Max Number of LOD]. This will affect in the next tick update.

SetMasterPoseComponent
void SetMasterPoseComponent(
USkinnedMeshComponent 	NewMasterBoneComponent,
bool 	bForceUpdate	 = 	false
	)

Set MasterPoseComponent for this component

**Parameters**

NewMasterBoneComponent
USkinnedMeshComponent

New MasterPoseComponent

SetMeshDeformer
void SetMeshDeformer(
UMeshDeformer 	InMeshDeformer
	)

Change the MeshDeformer that is used for this Component.

**Parameters**

InMeshDeformer
UMeshDeformer

New mesh deformer to set for this component

SetMinLOD
void SetMinLOD(
int 	InNewMinLOD
	)

Set MinLodModel of the mesh component

**Parameters**

InNewMinLOD
int

Set new MinLodModel that make sure the LOD does not go below of this value. Range from [0, Max Number of LOD - 1]. This will affect in the next tick update.

SetPhysicsAsset
void SetPhysicsAsset(
UPhysicsAsset 	NewPhysicsAsset,
bool 	bForceReInit	 = 	false
	)

Override the Physics Asset of the mesh. It uses SkeletalMesh.PhysicsAsset, but if you'd like to override use this function

**Parameters**

NewPhysicsAsset
UPhysicsAsset

New PhysicsAsset

bForceReInit
bool

Force reinitialize

SetPostSkinningOffsets
void SetPostSkinningOffsets(
int 	LODIndex,
TArray<FVector> 	Offsets
	)
SetPreSkinningOffsets
void SetPreSkinningOffsets(
int 	LODIndex,
TArray<FVector> 	Offsets
	)
SetRenderStatic
void SetRenderStatic(
bool 	bNewValue
	)

Set whether this skinned mesh should be rendered as static mesh in a reference pose

UnloadSkinWeightProfile
void UnloadSkinWeightProfile(
FName 	InProfileName
	)

Unload a Skin Weight Profile's skin weight buffer (if created)

SetSkinWeightOverride
void SetSkinWeightOverride(
int 	LODIndex,
TArray<FSkelMeshSkinWeightInfo> 	SkinWeights
	)

Allow override of skin weights on a per-component basis.

TransformToBoneSpace
void TransformToBoneSpace(
FName 	BoneName,
FVector 	InPosition,
FRotator 	InRotation,
FVector& 	OutPosition,
FRotator& 	OutRotation
	) const

Transform a location/rotation from world space to bone relative space.  This is handy if you know the location in world space for a bone attachment, as AttachComponent takes location/rotation in bone-relative space.

**Parameters**

BoneName
FName

Name of bone

InPosition
FVector

Input position

InRotation
FRotator

Input rotation

OutPosition
FVector&

(out) Transformed position

OutRotation
FRotator&

(out) Transformed rotation

SetVertexOffsetUsage
void SetVertexOffsetUsage(
int 	LODIndex,
int 	Usage
	)
BoneIsChildOf
bool BoneIsChildOf(
FName 	BoneName,
FName 	ParentBoneName
	) const

Tests if BoneName is child of (or equal to) ParentBoneName.

**Parameters**

BoneName
FName

Name of the bone

**Returns**

true if child (strictly, not same). false otherwise Note

will return false if ChildBoneIndex is the same as ParentBoneIndex ie. must be strictly a child.

ShowMaterialSection
void ShowMaterialSection(
int 	MaterialID,
int 	SectionIndex,
bool 	bShow,
int 	LODIndex
	)

Allows hiding of a particular material (by ID) on this instance of a SkeletalMesh.

**Parameters**

MaterialID
int

Index of the material show/hide

bShow
bool

True to show the material, false to hide it

LODIndex
int

Index of the LOD to modify material visibility within

TransformFromBoneSpace
void TransformFromBoneSpace(
FName 	BoneName,
FVector 	InPosition,
FRotator 	InRotation,
FVector& 	OutPosition,
FRotator& 	OutRotation
	)

Transform a location/rotation in bone relative space to world space.

**Parameters**

BoneName
FName

Name of bone

InPosition
FVector

Input position

InRotation
FRotator

Input rotation

OutPosition
FVector&

(out) Transformed position

OutRotation
FRotator&

(out) Transformed rotation

UnHideBoneByName
void UnHideBoneByName(
FName 	BoneName
	)

UnHide the specified bone with name.  Currently this just enforces a scale of 0 for the hidden bones.  Compared to HideBone By Index - This keeps track of list of bones and update when LOD changes

**Parameters**

BoneName
FName

Name of bone to unhide

---

## LIGHTING

### SetCastCapsuleIndirectShadow

```
void SetCastCapsuleIndirectShadow(bool bNewValue)
```

SetCapsuleIndirectShadowMinVisibility

### void SetCapsuleIndirectShadowMinVisibility

```
void SetCapsuleIndirectShadowMinVisibility(float32 NewValue)
```

SetCastCapsuleDirectShadow

### void SetCastCapsuleDirectShadow

```
void SetCastCapsuleDirectShadow(bool bNewValue)
```

---

## FUNCTIONS

### GetMeshDeformer

```
UMeshDeformer GetMeshDeformer()const
```

GetbOverrideMinLod

### bool GetbOverrideMinLod

```
bool GetbOverrideMinLod()const SetbOverrideMinLod
```

void SetbOverrideMinLod(

### bool 	Value

```
bool 	Value 	)
```

GetbUseBoundsFromMasterPoseComponent

### bool GetbUseBoundsFromMasterPoseComponent

```
bool GetbUseBoundsFromMasterPoseComponent()const GetSkeletalMesh
```

USkeletalMesh GetSkeletalMesh() const

### SetbUseBoundsFromMasterPoseComponent

```
void SetbUseBoundsFromMasterPoseComponent(bool Value)
```

GetbDisableMorphTarget

### bool GetbDisableMorphTarget

```
bool GetbDisableMorphTarget()const SetbDisableMorphTarget
```

void SetbDisableMorphTarget(

### bool 	Value

```
bool 	Value 	)
```

GetbPerBoneMotionBlur

### bool GetbPerBoneMotionBlur

```
bool GetbPerBoneMotionBlur()const SetbPerBoneMotionBlur
```

void SetbPerBoneMotionBlur(

### bool 	Value

```
bool 	Value 	)
```

GetbComponentUseFixedSkelBounds

### bool GetbComponentUseFixedSkelBounds

```
bool GetbComponentUseFixedSkelBounds()const SetbComponentUseFixedSkelBounds
```

void SetbComponentUseFixedSkelBounds(

### bool 	Value

```
bool 	Value 	)
```

GetbConsiderAllBodiesForBounds

### bool GetbConsiderAllBodiesForBounds

```
bool GetbConsiderAllBodiesForBounds()const SetbConsiderAllBodiesForBounds
```

void SetbConsiderAllBodiesForBounds(

### bool 	Value

```
bool 	Value 	)
```

GetbSyncAttachParentLOD

### bool GetbSyncAttachParentLOD

```
bool GetbSyncAttachParentLOD()const SetbSyncAttachParentLOD
```

void SetbSyncAttachParentLOD(

### bool 	Value

```
bool 	Value 	)
```

GetbCastCapsuleDirectShadow

### bool GetbCastCapsuleDirectShadow

```
bool GetbCastCapsuleDirectShadow()const SetbCastCapsuleDirectShadow
```

void SetbCastCapsuleDirectShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbCastCapsuleIndirectShadow

### bool GetbCastCapsuleIndirectShadow

```
bool GetbCastCapsuleIndirectShadow()const SetbCastCapsuleIndirectShadow
```

void SetbCastCapsuleIndirectShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbEnableUpdateRateOptimizations

### bool GetbEnableUpdateRateOptimizations

```
bool GetbEnableUpdateRateOptimizations()const SetbEnableUpdateRateOptimizations
```

void SetbEnableUpdateRateOptimizations(

### bool 	Value

```
bool 	Value 	)
```

GetbDisplayDebugUpdateRateOptimizations

### bool GetbDisplayDebugUpdateRateOptimizations

```
bool GetbDisplayDebugUpdateRateOptimizations()const SetbDisplayDebugUpdateRateOptimizations
```

void SetbDisplayDebugUpdateRateOptimizations(

### bool 	Value

```
bool 	Value 	)
```

GetbRenderStatic

### bool GetbRenderStatic

```
bool GetbRenderStatic()const SetbRenderStatic
```

void SetbRenderStatic(

### bool 	Value

```
bool 	Value 	)
```

GetbIgnoreMasterPoseComponentLOD

### bool GetbIgnoreMasterPoseComponentLOD

```
bool GetbIgnoreMasterPoseComponentLOD()const SetbIgnoreMasterPoseComponentLOD
```

void SetbIgnoreMasterPoseComponentLOD(

### bool 	Value

```
bool 	Value 	)
```

GetCapsuleIndirectShadowMinVisibility

### const float32& GetCapsuleIndirectShadowMinVisibility

```
const float32& GetCapsuleIndirectShadowMinVisibility()const STATIC FUNCTIONS
```

Get

### static USkinnedMeshComponent USkinnedMeshComponent::Get

```
static USkinnedMeshComponent USkinnedMeshComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static USkinnedMeshComponent USkinnedMeshComponent::GetOrCreate

```
static USkinnedMeshComponent USkinnedMeshComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static USkinnedMeshComponent USkinnedMeshComponent::Create

```
static USkinnedMeshComponent USkinnedMeshComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass USkinnedMeshComponent::StaticClass

```
static UClass USkinnedMeshComponent::StaticClass()
```
