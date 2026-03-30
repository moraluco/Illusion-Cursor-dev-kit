# UNiagaraComponent

**Visibility:** public

## Inheritance

UFXSystemComponent → UNiagaraComponent → UNiagaraCullProxyComponent

## Description

UNiagaraComponent is the primitive component for a Niagara System.  @see ANiagaraActor @see UNiagaraSystem

## ATTACHMENT

### AutoAttachScaleRule

```
EAttachmentRule AutoAttachScaleRule
```

Options for how we handle our scale when we attach to the AutoAttachParent, if bAutoManageAttachment is true.  @see bAutoManageAttachment, EAttachmentRule

### bAutoAttachWeldSimulatedBodies

```
bool bAutoAttachWeldSimulatedBodies
```

Option for how we handle bWeldSimulatedBodies when we attach to the AutoAttachParent, if bAutoManageAttachment is true.  @see bAutoManageAttachment

### AutoAttachSocketName

```
FName AutoAttachSocketName
```

Socket we automatically attach to on the AutoAttachParent, if bAutoManageAttachment is true.  @see bAutoManageAttachment

### AutoAttachLocationRule

```
EAttachmentRule AutoAttachLocationRule
```

Options for how we handle our location when we attach to the AutoAttachParent, if bAutoManageAttachment is true.  @see bAutoManageAttachment, EAttachmentRule

### AutoAttachRotationRule

```
EAttachmentRule AutoAttachRotationRule
```

Options for how we handle our rotation when we attach to the AutoAttachParent, if bAutoManageAttachment is true.  @see bAutoManageAttachment, EAttachmentRule

### bAutoManageAttachment

```
bool bAutoManageAttachment
```

True if we should automatically attach to AutoAttachParent when activated, and detach from our parent when completed.  This overrides any current attachment that may be present at the time of activation (deferring initial attachment until activation, if AutoAttachParent is null).  When enabled, detachment occurs regardless of whether AutoAttachParent is assigned, and the relative transform from the time of activation is restored.  This also disables attachment on dedicated servers, where we don't actually activate even if bAutoActivate is true.  @see AutoAttachParent, AutoAttachSocketName, AutoAttachLocationType

---

## NIAGARA

### AgeUpdateMode

```
ENiagaraAgeUpdateMode AgeUpdateMode
```
### InstanceParameterOverrides

```
TMap<FNiagaraVariableBase,FNiagaraVariant> InstanceParameterOverrides
```
### TemplateParameterOverrides

```
TMap<FNiagaraVariableBase,FNiagaraVariant> TemplateParameterOverrides
```
### Asset

```
const UNiagaraSystem Asset
```
### CustomTimeDilation

```
float32 CustomTimeDilation
```
### DesiredAge

```
float32 DesiredAge
```

Gets the desired age of the System instance.  This is only relevant when using the DesiredAge age update mode.

### bAllowScalability

```
bool bAllowScalability
```

Controls whether we allow scalability culling for this component. If enabled, this component's FX may be culled due to things such as distance, visibility, instance counts and performance.

### ForceSolo

```
bool ForceSolo
```
### LockDesiredAgeDeltaTimeToSeekDelta

```
bool LockDesiredAgeDeltaTimeToSeekDelta
```

Gets whether or not the delta time used to tick the system instance when using desired age is locked to the seek delta.  When true, the system instance will only be ticked when the desired age has changed by more than the seek delta.  When false the system instance will be ticked by the change in desired age when not seeking.

### MaxSimTime

```
float32 MaxSimTime
```

Get the maximum CPU time in seconds we will simulate to the desired age, when we go beyond this limit ticks will be processed in the next frame.  This is only relevant when using the DesiredAge age update mode.  Note: The componet will not be visibile if we have ticks to process and SetCanRenderWhileSeeking is set to true

### SeekDelta

```
float32 SeekDelta
```

Gets the delta value which is used when seeking from the current age, to the desired age.  This is only relevant when using the DesiredAge age update mode.

### TickBehavior

```
ENiagaraTickBehavior TickBehavior
```

Allows you to control how Niagara selects the tick group, changing this while an instance is active will result in not change as it is cached.

### SystemFixedBounds

```
FBox SystemFixedBounds
```

Gets the fixed bounds for the system instance.  This will return the user set fixed bounds if set, or the systems fixed bounds if set.  Note: The returned box may be invalid if no fixed bounds exist

---

## PREVIEW

PreviewLODDistanceEnabled

### PreviewLODDistanceEnabled

```
const bool PreviewLODDistanceEnabled
```

PreviewLODDistance const float32 PreviewLODDistance

---

## RANDOMNESS

### RandomSeedOffset

```
int RandomSeedOffset
```

Offsets the deterministic random seed of all emitters. Used to achieve variety between components, while still achieving determinism.  WARNINGS: - If this value is set in a non-deterministic way, it has the potential to break determinism of the entire system.  - This value is applied when emitters are activated/reset, and changing them while the emitter is active has no effect.

---

## VARIABLES

### OnSystemFinished

```
FOnNiagaraSystemFinished OnSystemFinished
```

Called when the particle system is done

### AllowScalability

```
bool AllowScalability
```
### ForceLocalPlayerEffect

```
bool ForceLocalPlayerEffect NIAGARA SetNiagaraVariableInt void SetNiagaraVariableInt(FString InVariableName, int InValue)
```

Sets a Niagara int parameter by name, overriding locally if necessary.

### AdvanceSimulationByTime

```
void AdvanceSimulationByTime(float32 SimulateTime, float32 TickDeltaSeconds)
```

Advances this system's simulation by the specified time in seconds and delta time. Advancement is done in whole ticks of TickDeltaSeconds so actual simulated time will be the nearest lower multiple of TickDeltaSeconds.

### ClearEmitterFixedBounds

```
void ClearEmitterFixedBounds(FName EmitterName)
```

Clear any previously set fixed bounds for the emitter instance.

### ClearSystemFixedBounds

```
void ClearSystemFixedBounds()
```

Clear any previously set fixed bounds for the system instance.

### GetAgeUpdateMode

```
ENiagaraAgeUpdateMode GetAgeUpdateMode()const
```

SetNiagaraVariablePosition

### void SetNiagaraVariablePosition

```
void SetNiagaraVariablePosition(FString InVariableName, FVector InValue)
```

Sets a Niagara Position parameter by name, overriding locally if necessary.

### GetAsset

```
UNiagaraSystem GetAsset()const
```

GetCustomTimeDilation

### float32 GetCustomTimeDilation

```
float32 GetCustomTimeDilation()const GetDataInterface
```

UNiagaraDataInterface GetDataInterface(

### FString 	Name

```
FString 	Name 	)
```

GetDesiredAge

### float32 GetDesiredAge

```
float32 GetDesiredAge()const
```

Gets the desired age of the System instance.  This is only relevant when using the DesiredAge age update mode.

### GetEmitterFixedBounds

```
FBox GetEmitterFixedBounds(FName EmitterName)const
```

Gets the fixed bounds for an emitter instance.  This will return the user set fixed bounds if set, or the emitters fixed bounds if set.  Note: The returned box may be invalid if no fixed bounds exist

### SetNiagaraVariableVec3

```
void SetNiagaraVariableVec3(FString InVariableName, FVector InValue)
```

Sets a Niagara Vector3 parameter by name, overriding locally if necessary.

### GetForceSolo

```
bool GetForceSolo()const
```

GetLockDesiredAgeDeltaTimeToSeekDelta

### bool GetLockDesiredAgeDeltaTimeToSeekDelta

```
bool GetLockDesiredAgeDeltaTimeToSeekDelta()const
```

Gets whether or not the delta time used to tick the system instance when using desired age is locked to the seek delta.  When true, the system instance will only be ticked when the desired age has changed by more than the seek delta.  When false the system instance will be ticked by the change in desired age when not seeking.

### GetMaxSimTime

```
float32 GetMaxSimTime()const
```

Get the maximum CPU time in seconds we will simulate to the desired age, when we go beyond this limit ticks will be processed in the next frame.  This is only relevant when using the DesiredAge age update mode.  Note: The componet will not be visibile if we have ticks to process and SetCanRenderWhileSeeking is set to true

### SetPaused

```
void SetPaused(bool bInPaused)
```

SetNiagaraVariableFloat

### void SetNiagaraVariableFloat

```
void SetNiagaraVariableFloat(FString InVariableName, float32 InValue)
```

Sets a Niagara float parameter by name, overriding locally if necessary.

### GetRandomSeedOffset

```
int GetRandomSeedOffset()const
```

GetSeekDelta

### float32 GetSeekDelta

```
float32 GetSeekDelta()const
```

Gets the delta value which is used when seeking from the current age, to the desired age.  This is only relevant when using the DesiredAge age update mode.

### GetSystemFixedBounds

```
FBox GetSystemFixedBounds()const
```

Gets the fixed bounds for the system instance.  This will return the user set fixed bounds if set, or the systems fixed bounds if set.  Note: The returned box may be invalid if no fixed bounds exist

### GetTickBehavior

```
ENiagaraTickBehavior GetTickBehavior()const
```

SetNiagaraVariableObject

### void SetNiagaraVariableObject

```
void SetNiagaraVariableObject(FString InVariableName, UObject Object)
```

IsPaused

### bool IsPaused

```
bool IsPaused()const ReinitializeSystem
```

void ReinitializeSystem()

### Called on when an external object wishes to force this System to reinitialize itself from the System data.

```
Called on when an external object wishes to force this System to reinitialize itself from the System data.
```

ResetSystem

### void ResetSystem

```
void ResetSystem()
```

Resets the System to it's initial pre-simulated state.

### SeekToDesiredAge

```
void SeekToDesiredAge(float32 InDesiredAge)
```

Sets the desired age of the System instance and designates that this change is a seek.  When seeking to a desired age the The component can optionally prevent rendering.

### SetAgeUpdateMode

```
void SetAgeUpdateMode(ENiagaraAgeUpdateMode InAgeUpdateMode)
```

Sets the age update mode for the System instance.

### SetVariableVec4

```
void SetVariableVec4(FName InVariableName, FVector4 InValue)
```

Sets a Niagara Vector4 parameter by name, overriding locally if necessary.

### SetAsset

```
void SetAsset(UNiagaraSystem InAsset, bool bResetExistingOverrideParameters = true)
```

Switch which asset the component is using.  This requires Niagara to wait for concurrent execution and the override parameter store to be synchronized with the new asset.  By default existing parameters are reset when we call SetAsset, modify bResetExistingOverrideParameters to leave existing parameter data as is.

### SetAutoDestroy

```
void SetAutoDestroy(bool bInAutoDestroy)
```

SetCanRenderWhileSeeking

### void SetCanRenderWhileSeeking

```
void SetCanRenderWhileSeeking(bool bInCanRenderWhileSeeking)
```

Sets whether or not the system can render while seeking.

### SetCustomTimeDilation

```
void SetCustomTimeDilation(float32 Dilation = 1.000000)
```

Sets the custom time dilation value for the component.  Note: This is only available on components that are in solo mode currently.

### SetDesiredAge

```
void SetDesiredAge(float32 InDesiredAge)
```

Sets the desired age of the System instance.  This is only relevant when using the DesiredAge age update mode.

### SetEmitterFixedBounds

```
void SetEmitterFixedBounds(FName EmitterName, FBox LocalBounds)
```

Sets the fixed bounds for an emitter instance, this overrides all other bounds.  The box is expected to be in local space not world space.  A default uninitialized box will clear the fixed bounds and revert back to emitter fixed / dynamic bounds.

### SetVariableVec3

```
void SetVariableVec3(FName InVariableName, FVector InValue)
```

Sets a Niagara Vector3 parameter by name, overriding locally if necessary.

### SetForceSolo

```
void SetForceSolo(bool bInForceSolo)
```

SetGpuComputeDebug

### void SetGpuComputeDebug

```
void SetGpuComputeDebug(bool bEnableDebug)
```

SetLockDesiredAgeDeltaTimeToSeekDelta

### void SetLockDesiredAgeDeltaTimeToSeekDelta

```
void SetLockDesiredAgeDeltaTimeToSeekDelta(bool bLock)
```

Sets whether or not the delta time used to tick the system instance when using desired age is locked to the seek delta.  When true, the system instance will only be ticked when the desired age has changed by more than the seek delta.  When false the system instance will be ticked by the change in desired age when not seeking.

### SetMaxSimTime

```
void SetMaxSimTime(float32 InMaxTime)
```

Sets the maximum CPU time in seconds we will simulate to the desired age, when we go beyond this limit ticks will be processed in the next frame.  This is only relevant when using the DesiredAge age update mode.  Note: The componet will not be visibile if we have ticks to process and SetCanRenderWhileSeeking is set to true

### SetNiagaraVariableActor

```
void SetNiagaraVariableActor(FString InVariableName, AActor Actor)
```

SetNiagaraVariableBool

### void SetNiagaraVariableBool

```
void SetNiagaraVariableBool(FString InVariableName, bool InValue)
```

Sets a Niagara float parameter by name, overriding locally if necessary.

### SetVariableTexture

```
void SetVariableTexture(FName InVariableName, UTexture Texture)
```

AdvanceSimulation

### void AdvanceSimulation

```
void AdvanceSimulation(int TickCount, float32 TickDeltaSeconds)
```

Advances this system's simulation by the specified number of ticks and delta time.

### SetNiagaraVariableLinearColor

```
void SetNiagaraVariableLinearColor(FString InVariableName, FLinearColor InValue)
```

Sets a Niagara FLinearColor parameter by name, overriding locally if necessary.

### SetSystemFixedBounds

```
void SetSystemFixedBounds(FBox LocalBounds)
```

Sets the fixed bounds for the system instance, this overrides all other bounds.  The box is expected to be in local space not world space.  A default uninitialized box will clear the fixed bounds and revert back to system fixed / dynamic bounds.

### SetVariableVec2

```
void SetVariableVec2(FName InVariableName, FVector2D InValue)
```

Sets a Niagara Vector3 parameter by name, overriding locally if necessary.

### SetNiagaraVariableQuat

```
void SetNiagaraVariableQuat(FString InVariableName, FQuat InValue)
```

Sets a Niagara Vector3 parameter by name, overriding locally if necessary.

### SetNiagaraVariableVec2

```
void SetNiagaraVariableVec2(FString InVariableName, FVector2D InValue)
```

Sets a Niagara Vector3 parameter by name, overriding locally if necessary.

### SetVariableTextureRenderTarget

```
void SetVariableTextureRenderTarget(FName InVariableName, UTextureRenderTarget TextureRenderTarget)
```

SetNiagaraVariableVec4

### void SetNiagaraVariableVec4

```
void SetNiagaraVariableVec4(FString InVariableName, FVector4 InValue)
```

Sets a Niagara Vector4 parameter by name, overriding locally if necessary.

### SetVariableStaticMesh

```
void SetVariableStaticMesh(FName InVariableName, UStaticMesh InValue)
```

SetVariableQuat

### void SetVariableQuat

```
void SetVariableQuat(FName InVariableName, FQuat InValue)
```

Sets a Niagara Vector3 parameter by name, overriding locally if necessary.

### SetRenderingEnabled

```
void SetRenderingEnabled(bool bInRenderingEnabled)
```

Sets whether or not rendering is enabled for this component.

### SetSeekDelta

```
void SetSeekDelta(float32 InSeekDelta)
```

Sets the delta value which is used when seeking from the current age, to the desired age.  This is only relevant when using the DesiredAge age update mode.

### SetRandomSeedOffset

```
void SetRandomSeedOffset(int NewRandomSeedOffset)
```

SetTickBehavior

### void SetTickBehavior

```
void SetTickBehavior(ENiagaraTickBehavior NewTickBehavior)
```

SetVariableActor

### void SetVariableActor

```
void SetVariableActor(FName InVariableName, AActor Actor)
```

SetVariableBool

### void SetVariableBool

```
void SetVariableBool(FName InVariableName, bool InValue)
```

Sets a Niagara float parameter by name, overriding locally if necessary.

### SetVariableFloat

```
void SetVariableFloat(FName InVariableName, float32 InValue)
```

Sets a Niagara float parameter by name, overriding locally if necessary.

### SetVariableInt

```
void SetVariableInt(FName InVariableName, int InValue)
```

Sets a Niagara int parameter by name, overriding locally if necessary.

### SetVariableLinearColor

```
void SetVariableLinearColor(FName InVariableName, FLinearColor InValue)
```

Sets a Niagara FLinearColor parameter by name, overriding locally if necessary.

### SetVariableMaterial

```
void SetVariableMaterial(FName InVariableName, UMaterialInterface Object)
```

SetVariableObject

### void SetVariableObject

```
void SetVariableObject(FName InVariableName, UObject Object)
```

SetVariablePosition

### void SetVariablePosition

```
void SetVariablePosition(FName InVariableName, FVector InValue)
```

Sets a Niagara Position parameter by name, overriding locally if necessary.

---

## PERFORMANCE

### InitForPerformanceBaseline

```
void InitForPerformanceBaseline()
```

Initializes this component for capturing a performance baseline.  This will do things such as disabling distance culling and setting a LODDistance of 0 to ensure the effect is at it's maximum cost.

---

## PREVIEW

### SetPreviewLODDistance

```
void SetPreviewLODDistance(bool bEnablePreviewLODDistance, float32 PreviewLODDistance, float32 PreviewMaxDistance)
```

GetPreviewLODDistanceEnabled

### bool GetPreviewLODDistanceEnabled

```
bool GetPreviewLODDistanceEnabled()const GetPreviewLODDistance
```

float32 GetPreviewLODDistance() const

---

## SCALABILITY

### SetForceLocalPlayerEffect

```
void SetForceLocalPlayerEffect(bool bIsPlayerEffect)
```

SetAllowScalability

### void SetAllowScalability

```
void SetAllowScalability(bool bAllow)
```

Set whether this component is allowed to perform scalability checks and potentially be culled etc. Occasionally it is useful to disable this for specific components. E.g. Effects on the local player.

---

## FUNCTIONS

### GetAllowScalability

```
bool GetAllowScalability()const
```

GetbAutoAttachWeldSimulatedBodies

### bool GetbAutoAttachWeldSimulatedBodies

```
bool GetbAutoAttachWeldSimulatedBodies()const SetbForceSolo
```

void SetbForceSolo(

### bool 	Value

```
bool 	Value 	)
```

SetbEnableGpuComputeDebug

### void SetbEnableGpuComputeDebug

```
void SetbEnableGpuComputeDebug(bool Value)
```

GetbAutoManageAttachment

### bool GetbAutoManageAttachment

```
bool GetbAutoManageAttachment()const SetbAutoManageAttachment
```

void SetbAutoManageAttachment(

### bool 	Value

```
bool 	Value 	)
```

GetForceLocalPlayerEffect

### bool GetForceLocalPlayerEffect

```
bool GetForceLocalPlayerEffect()const SetbAutoAttachWeldSimulatedBodies
```

void SetbAutoAttachWeldSimulatedBodies(

### bool 	Value

```
bool 	Value 	)
```

SetbWaitForCompilationOnActivate

### void SetbWaitForCompilationOnActivate

```
void SetbWaitForCompilationOnActivate(bool Value)
```

GetbAllowScalability

### bool GetbAllowScalability

```
bool GetbAllowScalability()const SetbAllowScalability
```

void SetbAllowScalability(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UNiagaraComponent UNiagaraComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UNiagaraComponent UNiagaraComponent::GetOrCreate

```
static UNiagaraComponent UNiagaraComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UNiagaraComponent UNiagaraComponent::Create

```
static UNiagaraComponent UNiagaraComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UNiagaraComponent::StaticClass

```
static UClass UNiagaraComponent::StaticClass()
```
