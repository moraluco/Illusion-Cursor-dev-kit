# UControlRigBlueprint

**Visibility:** public

## Inheritance

UBlueprint → UControlRigBlueprint

## Description

CONTROL RIG BLUEPRINT PreviewMesh const USkeletalMesh PreviewMesh LocalFunctionLibrary const URigVMFunctionLibrary LocalFunctionLibrary AllModels const TArray<URigVMGraph> AllModels

## DRAWING

### DrawContainer

```
FControlRigDrawContainer DrawContainer
```

---

## HIERARCHY

### Hierarchy

```
URigHierarchy Hierarchy
```
### HierarchyController

```
const URigHierarchyController HierarchyController
```
### MAP

```
INFLUENCE MAP
```
### Influences

```
FRigInfluenceMapPerEvent Influences
```

---

## SHAPES

### ShapeLibraries

```
TArray<TSoftObjectPtr<UControlRigShapeLibrary>> ShapeLibraries
```
### INTERFACE

```
USER INTERFACE
```
### RigGraphDisplaySettings

```
FRigGraphDisplaySettings RigGraphDisplaySettings
```

---

## VM

### FunctionLibrary

```
URigVMFunctionLibrary FunctionLibrary
```
### Controllers

```
TMap<TObjectPtr<URigVMGraph>,TObjectPtr<URigVMController>> Controllers
```
### ControlRigClass

```
const UClass ControlRigClass
```
### VMCompileSettings

```
FRigVMCompileSettings VMCompileSettings
```
### VMRuntimeSettings

```
FRigVMRuntimeSettings VMRuntimeSettings
```
### STATIC VARIABLES

```
STATIC VARIABLES CurrentlyOpenRigBlueprints static const TArray<UControlRigBlueprint> UControlRigBlueprint::CurrentlyOpenRigBlueprints AvailableRigUnits static const TArray<UStruct> UControlRigBlueprint::AvailableRigUnits CONTROL RIG BLUEPRINT GetPreviewMesh USkeletalMesh GetPreviewMesh()const
```

GetLocalFunctionLibrary

### URigVMFunctionLibrary GetLocalFunctionLibrary

```
URigVMFunctionLibrary GetLocalFunctionLibrary()const SuspendNotifications
```

void SuspendNotifications(

### bool 	bSuspendNotifs

```
bool 	bSuspendNotifs 	)
```

GeneratePythonCommands

### TArray<FString> GeneratePythonCommands

```
TArray<FString> GeneratePythonCommands(const FString InNewBlueprintName)
```

GetAllModels

### TArray<URigVMGraph> GetAllModels

```
TArray<URigVMGraph> GetAllModels()const GetController
```

URigVMController GetController(

### URigVMGraph 	InGraph	 = 	nullptr

```
URigVMGraph 	InGraph	 = 	nullptr 	) const
```

GetControllerByName

### URigVMController GetControllerByName

```
URigVMController GetControllerByName(const FString InGraphName)const
```

SetPreviewMesh

### void SetPreviewMesh

```
void SetPreviewMesh(USkeletalMesh PreviewMesh, bool bMarkAsDirty = true)
```

### IInterface_PreviewMeshProvider interface

```
IInterface_PreviewMeshProvider interface
```

RecompileVM

### void RecompileVM

```
void RecompileVM()
```

RequestControlRigInit

### void RequestControlRigInit

```
void RequestControlRigInit()
```

GetModel

### URigVMGraph GetModel

```
URigVMGraph GetModel(const UEdGraph InEdGraph = nullptr)const
```

GetOrCreateController

### URigVMController GetOrCreateController

```
URigVMController GetOrCreateController(URigVMGraph InGraph = nullptr)
```

RecompileVMIfRequired

### void RecompileVMIfRequired

```
void RecompileVMIfRequired()
```

RequestAutoVMRecompilation

### void RequestAutoVMRecompilation

```
void RequestAutoVMRecompilation()
```

---

## HIERARCHY

### GetHierarchyController

```
URigHierarchyController GetHierarchyController()
```

---

## VARIABLES

### RenameMemberVariable

```
bool RenameMemberVariable(FName InOldName, FName InNewName)
```

RemoveMemberVariable

### bool RemoveMemberVariable

```
bool RemoveMemberVariable(FName InName)
```

ChangeMemberVariableType

### bool ChangeMemberVariableType

```
bool ChangeMemberVariableType(FName InName, FString InCPPType, bool bIsPublic = false, bool bIsReadOnly = false, FString InDefaultValue = "")
```

AddMemberVariable

### FName AddMemberVariable

```
FName AddMemberVariable(FName InName, FString InCPPType, bool bIsPublic = false, bool bIsReadOnly = false, FString InDefaultValue = "")
```

---

## VM

### CreateControlRig

```
UControlRig CreateControlRig()
```

GetAvailableRigUnits

### static TArray<UStruct> UControlRigBlueprint::GetAvailableRigUnits

```
static TArray<UStruct> UControlRigBlueprint::GetAvailableRigUnits()
```

GetCurrentlyOpenRigBlueprints

### static TArray<UControlRigBlueprint> UControlRigBlueprint::GetCurrentlyOpenRigBlueprints

```
static TArray<UControlRigBlueprint> UControlRigBlueprint::GetCurrentlyOpenRigBlueprints()
```

GetControlRigClass

### UClass GetControlRigClass

```
UClass GetControlRigClass()
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UControlRigBlueprint::StaticClass()
```
