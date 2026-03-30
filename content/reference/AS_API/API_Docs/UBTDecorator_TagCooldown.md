# UBTDecorator_TagCooldown

**Visibility:** public

## Inheritance

UBTDecorator → UBTDecorator_TagCooldown

## Description

Cooldown decorator node.  A decorator node that bases its condition on whether a cooldown timer based on a gameplay tag has expired.

## DECORATOR

### CooldownDuration

```
float32 CooldownDuration
```

Value we will add or set to the Cooldown tag when this node is deactivated.

### bAddToExistingDuration

```
bool bAddToExistingDuration
```

True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time).

### bActivatesCooldown

```
bool bActivatesCooldown
```

Whether or not we are adding/setting to the cooldown tag's value when the decorator deactivates.

### CooldownTag

```
FGameplayTag CooldownTag
```

Gameplay tag that will be used for the cooldown.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTDecorator_TagCooldown::StaticClass()
```
