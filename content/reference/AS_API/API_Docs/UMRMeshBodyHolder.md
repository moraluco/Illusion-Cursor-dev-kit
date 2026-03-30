# UMRMeshBodyHolder

**Visibility:** public

## Inheritance

UObject → UMRMeshBodyHolder

## Description

Because physics cooking uses GetOuter() to get the IInterface_CollisionDataProvider and provides no way to determine which physics body it is currently working on we are wrapping each body in this Holder so that it can be the Outer and provide the correct data.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMRMeshBodyHolder::StaticClass()
```
