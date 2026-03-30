# UFXSystemComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UFXSystemComponent → UNiagaraComponent → UParticleSystemComponent

## EFFECTS \| COMPONENTS \| PARTICLESYSTEM

### FXSystemAsset

```
const UFXSystemAsset FXSystemAsset
```

Get the referenced FXSystem asset.

---

## EFFECTS \| COMPONENTS \| PARTICLESYSTEM

### SetFloatParameter

```
void SetFloatParameter(FName ParameterName, float32 Param)
```

Change a named float parameter

### GetFXSystemAsset

```
UFXSystemAsset GetFXSystemAsset()const
```

Get the referenced FXSystem asset.

### ReleaseToPool

```
void ReleaseToPool()
```

Deactivates this system and releases it to the pool on completion.  Usage of this PSC reference after this call is unsafe.  You should clear out your references to it.

### SetActorParameter

```
void SetActorParameter(FName ParameterName, AActor Param)
```

Set a named actor instance parameter on this ParticleSystemComponent.  Updates the parameter if it already exists, or creates a new entry if not.

### SetAutoAttachmentParameters

```
void SetAutoAttachmentParameters(USceneComponent Parent, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule)
```

Set AutoAttachParent, AutoAttachSocketName, AutoAttachLocationRule, AutoAttachRotationRule, AutoAttachScaleRule to the specified parameters. Does not change bAutoManageAttachment; that must be set separately.

**Parameters**

Parent
USceneComponent

Component to attach to.

SocketName
FName

Socket on Parent to attach to.

LocationRule
EAttachmentRule

Option for how we handle our location when we attach to Parent.

RotationRule
EAttachmentRule

Option for how we handle our rotation when we attach to Parent.

ScaleRule
EAttachmentRule

Option for how we handle our scale when we attach to Parent.

SetBoolParameter
void SetBoolParameter(
FName 	ParameterName,
bool 	Param
	)

Change a named boolean parameter, ParticleSystemComponent converts to float.

SetColorParameter
void SetColorParameter(
FName 	ParameterName,
FLinearColor 	Param
	)

Set a named color instance parameter on this ParticleSystemComponent.  Updates the parameter if it already exists, or creates a new entry if not.

SetEmitterEnable
void SetEmitterEnable(
FName 	EmitterName,
bool 	bNewEnableState
	)

Enables/Disables a sub-emitter

**Parameters**

EmitterName
FName

The name of the sub-emitter to set it on

bNewEnableState
bool

The value to set it to

SetIntParameter
void SetIntParameter(
FName 	ParameterName,
int 	Param
	)

Change a named int parameter

SetUseAutoManageAttachment
void SetUseAutoManageAttachment(
bool 	bAutoManage
	)

Sets whether we should automatically attach to AutoAttachParent when activated, and detach from our parent when completed.  This overrides any current attachment that may be present at the time of activation (deferring initial attachment until activation, if AutoAttachParent is null).  When enabled, detachment occurs regardless of whether AutoAttachParent is assigned, and the relative transform from the time of activation is restored.  This also disables attachment on dedicated servers, where we don't actually activate even if bAutoActivate is true.  See: SetAutoAttachmentParameters()

SetVectorParameter
void SetVectorParameter(
FName 	ParameterName,
FVector 	Param
	)

Set a named vector instance parameter on this ParticleSystemComponent.  Updates the parameter if it already exists, or creates a new entry if not.

---

## FUNCTIONS

### DeactivateImmediate

```
void DeactivateImmediate()
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UFXSystemComponent UFXSystemComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UFXSystemComponent UFXSystemComponent::GetOrCreate

```
static UFXSystemComponent UFXSystemComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UFXSystemComponent UFXSystemComponent::Create

```
static UFXSystemComponent UFXSystemComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UFXSystemComponent::StaticClass

```
static UClass UFXSystemComponent::StaticClass()
```
