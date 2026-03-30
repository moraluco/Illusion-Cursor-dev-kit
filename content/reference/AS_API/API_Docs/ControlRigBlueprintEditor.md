# ControlRigBlueprintEditor

## Inheritance

ControlRigBlueprintEditor

## Description

STATIC VARIABLES CurrentlyOpenRigBlueprints static const TArray<UControlRigBlueprint> ControlRigBlueprintEditor::CurrentlyOpenRigBlueprints AvailableRigUnits static const TArray<UStruct> ControlRigBlueprintEditor::AvailableRigUnits CONTROL RIG BLUEPRINT GetModel static URigVMGraph ControlRigBlueprintEditor::GetModel( UControlRigBlueprint 	InRigBlueprint 	) GetAvailableRigUnits static TArray<UStruct> ControlRigBlueprintEditor::GetAvailableRigUnits() GetController static URigVMController ControlRigBlueprintEditor::GetController( UControlRigBlueprint 	InRigBlueprint 	) GetCurrentlyOpenRigBlueprints static TArray<UControlRigBlueprint> ControlRigBlueprintEditor::GetCurrentlyOpenRigBlueprints() GetHierarchy static URigHierarchy ControlRigBlueprintEditor::GetHierarchy( UControlRigBlueprint 	InRigBlueprint 	) GetHierarchyController static URigHierarchyController ControlRigBlueprintEditor::GetHierarchyController(

## Members

### InRigBlueprint

```
UControlRigBlueprint InRigBlueprint
```

) CastToControlRigBlueprint static void ControlRigBlueprintEditor::CastToControlRigBlueprint(

### UObject 	Object,

```
UObject 	Object, ECastToControlRigBlueprintCases& 	Branches, UControlRigBlueprint& 	AsControlRigBlueprint
```

)

### GetPreviewMesh

```
static USkeletalMesh ControlRigBlueprintEditor::GetPreviewMesh(UControlRigBlueprint InRigBlueprint)
```

RecompileVM

### static void ControlRigBlueprintEditor::RecompileVM

```
static void ControlRigBlueprintEditor::RecompileVM(UControlRigBlueprint InRigBlueprint)
```

RecompileVMIfRequired

### static void ControlRigBlueprintEditor::RecompileVMIfRequired

```
static void ControlRigBlueprintEditor::RecompileVMIfRequired(UControlRigBlueprint InRigBlueprint)
```

RequestAutoVMRecompilation

### static void ControlRigBlueprintEditor::RequestAutoVMRecompilation

```
static void ControlRigBlueprintEditor::RequestAutoVMRecompilation(UControlRigBlueprint InRigBlueprint)
```

RequestControlRigInit

### static void ControlRigBlueprintEditor::RequestControlRigInit

```
static void ControlRigBlueprintEditor::RequestControlRigInit(UControlRigBlueprint InRigBlueprint)
```

SetPreviewMesh

### static void ControlRigBlueprintEditor::SetPreviewMesh

```
static void ControlRigBlueprintEditor::SetPreviewMesh(UControlRigBlueprint InRigBlueprint, USkeletalMesh PreviewMesh, bool bMarkAsDirty = true)
```
