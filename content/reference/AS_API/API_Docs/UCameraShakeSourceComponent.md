# UCameraShakeSourceComponent

**Visibility:** public

## Inheritance

USceneComponent → UCameraShakeSourceComponent → ATTENUATION → InnerAttenuationRadius

## Description

float32 InnerAttenuationRadius

Under this distance from the source, the camera shakes are at full intensity

OuterAttenuationRadius float32 OuterAttenuationRadius

Outside of this distance from the source, the camera shakes don't apply at all

Attenuation ECameraShakeAttenuation Attenuation

The attenuation profile for how camera shakes' intensity falls off with distance

## CAMERASHAKE

### bAutoStart

```
bool bAutoStart
```
### CameraShake

```
TSubclassOf<UCameraShakeBase> CameraShake CAMERASHAKE StopAllCameraShakesOfType void StopAllCameraShakesOfType(TSubclassOf<UCameraShakeBase> InCameraShake, bool bImmediately = true)
```

Stops a camera shake originating from this source

### Start

```
void Start()
```

StartCameraShake

### void StartCameraShake

```
void StartCameraShake(
```

TSubclassOf<UCameraShakeBase> 	InCameraShake,

### float32 	Scale	 = 	1.000000,

```
float32 Scale = 1.000000, ECameraShakePlaySpace PlaySpace = ECameraShakePlaySpace :: CameraLocal, FRotator UserPlaySpaceRot = FRotator()
```

)

### Starts a new camera shake originating from this source, and apply it on all player controllers

```
Starts a new camera shake originating from this source, and apply it on all player controllers
```

StopAllCameraShakes

### void StopAllCameraShakes

```
void StopAllCameraShakes(bool bImmediately = true)
```

Stops all currently active camera shakes that are originating from this source from all player controllers

### GetAttenuationFactor

```
float32 GetAttenuationFactor(FVector Location)const
```

Computes an attenuation factor from this source

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UCameraShakeSourceComponent UCameraShakeSourceComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UCameraShakeSourceComponent UCameraShakeSourceComponent::GetOrCreate

```
static UCameraShakeSourceComponent UCameraShakeSourceComponent::GetOrCreate(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UCameraShakeSourceComponent UCameraShakeSourceComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UCameraShakeSourceComponent::StaticClass()
```
