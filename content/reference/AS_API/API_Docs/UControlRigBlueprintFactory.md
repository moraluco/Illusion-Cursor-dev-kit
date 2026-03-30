# UControlRigBlueprintFactory

**Visibility:** public

## Inheritance

UFactory → UControlRigBlueprintFactory

## Description

CONTROL RIG FACTORY ParentClass TSubclassOf<UControlRig> ParentClass

The parent class of the created blueprint

### CONTROL RIG

```
CONTROL RIG CreateNewControlRigAsset static UControlRigBlueprint UControlRigBlueprintFactory::CreateNewControlRigAsset(
```

## Members

### InDesiredPackagePath

```
FString InDesiredPackagePath
```

)

Create a new control rig asset within the contents space of the project.

**Parameters**

InDesiredPackagePath
FString

The package path to use for the control rig asset

CreateControlRigFromSkeletalMeshOrSkeleton
static UControlRigBlueprint UControlRigBlueprintFactory::CreateControlRigFromSkeletalMeshOrSkeleton(

UObject 	InSelectedObject

)

Create a new control rig asset within the contents space of the project based on a skeletal mesh or skeleton object.

STATIC FUNCTIONS
StaticClass
static UClass UControlRigBlueprintFactory::StaticClass()
