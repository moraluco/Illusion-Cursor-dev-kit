# URigHierarchyController

**Visibility:** public

## Inheritance

UObject → URigHierarchyController → VARIABLES → Hierarchy

## Description

URigHierarchy Hierarchy

## URIGHIERARCHYCONTROLLER

### ImportBonesFromAsset

```
TArray<FRigElementKey> ImportBonesFromAsset(FString InAssetPath, FName InNameSpace = NAME_None, bool bReplaceExistingBones = true, bool bRemoveObsoleteBones = true, bool bSelectBones = false, bool bSetupUndo = false)
```

Imports an existing skeleton to the hierarchy

**Parameters**

InAssetPath
FString

The path to the uasset to import from

InNameSpace
FName

The namespace to prefix the bone names with

bReplaceExistingBones
bool

If true existing bones will be removed

bRemoveObsoleteBones
bool

If true bones non-existent in the skeleton will be removed from the hierarchy

bSelectBones
bool

If true the bones will be selected upon import

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

**Returns**

The keys of the imported elements

AddControl
FRigElementKey AddControl(
FName 	InName,
FRigElementKey 	InParent,
FRigControlSettings 	InSettings,
FRigControlValue 	InValue,
bool 	bSetupUndo	 = 	true
	)

Adds a control to the hierarchy

**Parameters**

InName
FName

The suggested name of the new control - will eventually be corrected by the namespace

InParent
FRigElementKey

The (optional) parent of the new control. If you don't need a parent, pass FRigElementKey()

InSettings
FRigControlSettings

All of the control's settings

InValue
FRigControlValue

The value to use for the control

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

**Returns**

The key for the newly created control.

AddCurve
FRigElementKey AddCurve(
FName 	InName,
float32 	InValue	 = 	0.000000,
bool 	bSetupUndo	 = 	true,
bool 	bPrintPythonCommand	 = 	false
	)

Adds a curve to the hierarchy

**Parameters**

InName
FName

The suggested name of the new curve - will eventually be corrected by the namespace

InValue
float32

The value to use for the curve

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

bPrintPythonCommand
bool

If set to true a python command equivalent to this call will be printed out

**Returns**

The key for the newly created curve.

AddNull
FRigElementKey AddNull(
FName 	InName,
FRigElementKey 	InParent,
FTransform 	InTransform,
bool 	bTransformInGlobal	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommand	 = 	false
	)

Adds a null to the hierarchy

**Parameters**

InName
FName

The suggested name of the new null - will eventually be corrected by the namespace

InParent
FRigElementKey

The (optional) parent of the new null. If you don't need a parent, pass FRigElementKey()

InTransform
FTransform

The transform for the new null - either in local or global null, based on bTransformInGlobal

bTransformInGlobal
bool

Set this to true if the Transform passed is expressed in global null, false for local null.

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

bPrintPythonCommand
bool

If set to true a python command equivalent to this call will be printed out

**Returns**

The key for the newly created null.

AddParent
bool AddParent(
FRigElementKey 	InChild,
FRigElementKey 	InParent,
float32 	InWeight	 = 	0.000000,
bool 	bMaintainGlobalTransform	 = 	true,
bool 	bSetupUndo	 = 	false
	)

Adds a new parent to an element. For elements that allow only one parent the parent will be replaced (Same as ::SetParent).

**Parameters**

InChild
FRigElementKey

The key of the element to add the parent for

InParent
FRigElementKey

The key of the new parent to add

InWeight
float32

The initial weight to give to the parent

bMaintainGlobalTransform
bool

If set to true the child will stay in the same place spatially, otherwise it will maintain it's local transform (and potential move).

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

**Returns**

Returns true if successful.

AddRigidBody
FRigElementKey AddRigidBody(
FName 	InName,
FRigElementKey 	InParent,
FRigRigidBodySettings 	InSettings,
FTransform 	InLocalTransform,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommand	 = 	false
	)

Adds a rigidbody to the hierarchy

**Parameters**

InName
FName

The suggested name of the new rigidbody - will eventually be corrected by the namespace

InParent
FRigElementKey

The (optional) parent of the new rigidbody. If you don't need a parent, pass FRigElementKey()

InSettings
FRigRigidBodySettings

All of the rigidbody's settings

InLocalTransform
FTransform

The transform for the new rigidbody - in the space of the provided parent

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

bPrintPythonCommand
bool

If set to true a python command equivalent to this call will be printed out

**Returns**

The key for the newly created rigidbody.

ClearSelection
bool ClearSelection()

Clears the selection

**Returns**

Returns true if the selection was applied

DeselectElement
bool DeselectElement(
FRigElementKey 	InKey
	)

Deselects or deselects an element in the hierarchy

**Parameters**

InKey
FRigElementKey

The key of the element to deselect

**Returns**

Returns true if the selection was applied

DuplicateElements
TArray<FRigElementKey> DuplicateElements(
TArray<FRigElementKey> 	InKeys,
bool 	bSelectNewElements	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommands	 = 	false
	)

Duplicate the given elements

**Parameters**

InKeys
TArray<FRigElementKey>

The keys of the elements to duplicate

bSelectNewElements
bool

If set to true the new elements will be selected

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

**Returns**

The keys of the 4d items

ExportSelectionToText
FString ExportSelectionToText() const

Exports the selected items to text

**Returns**

The text representation of the selected items

ExportToText
FString ExportToText(
TArray<FRigElementKey> 	InKeys
	) const

Exports a list of items to text

**Parameters**

InKeys
TArray<FRigElementKey>

The keys to export to text

**Returns**

The text representation of the requested elements

GeneratePythonCommands
TArray<FString> GeneratePythonCommands()
GetControlSettings
FRigControlSettings GetControlSettings(
FRigElementKey 	InKey
	) const

Returns the control settings of a given control

**Parameters**

InKey
FRigElementKey

The key of the control to receive the settings for

**Returns**

The settings of the given control

GetHierarchy
URigHierarchy GetHierarchy() const

Returns the hierarchy currently linked to this controller

ImportBones
TArray<FRigElementKey> ImportBones(
USkeleton 	InSkeleton,
FName 	InNameSpace	 = 	NAME_None,
bool 	bReplaceExistingBones	 = 	true,
bool 	bRemoveObsoleteBones	 = 	true,
bool 	bSelectBones	 = 	false,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommand	 = 	false
	)

Imports an existing skeleton to the hierarchy

**Parameters**

InSkeleton
USkeleton

The skeleton to import

InNameSpace
FName

The namespace to prefix the bone names with

bReplaceExistingBones
bool

If true existing bones will be removed

bRemoveObsoleteBones
bool

If true bones non-existent in the skeleton will be removed from the hierarchy

bSelectBones
bool

If true the bones will be selected upon import

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

bPrintPythonCommand
bool

If set to true a python command equivalent to this call will be printed out

**Returns**

The keys of the imported elements

AddBone
FRigElementKey AddBone(
FName 	InName,
FRigElementKey 	InParent,
FTransform 	InTransform,
bool 	bTransformInGlobal	 = 	true,
ERigBoneType 	InBoneType	 = 	ERigBoneType :: User,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommand	 = 	false
	)

Adds a bone to the hierarchy

**Parameters**

InName
FName

The suggested name of the new bone - will eventually be corrected by the namespace

InParent
FRigElementKey

The (optional) parent of the new bone. If you don't need a parent, pass FRigElementKey()

InTransform
FTransform

The transform for the new bone - either in local or global space, based on bTransformInGlobal

bTransformInGlobal
bool

Set this to true if the Transform passed is expressed in global space, false for local space.

InBoneType
ERigBoneType

The type of bone to add. This can be used to differentiate between imported bones and user defined bones.

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

bPrintPythonCommand
bool

If set to true a python command equivalent to this call will be printed out

**Returns**

The key for the newly created bone.

ImportCurves
TArray<FRigElementKey> ImportCurves(
USkeleton 	InSkeleton,
FName 	InNameSpace	 = 	NAME_None,
bool 	bSelectCurves	 = 	false,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommand	 = 	false
	)

Imports all curves from a skeleton to the hierarchy

**Parameters**

InSkeleton
USkeleton

The skeleton to import the curves from

InNameSpace
FName

The namespace to prefix the bone names with

bSelectCurves
bool

If true the curves will be selected upon import

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

**Returns**

The keys of the imported elements

ImportCurvesFromAsset
TArray<FRigElementKey> ImportCurvesFromAsset(
FString 	InAssetPath,
FName 	InNameSpace	 = 	NAME_None,
bool 	bSelectCurves	 = 	false,
bool 	bSetupUndo	 = 	false
	)

Imports all curves from a skeleton to the hierarchy

**Parameters**

InAssetPath
FString

The path to the uasset to import from

InNameSpace
FName

The namespace to prefix the bone names with

bSelectCurves
bool

If true the curves will be selected upon import

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

**Returns**

The keys of the imported elements

ImportFromText
TArray<FRigElementKey> ImportFromText(
FString 	InContent,
bool 	bReplaceExistingElements	 = 	false,
bool 	bSelectNewElements	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommands	 = 	false
	)

Imports the content of a text buffer to the hierarchy

**Parameters**

InContent
FString

The string buffer representing the content to import

bReplaceExistingElements
bool

If set to true existing items will be replaced / updated with the content in the buffer

bSelectNewElements
bool

If set to true the new elements will be selected

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

MirrorElements
TArray<FRigElementKey> MirrorElements(
TArray<FRigElementKey> 	InKeys,
FRigMirrorSettings 	InSettings,
bool 	bSelectNewElements	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommands	 = 	false
	)

Mirrors the given elements

**Parameters**

InKeys
TArray<FRigElementKey>

The keys of the elements to mirror

InSettings
FRigMirrorSettings

The settings to use for the mirror operation

bSelectNewElements
bool

If set to true the new elements will be selected

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

**Returns**

The keys of the mirrored items

RemoveAllParents
bool RemoveAllParents(
FRigElementKey 	InChild,
bool 	bMaintainGlobalTransform	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommand	 = 	false
	)

Removes all parents from an element in the hierarchy.

**Parameters**

InChild
FRigElementKey

The key of the element to remove all parents for

bMaintainGlobalTransform
bool

If set to true the child will stay in the same place spatially, otherwise it will maintain it's local transform (and potential move).

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

bPrintPythonCommand
bool

If set to true a python command equivalent to this call will be printed out

**Returns**

Returns true if successful.

RemoveElement
bool RemoveElement(
FRigElementKey 	InElement,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommand	 = 	false
	)

Removes an existing element from the hierarchy

**Parameters**

InElement
FRigElementKey

The key of the element to remove

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

bPrintPythonCommand
bool

If set to true a python command equivalent to this call will be printed out

**Returns**

Returns true if successful.

RemoveParent
bool RemoveParent(
FRigElementKey 	InChild,
FRigElementKey 	InParent,
bool 	bMaintainGlobalTransform	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommand	 = 	false
	)

Removes an existing parent from an element in the hierarchy. For elements that allow only one parent the element will be unparented (same as ::RemoveAllParents)

**Parameters**

InChild
FRigElementKey

The key of the element to remove the parent for

InParent
FRigElementKey

The key of the parent to remove

bMaintainGlobalTransform
bool

If set to true the child will stay in the same place spatially, otherwise it will maintain it's local transform (and potential move).

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

bPrintPythonCommand
bool

If set to true a python command equivalent to this call will be printed out

**Returns**

Returns true if successful.

RenameElement
FRigElementKey RenameElement(
FRigElementKey 	InElement,
FName 	InName,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommand	 = 	false,
bool 	bClearSelection	 = 	true
	)

Renames an existing element in the hierarchy

**Parameters**

InElement
FRigElementKey

The key of the element to rename

InName
FName

The new name to set for the element

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

bPrintPythonCommand
bool

If set to true a python command equivalent to this call will be printed out

bClearSelection
bool

True if the selection should be cleared after a rename

**Returns**

Returns the new element key used for the element

SelectElement
bool SelectElement(
FRigElementKey 	InKey,
bool 	bSelect	 = 	true,
bool 	bClearSelection	 = 	false
	)

Selects or deselects an element in the hierarchy

**Parameters**

InKey
FRigElementKey

The key of the element to select

bSelect
bool

If set to false the element will be deselected

**Returns**

Returns true if the selection was applied

SetControlSettings
bool SetControlSettings(
FRigElementKey 	InKey,
FRigControlSettings 	InSettings,
bool 	bSetupUndo	 = 	false
	) const

Sets a control's settings given a control key

**Parameters**

InKey
FRigElementKey

The key of the control to set the settings for

**Returns**

Returns true if the settings have been set correctly

SetHierarchy
void SetHierarchy(
URigHierarchy 	InHierarchy
	)

Sets the hierarchy currently linked to this controller

SetParent
bool SetParent(
FRigElementKey 	InChild,
FRigElementKey 	InParent,
bool 	bMaintainGlobalTransform	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommand	 = 	false
	)

Sets a new parent to an element. For elements that allow more than one parent the parent list will be replaced.

**Parameters**

InChild
FRigElementKey

The key of the element to set the parent for

InParent
FRigElementKey

The key of the new parent to set

bMaintainGlobalTransform
bool

If set to true the child will stay in the same place spatially, otherwise it will maintain it's local transform (and potential move).

bSetupUndo
bool

If set to true the stack will record the change for undo / redo

bPrintPythonCommand
bool

If set to true a python command equivalent to this call will be printed out

**Returns**

Returns true if successful.

SetSelection
bool SetSelection(
TArray<FRigElementKey> 	InKeys,
bool 	bPrintPythonCommand	 = 	false
	)

Sets the selection based on a list of keys

**Parameters**

InKeys
TArray<FRigElementKey>

The array of keys of the elements to select

**Returns**

Returns true if the selection was applied

STATIC FUNCTIONS
StaticClass
static UClass URigHierarchyController::StaticClass()
