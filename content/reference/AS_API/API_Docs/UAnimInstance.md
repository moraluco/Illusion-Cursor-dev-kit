# UAnimInstance

**Visibility:** public

## Inheritance

UObject → UAnimInstance → UAnimPreviewAttacheInstance → UAnimSequencerInstance → UAnimSharingAdditiveInstance → UAnimSharingStateInstance

## Description

and 4 other children

## ANIMATION

DeltaSeconds

### DeltaSeconds

```
const float32 DeltaSeconds
```

Get the current delta time

### OwningComponent

```
const USkeletalMeshComponent OwningComponent
```

Returns the skeletal mesh component that has created this AnimInstance

### OwningActor

```
const AActor OwningActor
```

Returns the owning actor of this AnimInstance

---

## MONTAGE

### CurrentActiveMontage

```
const UAnimMontage CurrentActiveMontage
```

Get a current Active Montage in this AnimInstance.  Note that there might be multiple Active at the same time. This will only return the first active one it finds. *

---

## NOTIFIES

### PropagateNotifiesToLinkedInstances

```
bool PropagateNotifiesToLinkedInstances
```

Get whether to propagate notifies to any linked anim instances

### ReceiveNotifiesFromLinkedInstances

```
bool ReceiveNotifiesFromLinkedInstances
```

Get whether to process notifies from any linked anim instances

---

## VARIABLES

### OnMontageStarted

```
FOnMontageStartedMCDelegate OnMontageStarted
```

Called when a montage has started

### OnAllMontageInstancesEnded

```
FOnAllMontageInstancesEndedMCDelegate OnAllMontageInstancesEnded
```

Called when all Montage instances have ended.

### OnMontageEnded

```
FOnMontageEndedMCDelegate OnMontageEnded
```

Called when a montage has ended, whether interrupted or finished

### OnMontageBlendingOut

```
FOnMontageBlendingOutStartedMCDelegate OnMontageBlendingOut
```

Called when a montage starts blending out, whether interrupted or finished

---

## ANIMATION

### GetOwningActor

```
AActor GetOwningActor()const
```

Returns the owning actor of this AnimInstance

### GetOwningComponent

```
USkeletalMeshComponent GetOwningComponent()const
```

Returns the skeletal mesh component that has created this AnimInstance

### GetDeltaSeconds

```
float32 GetDeltaSeconds()const
```

Get the current delta time

### TryGetPawnOwner

```
APawn TryGetPawnOwner()const
```

kismet event functions

### StopSlotAnimation

```
void StopSlotAnimation(float32 InBlendOutTime = 0.250000, FName SlotNodeName = NAME_None)
```

Stops currently playing slot animation slot or all

### IsPlayingSlotAnimation

```
bool IsPlayingSlotAnimation(const UAnimSequenceBase Asset, FName SlotNodeName)const
```

Return true if it's playing the slot animation

### CalculateDirection

```
float32 CalculateDirection(FVector Velocity, FRotator BaseRotation)const
```

ClearMorphTargets

### void ClearMorphTargets

```
void ClearMorphTargets()
```

Clears the current morph targets.

### GetActiveCurveNames

```
void GetActiveCurveNames(EAnimCurveType CurveType, TArray<FName>& OutNames)const
```

This returns last up-to-date list of active curve names

### GetAllCurveNames

```
void GetAllCurveNames(TArray<FName>& OutNames)const
```

This returns all curve names

PlaySlotAnimationAsDynamicMontage

### UAnimMontage PlaySlotAnimationAsDynamicMontage

```
UAnimMontage PlaySlotAnimationAsDynamicMontage(
```

UAnimSequenceBase 	Asset,

FName 	SlotNodeName,

float32 	BlendInTime	 = 	0.250000,

### float32 	BlendOutTime	 = 	0.250000,

```
float32 	BlendOutTime	 = 	0.250000, float32 	InPlayRate	 = 	1.000000, int 	LoopCount	 = 	1, float32 	BlendOutTriggerTime	 = 	- 1.000000, float32 	InTimeToStartMontageAt	 = 	0.000000
```

)

### Play normal animation asset on the slot node by creating a dynamic UAnimMontage. You can only play one asset

```
Play normal animation asset on the slot node by creating a dynamic UAnimMontage. You can only play one asset(whether montage or animsequence)at a time per SlotGroup.
```

SetRootMotionMode

### void SetRootMotionMode

```
void SetRootMotionMode(ERootMotionMode Value)
```

### RootMotionMode

```
Set RootMotionMode
```

PlaySlotAnimationAsDynamicMontage_WithBlendArgs UAnimMontage PlaySlotAnimationAsDynamicMontage_WithBlendArgs(

UAnimSequenceBase 	Asset,

FName 	SlotNodeName,

FAlphaBlendArgs 	BlendIn,

### FAlphaBlendArgs 	BlendOut,

```
FAlphaBlendArgs 	BlendOut, float32 	InPlayRate	 = 	1.000000, int 	LoopCount	 = 	1, float32 	BlendOutTriggerTime	 = 	- 1.000000, float32 	InTimeToStartMontageAt	 = 	0.000000
```

)

### Play normal animation asset on the slot node by creating a dynamic UAnimMontage with blend in arguments. You can only play one asset

```
Play normal animation asset on the slot node by creating a dynamic UAnimMontage with blend in arguments. You can only play one asset(whether montage or animsequence)at a time per SlotGroup.
```

GetCurveValue

### float32 GetCurveValue

```
float32 GetCurveValue(FName CurveName)const
```

Returns the value of a named curve.

### SetMorphTarget

```
void SetMorphTarget(FName MorphTargetName, float32 Value)
```

Sets a morph target to a certain weight.

### ResetDynamics

```
void ResetDynamics(ETeleportType InTeleportType)
```

Reset any dynamics running simulation-style updates (e.g. on teleport, time skip etc.)

PlaySlotAnimationAsDynamicMontage_WithBlendSettings

### UAnimMontage PlaySlotAnimationAsDynamicMontage_WithBlendSettings

```
UAnimMontage PlaySlotAnimationAsDynamicMontage_WithBlendSettings(
```

UAnimSequenceBase 	Asset,

FName 	SlotNodeName,

FMontageBlendSettings 	BlendInSettings,

### FMontageBlendSettings 	BlendOutSettings,

```
FMontageBlendSettings 	BlendOutSettings, float32 	InPlayRate	 = 	1.000000, int 	LoopCount	 = 	1, float32 	BlendOutTriggerTime	 = 	- 1.000000, float32 	InTimeToStartMontageAt	 = 	0.000000
```

)

### Play normal animation asset on the slot node by creating a dynamic UAnimMontage with blend in settings. You can only play one asset

```
Play normal animation asset on the slot node by creating a dynamic UAnimMontage with blend in settings. You can only play one asset(whether montage or animsequence)at a time per SlotGroup.
```

### ANIMATION BLUEPRINT LINKING

```
ANIMATION BLUEPRINT LINKING GetLinkedAnimLayerInstancesByGroup void GetLinkedAnimLayerInstancesByGroup(FName InGroup, TArray<UAnimInstance>& OutLinkedInstances)const
```

Runs through all nodes, attempting to find all distinct layer linked instances in the group

### UnlinkAnimClassLayers

```
void UnlinkAnimClassLayers(TSubclassOf<UAnimInstance> InClass)
```

Runs through all layer nodes, attempting to find layer nodes that are currently running the specified class, then resets each to its default value.  State sharing rules are as with SetLayerOverlay.  If InClass is null, does nothing.

### GetLinkedAnimLayerInstanceByGroup

```
UAnimInstance GetLinkedAnimLayerInstanceByGroup(FName InGroup)const
```

Gets the layer linked instance corresponding to the specified group

### LinkAnimGraphByTag

```
void LinkAnimGraphByTag(FName InTag, TSubclassOf<UAnimInstance> InClass)
```

Runs through all nodes, attempting to find a linked instance by name/tag, then sets the class of each node if the tag matches

### GetLinkedAnimLayerInstanceByGroupAndClass

```
UAnimInstance GetLinkedAnimLayerInstanceByGroupAndClass(
```

FName 	InGroup,

### InClass

```
TSubclassOf<UAnimInstance> InClass
```

) const

### Gets layer linked instance that matches group and class

```
Gets layer linked instance that matches group and class
```

GetLinkedAnimGraphInstanceByTag

### UAnimInstance GetLinkedAnimGraphInstanceByTag

```
UAnimInstance GetLinkedAnimGraphInstanceByTag(FName InTag)const
```

Runs through all nodes, attempting to find the first linked instance by name/tag

### LinkAnimClassLayers

```
void LinkAnimClassLayers(TSubclassOf<UAnimInstance> InClass)
```

Runs through all layer nodes, attempting to find layer nodes that are implemented by the specified class, then sets up a linked instance of the class for each.  Allocates one linked instance to run each of the groups specified in the class, so state is shared. If a layer is not grouped (ie. NAME_None), then state is not shared and a separate linked instance is allocated for each layer node.  If InClass is null, then all layers are reset to their defaults.

### GetLinkedAnimLayerInstanceByClass

```
UAnimInstance GetLinkedAnimLayerInstanceByClass(TSubclassOf<UAnimInstance> InClass)const
```

Gets the first layer linked instance corresponding to the specified class

### ANIMATION BLUEPRINT LINKING|MONTAGE

```
ANIMATION BLUEPRINT LINKING|MONTAGE SetUseMainInstanceMontageEvaluationData void SetUseMainInstanceMontageEvaluationData(bool bSet)
```

IsUsingMainInstanceMontageEvaluationData

### bool IsUsingMainInstanceMontageEvaluationData

```
bool IsUsingMainInstanceMontageEvaluationData()const ASSET PLAYER
```

WasAnimNotifyStateActiveInAnyState

### bool WasAnimNotifyStateActiveInAnyState

```
bool WasAnimNotifyStateActiveInAnyState(TSubclassOf<UAnimNotifyState> AnimNotifyStateType)
```

Get whether a particular notify state was active in any state machine last tick.

### INERTIAL BLEND

```
INERTIAL BLEND RequestSlotGroupInertialization void RequestSlotGroupInertialization(FName InSlotGroupName, float32 Duration)
```

Requests an inertial blend during the next anim graph update. Requires your anim graph to have a slot node belonging to the specified group name

---

## MONTAGE

### Montage_GetCurrentSection

```
FName Montage_GetCurrentSection(const UAnimMontage Montage = nullptr)const
```

Returns the name of the current animation montage section.

### GetCurrentActiveMontage

```
UAnimMontage GetCurrentActiveMontage()const
```

Get a current Active Montage in this AnimInstance.  Note that there might be multiple Active at the same time. This will only return the first active one it finds. *

### Montage_GetBlendTime

```
float32 Montage_GetBlendTime(const UAnimMontage Montage)const
```

Get the current blend time of the Montage.  If Montage reference is NULL, it will return the current blend time on the first active Montage found.

### IsAnyMontagePlaying

```
bool IsAnyMontagePlaying()const
```

Returns true if any montage is playing currently. Doesn't mean it's active though, it could be blending out.

### Montage_GetIsStopped

```
bool Montage_GetIsStopped(const UAnimMontage Montage)const
```

return true if Montage is not currently active. (not valid or blending out)

### Montage_GetPlayRate

```
float32 Montage_GetPlayRate(const UAnimMontage Montage)const
```

Get PlayRate for Montage.  If Montage reference is NULL, PlayRate for any Active Montage will be returned.  If Montage is not playing, 0 is returned.

### Montage_GetPosition

```
float32 Montage_GetPosition(const UAnimMontage Montage)const
```

### Get Current Montage Position

```
Get Current Montage Position
```

Montage_IsActive

### bool Montage_IsActive

```
bool Montage_IsActive(const UAnimMontage Montage)const
```

Returns true if the animation montage is active. If the Montage reference is NULL, it will return true if any Montage is active.

### Montage_IsPlaying

```
bool Montage_IsPlaying(const UAnimMontage Montage)const
```

Returns true if the animation montage is currently active and playing.  If reference is NULL, it will return true is ANY montage is currently active and playing.

### Montage_JumpToSection

```
void Montage_JumpToSection(FName SectionName, const UAnimMontage Montage = nullptr)
```

Makes a montage jump to a named section. If Montage reference is NULL, it will do that to all active montages.

### Montage_JumpToSectionsEnd

```
void Montage_JumpToSectionsEnd(FName SectionName, const UAnimMontage Montage = nullptr)
```

Makes a montage jump to the end of a named section. If Montage reference is NULL, it will do that to all active montages.

### Montage_Pause

```
void Montage_Pause(const UAnimMontage Montage = nullptr)
```

Pauses the animation montage. If reference is NULL, it will pause ALL active montages.

Montage_Play

### float32 Montage_Play

```
float32 Montage_Play(
```

UAnimMontage 	MontageToPlay,

float32 	InPlayRate	 = 	1.000000,

EMontagePlayReturnType 	ReturnValueType	 = 	EMontagePlayReturnType :: MontageLength,

float32 	InTimeToStartMontageAt	 = 	0.000000,

bool 	bStopAllMontages	 = 	true

)

Plays an animation montage. Returns the length of the animation montage in seconds. Returns 0.f if failed to play.

Montage_PlayWithBlendIn

### float32 Montage_PlayWithBlendIn

```
float32 Montage_PlayWithBlendIn(
```

UAnimMontage 	MontageToPlay,

FAlphaBlendArgs 	BlendIn,

float32 	InPlayRate	 = 	1.000000,

EMontagePlayReturnType 	ReturnValueType	 = 	EMontagePlayReturnType :: MontageLength,

float32 	InTimeToStartMontageAt	 = 	0.000000,

bool 	bStopAllMontages	 = 	true

)

Plays an animation montage. Same as Montage_Play, but you can specify an AlphaBlend for Blend In settings.

Montage_PlayWithBlendSettings

### float32 Montage_PlayWithBlendSettings

```
float32 Montage_PlayWithBlendSettings(
```

UAnimMontage 	MontageToPlay,

FMontageBlendSettings 	BlendInSettings,

float32 	InPlayRate	 = 	1.000000,

EMontagePlayReturnType 	ReturnValueType	 = 	EMontagePlayReturnType :: MontageLength,

float32 	InTimeToStartMontageAt	 = 	0.000000,

bool 	bStopAllMontages	 = 	true

### )

```
)
```

Plays an animation montage. Same as Montage_Play, but you can overwrite all of the montage's default blend in settings.

### Montage_Resume

```
void Montage_Resume(const UAnimMontage Montage)
```

Resumes a paused animation montage. If reference is NULL, it will resume ALL active montages.

### Montage_SetNextSection

```
void Montage_SetNextSection(FName SectionNameToChange, FName NextSection, const UAnimMontage Montage = nullptr)
```

Relink new next section AFTER SectionNameToChange in run-time You can link section order the way you like in editor, but in run-time if you'd like to change it dynamically, use this function to relink the next section For example, you can have Start->Loop->Loop->Loop.... but when you want it to end, you can relink next section of Loop to be End to finish the montage, in which case, it stops looping by Loop->End.

**Parameters**

SectionNameToChange
FName

: This should be the name of the Montage Section after which you want to insert a new next section

NextSection
FName

: new next section

Montage_SetPlayRate
void Montage_SetPlayRate(
const 	UAnimMontage 	Montage,
	float32 	NewPlayRate	 = 	1.000000
	)

Change AnimMontage play rate. NewPlayRate = 1.0 is the default playback rate.

Montage_SetPosition
void Montage_SetPosition(
const 	UAnimMontage 	Montage,
	float32 	NewPosition
	)

Set position.

Montage_Stop
void Montage_Stop(
	float32 	InBlendOutTime,
const 	UAnimMontage 	Montage	 = 	nullptr
	)

Stopped montages will blend out using their montage asset's BlendOut, with InBlendOutTime as the BlendTime

Montage_StopGroupByName
void Montage_StopGroupByName(
float32 	InBlendOutTime,
FName 	GroupName
	)

Stops all active montages belonging to a group.

Montage_StopWithBlendOut
void Montage_StopWithBlendOut(
	FAlphaBlendArgs 	BlendOut,
const 	UAnimMontage 	Montage	 = 	nullptr
	)

Same as Montage_Stop. Uses values from the AlphaBlendArgs. Other settings come from the montage asset

Montage_StopWithBlendSettings
void Montage_StopWithBlendSettings(
	FMontageBlendSettings 	BlendOutSettings,
const 	UAnimMontage 	Montage	 = 	nullptr
	)

Same as Montage_Stop, but all blend settings are provided instead of using the ones on the montage asset

MontageSync_Follow
void MontageSync_Follow(
const 	UAnimMontage 	MontageFollower,
const 	UAnimInstance 	OtherAnimInstance,
const 	UAnimMontage 	MontageLeader
	)

Synchronize a montage to another anim instance's montage. Both montages must be playing already

**Parameters**

MontageFollower
const UAnimMontage

: The montage that will follow the leader in OtherAnimInstance

OtherAnimInstance
const UAnimInstance

: The other anim instance we want to synchronize to. Can be set to self

MontageLeader
const UAnimMontage

: The montage we want to follow in the other anim instance

MontageSync_StopFollowing
void MontageSync_StopFollowing(
const 	UAnimMontage 	MontageFollower
	)

Stop following the montage's leader in this anim instance

**Parameters**

MontageFollower
const UAnimMontage

: The montage we want to stop synchronizing

---

## NOTIFIES

### GetPropagateNotifiesToLinkedInstances

```
bool GetPropagateNotifiesToLinkedInstances()const
```

Get whether to propagate notifies to any linked anim instances

### SetReceiveNotifiesFromLinkedInstances

```
void SetReceiveNotifiesFromLinkedInstances(bool bSet)
```

Set whether to process notifies from any linked anim instances

### SetPropagateNotifiesToLinkedInstances

```
void SetPropagateNotifiesToLinkedInstances(bool bSet)
```

Set whether to propagate notifies to any linked anim instances

### GetReceiveNotifiesFromLinkedInstances

```
bool GetReceiveNotifiesFromLinkedInstances()const
```

Get whether to process notifies from any linked anim instances

---

## POSE

### RemovePoseSnapshot

```
void RemovePoseSnapshot(FName SnapshotName)
```

Remove a previously saved pose snapshot from the internal snapshot cache

### SavePoseSnapshot

```
void SavePoseSnapshot(FName SnapshotName)
```

Takes a snapshot of the current skeletal mesh component pose & saves it internally.  This snapshot can then be retrieved by name in the animation blueprint for blending.  The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in LOD1 will use the reference pose

### SnapshotPose

```
void SnapshotPose(FPoseSnapshot& Snapshot)
```

Takes a snapshot of the current skeletal mesh component pose and saves it to the specified snapshot.  The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in LOD1 will use the reference pose

---

## SYNCGROUP

### GetTimeToClosestMarker

```
bool GetTimeToClosestMarker(FName SyncGroup, FName MarkerName, float32& OutMarkerTime)const
```

AI communication end

### HasMarkerBeenHitThisFrame

```
bool HasMarkerBeenHitThisFrame(FName SyncGroup, FName MarkerName)const
```

IsSyncGroupBetweenMarkers

### bool IsSyncGroupBetweenMarkers

```
bool IsSyncGroupBetweenMarkers(FName InSyncGroupName, FName PreviousMarker, FName NextMarker, bool bRespectMarkerOrder = true)const
```

GetSyncGroupPosition

### FMarkerSyncAnimPosition GetSyncGroupPosition

```
FMarkerSyncAnimPosition GetSyncGroupPosition(FName InSyncGroupName)const
```

---

## FUNCTIONS

### BlueprintBeginPlay

```
void BlueprintBeginPlay()
```

Executed when begin play is called on the owning component

### BlueprintUpdateAnimation

```
void BlueprintUpdateAnimation(float32 DeltaTimeX)
```

Executed when the Animation is updated

### BlueprintThreadSafeUpdateAnimation

```
void BlueprintThreadSafeUpdateAnimation(float32 DeltaTime)
```

Executed when the Animation Blueprint is updated on a worker thread, just prior to graph update

### BlueprintPostEvaluateAnimation

```
void BlueprintPostEvaluateAnimation()
```

Executed after the Animation is evaluated

### BlueprintLinkedAnimationLayersInitialized

```
void BlueprintLinkedAnimationLayersInitialized()
```

Executed when the all Linked Animation Layers are initialized

### BlueprintInitializeAnimation

```
void BlueprintInitializeAnimation()
```

Executed when the Animation is initialized

### SetbReceiveNotifiesFromLinkedInstances

```
void SetbReceiveNotifiesFromLinkedInstances(bool Value)
```

SetbPropagateNotifiesToLinkedInstances

### void SetbPropagateNotifiesToLinkedInstances

```
void SetbPropagateNotifiesToLinkedInstances(bool Value)
```

SetbUseMainInstanceMontageEvaluationData

### void SetbUseMainInstanceMontageEvaluationData

```
void SetbUseMainInstanceMontageEvaluationData(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimInstance::StaticClass()
```
