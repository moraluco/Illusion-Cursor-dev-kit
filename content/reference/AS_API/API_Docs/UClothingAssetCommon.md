# UClothingAssetCommon

**Visibility:** public

## Inheritance

UClothingAssetBase → UClothingAssetCommon

## Description

Implementation of non-solver specific, but common Engine related functionality.

Solver specific implementations may wish to override this class to construct their own default instances of child classes, such as \c ClothSimConfig and \c CustomData, as well as override the \c AddNewLod() factory to build their own implementation of \c UClothLODDataBase.

## CONFIG

### ClothConfigs

```
TMap<FName,TObjectPtr<UClothConfigBase>> ClothConfigs
```

Simulation specific cloth parameters.  Use GetClothConfig() to retrieve the correct parameters/config type for the desired cloth simulation system.

### PhysicsAsset

```
UPhysicsAsset PhysicsAsset
```

The physics asset to extract collisions from when building a simulation.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UClothingAssetCommon::StaticClass()
```
