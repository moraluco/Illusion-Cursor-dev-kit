# UArchVisCharMovementComponent

**Visibility:** public

## Inheritance

UCharacterMovementComponent → UArchVisCharMovementComponent

## Description

ARCHVIS CONTROLS RotationalDeceleration FRotator RotationalDeceleration

Controls how fast the character's turn rate decelerates to 0 when user stops turning

MaxRotationalVelocity FRotator MaxRotationalVelocity

Fastest possible turn rate

MinPitch float32 MinPitch

Controls how far down you can look

MaxPitch float32 MaxPitch

Controls how far up you can look

WalkingFriction float32 WalkingFriction

Controls walking deceleration.

WalkingSpeed float32 WalkingSpeed

How fast the character can walk.

WalkingAcceleration float32 WalkingAcceleration

How fast the character accelerates.

RotationalAcceleration FRotator RotationalAcceleration

Controls how fast the character's turn rate accelerates when rotating and looking up/down

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UArchVisCharMovementComponent UArchVisCharMovementComponent::Get(
```

AActor 	Actor,

## Members

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UArchVisCharMovementComponent UArchVisCharMovementComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UArchVisCharMovementComponent UArchVisCharMovementComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UArchVisCharMovementComponent::StaticClass()
```
