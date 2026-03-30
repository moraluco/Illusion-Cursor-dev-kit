# UKeyAsModifierInputBehavior

**Visibility:** public

## Inheritance

UInputBehavior → UKeyAsModifierInputBehavior

## Description

UKeyAsModifierInputBehavior converts a specific key press/release into a "Modifier" toggle via the IModifierToggleBehaviorTarget interface. It does not capture the key press; rather, it updates the modifier its WantsCapture call.  This means that the modifier won't be updated if another behavior captures the keyboard.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UKeyAsModifierInputBehavior::StaticClass()
```
