# UParticleSystemComponent

**Visibility:** public

## Inheritance

UFXSystemComponent → UParticleSystemComponent

## Description

A particle emitter.

## ATTACHMENT

### AutoAttachRotationRule

```
EAttachmentRule AutoAttachRotationRule
```

Options for how we handle our rotation when we attach to the AutoAttachParent, if bAutoManageAttachment is true.  @see bAutoManageAttachment, EAttachmentRule

### bAutoAttachWeldSimulatedBodies

```
bool bAutoAttachWeldSimulatedBodies
```

Option for how we handle bWeldSimulatedBodies when we attach to the AutoAttachParent, if bAutoManageAttachment is true.  @see bAutoManageAttachment

### bAutoManageAttachment

```
bool bAutoManageAttachment
```

True if we should automatically attach to AutoAttachParent when activated, and detach from our parent when completed.  This overrides any current attachment that may be present at the time of activation (deferring initial attachment until activation, if AutoAttachParent is null).  When enabled, detachment occurs regardless of whether AutoAttachParent is assigned, and the relative transform from the time of activation is restored.  This also disables attachment on dedicated servers, where we don't actually activate even if bAutoActivate is true.  @see AutoAttachParent, AutoAttachSocketName, AutoAttachLocationType

### AutoAttachLocationRule

```
EAttachmentRule AutoAttachLocationRule
```

Options for how we handle our location when we attach to the AutoAttachParent, if bAutoManageAttachment is true.  @see bAutoManageAttachment, EAttachmentRule

### AutoAttachScaleRule

```
EAttachmentRule AutoAttachScaleRule
```

Options for how we handle our scale when we attach to the AutoAttachParent, if bAutoManageAttachment is true.  @see bAutoManageAttachment, EAttachmentRule

### AutoAttachSocketName

```
FName AutoAttachSocketName
```

Socket we automatically attach to on the AutoAttachParent, if bAutoManageAttachment is true.  If no auto attach socket name is set during registration, the current attach socket will be assigned to AutoAttachSocketName and used when activated.  @see bAutoManageAttachment

---

## EFFECTS \| COMPONENTS \| PARTICLESYSTEM

NumActiveParticles

### NumActiveParticles

```
const int NumActiveParticles
```

Get the current number of active particles in this system

---

## LOD

### LODMethod

```
ParticleSystemLODMethod LODMethod
```

The method of LOD level determination to utilize for this particle system

### bOverrideLODMethod

```
bool bOverrideLODMethod
```

indicates that the component's LODMethod overrides the Template's

---

## PARTICLES

### InstanceParameters

```
TArray<FParticleSysParam> InstanceParameters
```

Array holding name instance parameters for this ParticleSystemComponent.  Parameters can be used in Cascade using DistributionFloat/VectorParticleParameters.

### SecondsBeforeInactive

```
float32 SecondsBeforeInactive
```

Number of seconds of emitter not being rendered that need to pass before it no longer gets ticked/ becomes inactive.

### Template

```
UParticleSystem Template bResetOnDetach bool bResetOnDetach CustomTimeDilation float32 CustomTimeDilation
```

Scales DeltaTime in UParticleSystemComponent::Tick(...)

### bAllowRecycling

```
bool bAllowRecycling
```

If true, this Particle System will be available for recycling after it has completed. Auto-destroyed systems cannot be recycled.  Some systems (currently particle trail effects) can recycle components to avoid respawning them to play new effects.  This is only an optimization and does not change particle system behavior, aside from not triggering normal component initialization events more than once.

---

## VARIABLES

### OnParticleDeath

```
FParticleDeathSignature OnParticleDeath
```
### OnParticleBurst

```
FParticleBurstSignature OnParticleBurst
```
### OnParticleSpawn

```
FParticleSpawnSignature OnParticleSpawn
```
### OnParticleCollide

```
FParticleCollisionSignature OnParticleCollide
```
### OnSystemFinished

```
FOnSystemFinished OnSystemFinished
```

Called when the particle system is done

---

## EFFECTS \| COMPONENTS \| PARTICLESYSTEM

### SetBeamTargetTangent

```
void SetBeamTargetTangent(int EmitterIndex, FVector NewTangentPoint, int TargetIndex)
```

Set the beam target tangent

**Parameters**

EmitterIndex
int

The index of the emitter to set it on

NewTangentPoint
FVector

The value to set it to

TargetIndex
int

Which beam within the emitter to set it on

GetBeamTargetTangent
bool GetBeamTargetTangent(
int 	EmitterIndex,
int 	TargetIndex,
FVector& 	OutTangentPoint
	) const

Get the beam target tangent

**Parameters**

EmitterIndex
int

The index of the emitter to get

TargetIndex
int

Which beam within the emitter to get

OutTangentPoint
FVector&

Value of target tangent

**Returns**

true  EmitterIndex and TargetIndex are valid

OutTangentPoint is valid false  EmitterIndex or TargetIndex is invalid - OutTangentPoint is invalid

SetMaterialParameter
void SetMaterialParameter(
FName 	ParameterName,
UMaterialInterface 	Param
	)

Set a named material instance parameter on this ParticleSystemComponent.  Updates the parameter if it already exists, or creates a new entry if not.

GenerateParticleEvent
void GenerateParticleEvent(
const 	FName 	InEventName,
	float32 	InEmitterTime,
const 	FVector 	InLocation,
const 	FVector 	InDirection,
const 	FVector 	InVelocity
	)

Record a kismet event.

**Parameters**

InEventName
const FName

The name of the event that fired.

InEmitterTime
float32

The emitter time when the event fired.

InLocation
const FVector

The location of the particle when the event fired.

InVelocity
const FVector

The velocity of the particle when the event fired.

GetBeamEndPoint
bool GetBeamEndPoint(
int 	EmitterIndex,
FVector& 	OutEndPoint
	) const

Get the beam end point

**Parameters**

EmitterIndex
int

The index of the emitter to get the value of

**Returns**

true  EmitterIndex is valid and End point is set

OutEndPoint is valid false  EmitterIndex invalid or End point is not set - OutEndPoint is invalid

GetBeamSourcePoint
bool GetBeamSourcePoint(
int 	EmitterIndex,
int 	SourceIndex,
FVector& 	OutSourcePoint
	) const

Get the beam source point

**Parameters**

EmitterIndex
int

The index of the emitter to get

SourceIndex
int

Which beam within the emitter to get

OutSourcePoint
FVector&

Value of source point

**Returns**

true  EmitterIndex and SourceIndex are valid

OutSourcePoint is valid false  EmitterIndex or SourceIndex is invalid - OutSourcePoint is invalid

GetBeamSourceStrength
bool GetBeamSourceStrength(
int 	EmitterIndex,
int 	SourceIndex,
float32& 	OutSourceStrength
	) const

Get the beam source strength

**Parameters**

EmitterIndex
int

The index of the emitter to get

SourceIndex
int

Which beam within the emitter to get

OutSourceStrength
float32&

Value of source tangent

**Returns**

true  EmitterIndex and SourceIndex are valid

OutSourceStrength is valid false  EmitterIndex or SourceIndex is invalid - OutSourceStrength is invalid

GetBeamSourceTangent
bool GetBeamSourceTangent(
int 	EmitterIndex,
int 	SourceIndex,
FVector& 	OutTangentPoint
	) const

Get the beam source tangent

**Parameters**

EmitterIndex
int

The index of the emitter to get

SourceIndex
int

Which beam within the emitter to get

OutTangentPoint
FVector&

Value of source tangent

**Returns**

true  EmitterIndex and SourceIndex are valid

OutTangentPoint is valid false  EmitterIndex or SourceIndex is invalid - OutTangentPoint is invalid

GetBeamTargetPoint
bool GetBeamTargetPoint(
int 	EmitterIndex,
int 	TargetIndex,
FVector& 	OutTargetPoint
	) const

Get the beam target point

**Parameters**

EmitterIndex
int

The index of the emitter to get

TargetIndex
int

Which beam within the emitter to get

OutTargetPoint
FVector&

Value of target point

**Returns**

true  EmitterIndex and TargetIndex are valid

OutTargetPoint is valid false  EmitterIndex or TargetIndex is invalid - OutTargetPoint is invalid

GetBeamTargetStrength
bool GetBeamTargetStrength(
int 	EmitterIndex,
int 	TargetIndex,
float32& 	OutTargetStrength
	) const

Get the beam target strength

**Parameters**

EmitterIndex
int

The index of the emitter to get

TargetIndex
int

Which beam within the emitter to get

OutTargetStrength
float32&

Value of target tangent

**Returns**

true  EmitterIndex and TargetIndex are valid

OutTargetStrength is valid false  EmitterIndex or TargetIndex is invalid - OutTargetStrength is invalid

SetBeamSourcePoint
void SetBeamSourcePoint(
int 	EmitterIndex,
FVector 	NewSourcePoint,
int 	SourceIndex
	)

Set the beam source point

**Parameters**

EmitterIndex
int

The index of the emitter to set it on

NewSourcePoint
FVector

The value to set it to

SourceIndex
int

Which beam within the emitter to set it on

SetTemplate
void SetTemplate(
UParticleSystem 	NewTemplate
	)

Change the ParticleSystem used by this ParticleSystemComponent

GetNumActiveParticles
int GetNumActiveParticles() const

Get the current number of active particles in this system

SetBeamEndPoint
void SetBeamEndPoint(
int 	EmitterIndex,
FVector 	NewEndPoint
	)

Set the beam end point

**Parameters**

EmitterIndex
int

The index of the emitter to set it on

NewEndPoint
FVector

The value to set it to

SetBeamSourceStrength
void SetBeamSourceStrength(
int 	EmitterIndex,
float32 	NewSourceStrength,
int 	SourceIndex
	)

Set the beam source strength

**Parameters**

EmitterIndex
int

The index of the emitter to set it on

NewSourceStrength
float32

The value to set it to

SourceIndex
int

Which beam within the emitter to set it on

SetBeamSourceTangent
void SetBeamSourceTangent(
int 	EmitterIndex,
FVector 	NewTangentPoint,
int 	SourceIndex
	)

Set the beam source tangent

**Parameters**

EmitterIndex
int

The index of the emitter to set it on

NewTangentPoint
FVector

The value to set it to

SourceIndex
int

Which beam within the emitter to set it on

SetBeamTargetPoint
void SetBeamTargetPoint(
int 	EmitterIndex,
FVector 	NewTargetPoint,
int 	TargetIndex
	)

Set the beam target point

**Parameters**

EmitterIndex
int

The index of the emitter to set it on

NewTargetPoint
FVector

The value to set it to

TargetIndex
int

Which beam within the emitter to set it on

SetBeamTargetStrength
void SetBeamTargetStrength(
int 	EmitterIndex,
float32 	NewTargetStrength,
int 	TargetIndex
	)

Set the beam target strength

**Parameters**

EmitterIndex
int

The index of the emitter to set it on

NewTargetStrength
float32

The value to set it to

TargetIndex
int

Which beam within the emitter to set it on

---

## EFFECTS \| PARTICLES \| TRAILS

### EndTrails

```
void EndTrails()
```

Ends all trail emitters in this component.

### BeginTrails

```
void BeginTrails(FName InFirstSocketName, FName InSecondSocketName, ETrailWidthMode InWidthMode, float32 InWidth)
```

Begins all trail emitters in this component.

**Parameters**

InFirstSocketName
FName

The name of the first socket for the trail.

InSecondSocketName
FName

The name of the second socket for the trail.

InWidthMode
ETrailWidthMode

How the width value is applied to the trail.

InWidth
float32

The width of the trail.

SetTrailSourceData
void SetTrailSourceData(
FName 	InFirstSocketName,
FName 	InSecondSocketName,
ETrailWidthMode 	InWidthMode,
float32 	InWidth
	)

Sets the defining data for all trails in this component.

**Parameters**

InFirstSocketName
FName

The name of the first socket for the trail.

InSecondSocketName
FName

The name of the second socket for the trail.

InWidthMode
ETrailWidthMode

How the width value is applied to the trail.

InWidth
float32

The width of the trail.

---

## RENDERING \| MATERIAL

### GetNamedMaterial

```
UMaterialInterface GetNamedMaterial(FName InName)const
```

Returns a named material. If this named material is not found, returns NULL.

### CreateNamedDynamicMaterialInstance

```
UMaterialInstanceDynamic CreateNamedDynamicMaterialInstance(
```

FName 	InName,

### UMaterialInterface 	SourceMaterial	 = 	nullptr

```
UMaterialInterface 	SourceMaterial	 = 	nullptr
```

)

### Creates a Dynamic Material Instance for the specified named material override, optionally from the supplied material.

```
Creates a Dynamic Material Instance for the specified named material override, optionally from the supplied material.
```

---

## FUNCTIONS

### GetTemplate

```
UParticleSystem GetTemplate()const
```

GetbResetOnDetach

### bool GetbResetOnDetach

```
bool GetbResetOnDetach()const SetbResetOnDetach
```

void SetbResetOnDetach(

### bool 	Value

```
bool 	Value 	)
```

GetbAllowRecycling

### bool GetbAllowRecycling

```
bool GetbAllowRecycling()const SetbAllowRecycling
```

void SetbAllowRecycling(

### bool 	Value

```
bool 	Value 	)
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

GetbAutoAttachWeldSimulatedBodies

### bool GetbAutoAttachWeldSimulatedBodies

```
bool GetbAutoAttachWeldSimulatedBodies()const SetbAutoAttachWeldSimulatedBodies
```

void SetbAutoAttachWeldSimulatedBodies(

### bool 	Value

```
bool 	Value 	)
```

GetbOverrideLODMethod

### bool GetbOverrideLODMethod

```
bool GetbOverrideLODMethod()const SetbOverrideLODMethod
```

void SetbOverrideLODMethod(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UParticleSystemComponent UParticleSystemComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UParticleSystemComponent UParticleSystemComponent::GetOrCreate

```
static UParticleSystemComponent UParticleSystemComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UParticleSystemComponent UParticleSystemComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UParticleSystemComponent::StaticClass

```
static UClass UParticleSystemComponent::StaticClass()
```
