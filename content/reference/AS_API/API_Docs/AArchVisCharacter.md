# AArchVisCharacter

**Visibility:** public

## Inheritance

ACharacter → AArchVisCharacter

## Description

ARCHVIS CONTROLS LookUpAtRateAxisName FString LookUpAtRateAxisName

Axis name for rate-based look up/down inputs (e.g. joystick). This should match an Axis Binding in your input settings

TurnAxisName FString TurnAxisName

Axis name for direct turn left/right inputs (e.g. mouse). This should match an Axis Binding in your input settings

TurnAtRateAxisName FString TurnAtRateAxisName

Axis name for rate-based turn left/right inputs (e.g. joystick). This should match an Axis Binding in your input settings

MoveForwardAxisName FString MoveForwardAxisName

Axis name for "move forward/back" control. This should match an Axis Binding in your input settings

MoveRightAxisName FString MoveRightAxisName

Axis name for "move left/right" control. This should match an Axis Binding in your input settings

MouseSensitivityScale_Pitch float32 MouseSensitivityScale_Pitch

Controls how aggressively mouse motion translates to character rotation in the pitch axis.

MouseSensitivityScale_Yaw float32 MouseSensitivityScale_Yaw

Controls how aggressively mouse motion translates to character rotation in the yaw axis.

LookUpAxisName FString LookUpAxisName

Axis name for direct look up/down inputs (e.g. mouse). This should match an Axis Binding in your input settings

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AArchVisCharacter AArchVisCharacter::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AArchVisCharacter::StaticClass

```
static UClass AArchVisCharacter::StaticClass()
```
