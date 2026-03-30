# UBTDecorator_SetTagCooldown

**Visibility:** public

## Inheritance

UBTDecorator → UBTDecorator_SetTagCooldown

## Description

Set tag cooldown decorator node.  A decorator node that sets a gameplay tag cooldown.

## DECORATOR

### CooldownDuration

```
float32 CooldownDuration
```

Value we will add or set to the Cooldown tag when this task runs.

### bAddToExistingDuration

```
bool bAddToExistingDuration
```

True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time).

### CooldownTag

```
FGameplayTag CooldownTag
```

Gameplay tag that will be used for the cooldown.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTDecorator_SetTagCooldown::StaticClass()
```
