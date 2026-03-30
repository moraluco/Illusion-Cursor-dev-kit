# UBTTask_SetTagCooldown

**Visibility:** public

## Inheritance

UBTTaskNode → UBTTask_SetTagCooldown

## Description

Cooldown task node.  Sets a cooldown tag value.  Use with cooldown tag decorators to prevent behavior tree execution.

## COOLDOWN

### CooldownDuration

```
float32 CooldownDuration
```

Value we will add or set to the Cooldown tag when this task runs.

### CooldownTag

```
FGameplayTag CooldownTag
```

Gameplay tag that will be used for the cooldown.

---

## DECORATOR

### bAddToExistingDuration

```
bool bAddToExistingDuration
```

True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time).

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTTask_SetTagCooldown::StaticClass()
```
