# ULocalSingleClickInputBehavior

**Visibility:** public

## Inheritance

USingleClickInputBehavior → ULocalSingleClickInputBehavior

## Description

An implementation of USingleClickInputBehavior that also implements IClickBehaviorTarget directly, via a set of local lambda functions. To use/customize this class, the client replaces the lambda functions with their own.  This avoids having to create a separate IClickBehaviorTarget implementation for trivial use-cases.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULocalSingleClickInputBehavior::StaticClass()
```
