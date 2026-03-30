# UPhysicalAnimationComponent

**Visibility:** public

## Inheritance

UActorComponent → UPhysicalAnimationComponent → PHYSICALANIMATION → StrengthMultiplyer

## Description

float32 StrengthMultiplyer

Multiplies the strength of any active motors. (can blend from 0-1 for example)

## PHYSICALANIMATION

### SetStrengthMultiplyer

```
void SetStrengthMultiplyer(float32 InStrengthMultiplyer)
```

Updates strength multiplyer and any active motors

### ApplyPhysicalAnimationSettings

```
void ApplyPhysicalAnimationSettings(FName BodyName, FPhysicalAnimationData PhysicalAnimationData)
```

Applies the physical animation settings to the body given.

### ApplyPhysicalAnimationSettingsBelow

```
void ApplyPhysicalAnimationSettingsBelow(FName BodyName, FPhysicalAnimationData PhysicalAnimationData, bool bIncludeSelf = true)
```

Applies the physical animation settings to the body given and all bodies below.

### GetBodyTargetTransform

```
FTransform GetBodyTargetTransform(FName BodyName)const
```

Returns the target transform for the given body. If physical animation component is not controlling this body, returns its current transform.

### SetSkeletalMeshComponent

```
void SetSkeletalMeshComponent(USkeletalMeshComponent InSkeletalMeshComponent)
```

Sets the skeletal mesh we are driving through physical animation. Will erase any existing physical animation data.

### ApplyPhysicalAnimationProfileBelow

```
void ApplyPhysicalAnimationProfileBelow(FName BodyName, FName ProfileName, bool bIncludeSelf = true, bool bClearNotFound = false)
```

Applies the physical animation profile to the body given and all bodies below.

**Parameters**

BodyName
FName

The body from which we'd like to start applying the physical animation profile. Finds all bodies below in the skeleton hierarchy. None implies all bodies

ProfileName
FName

The physical animation profile we'd like to apply. For each body in the physics asset we search for physical animation settings with this name.

bIncludeSelf
bool

Whether to include the provided body name in the list of bodies we act on (useful to ignore for cases where a root has multiple children)

bClearNotFound
bool

If true, bodies without the given profile name will have any existing physical animation settings cleared. If false, bodies without the given profile name are left untouched.

---

## FUNCTIONS

### GetStrengthMultiplyer

```
const float32& GetStrengthMultiplyer()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPhysicalAnimationComponent UPhysicalAnimationComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPhysicalAnimationComponent UPhysicalAnimationComponent::GetOrCreate

```
static UPhysicalAnimationComponent UPhysicalAnimationComponent::GetOrCreate(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UPhysicalAnimationComponent UPhysicalAnimationComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UPhysicalAnimationComponent::StaticClass()
```
