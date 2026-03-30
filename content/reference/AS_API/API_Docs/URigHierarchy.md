# URigHierarchy

**Visibility:** public

## Inheritance

UObject → URigHierarchy → VARIABLES → Curves

## Description

const TArray<FRigElementKey> Curves

## URIGHIERARCHY

### Reset

```
void Reset()
```

Clears the whole hierarchy and removes all elements.

### CopyHierarchy

```
void CopyHierarchy(URigHierarchy InHierarchy)
```

Copies the contents of a hierarchy onto this one

### CopyPose

```
void CopyPose(URigHierarchy InHierarchy, bool bCurrent, bool bInitial)
```

Copies the contents of a hierarchy onto this one

### FindBone

```
FRigBoneElement FindBone(FRigElementKey InKey)const
```

Returns bone element for a given key, for scripting purpose only, for cpp usage, use Find<FRigBoneElement>()

**Parameters**

InKey
FRigElementKey

The key of the bone element to retrieve.

FindControl
FRigControlElement FindControl(
FRigElementKey 	InKey
	) const

Returns control element for a given key, for scripting purpose only, for cpp usage, use Find<FRigControlElement>()

**Parameters**

InKey
FRigElementKey

The key of the control element to retrieve.

FindNull
FRigNullElement FindNull(
FRigElementKey 	InKey
	) const

Returns null element for a given key, for scripting purpose only, for cpp usage, use Find<FRigControlElement>()

**Parameters**

InKey
FRigElementKey

The key of the null element to retrieve.

GetAllKeys
TArray<FRigElementKey> GetAllKeys(
bool 	bTraverse	 = 	true
	) const

Returns all element keys of this hierarchy

**Parameters**

bTraverse
bool

If set to true the keys will be returned by depth first traversal

**Returns**

The keys of all elements

GetBones
TArray<FRigElementKey> GetBones(
bool 	bTraverse	 = 	true
	) const

Returns all Bone elements

**Parameters**

bTraverse
bool

Returns the elements in order of a depth first traversal

GetChildren
TArray<FRigElementKey> GetChildren(
FRigElementKey 	InKey,
bool 	bRecursive	 = 	false
	) const

Returns the child elements of a given element key

**Parameters**

InKey
FRigElementKey

The key of the element to retrieve the children for

bRecursive
bool

If set to true grand-children will also be returned etc

**Returns**

Returns the child elements

GetControls
TArray<FRigElementKey> GetControls(
bool 	bTraverse	 = 	true
	) const

Returns all Control elements

**Parameters**

bTraverse
bool

Returns the elements in order of a depth first traversal

GetController
URigHierarchyController GetController(
bool 	bCreateIfNeeded	 = 	true
	)

Returns a controller for this hierarchy

**Parameters**

bCreateIfNeeded
bool

Creates a controller if needed

**Returns**

The Controller for this hierarchy

GetControlValue
FRigControlValue GetControlValue(

FRigElementKey 	InKey,
ERigControlValueType 	InValueType	 = 	ERigControlValueType :: Current

) const

Returns a control's current value given its key

**Parameters**

InKey
FRigElementKey

The key of the element to retrieve the current value for

InValueType
ERigControlValueType

The type of value to return

**Returns**

Returns the current value of the control

GetControlValueByIndex
FRigControlValue GetControlValueByIndex(

int 	InElementIndex,
ERigControlValueType 	InValueType	 = 	ERigControlValueType :: Current

) const

Returns a control's current value given its index

**Parameters**

InElementIndex
int

The index of the element to retrieve the current value for

InValueType
ERigControlValueType

The type of value to return

**Returns**

Returns the current value of the control

GetCurves
TArray<FRigElementKey> GetCurves() const

Returns all Curve elements

GetCurveValue
float32 GetCurveValue(
FRigElementKey 	InKey
	) const

Returns a curve's value given its key

**Parameters**

InKey
FRigElementKey

The key of the element to retrieve the value for

**Returns**

Returns the value of the curve

GetCurveValueByIndex
float32 GetCurveValueByIndex(
int 	InElementIndex
	) const

Returns a curve's value given its index

**Parameters**

InElementIndex
int

The index of the element to retrieve the value for

**Returns**

Returns the value of the curve

GetFirstParent
FRigElementKey GetFirstParent(
FRigElementKey 	InKey
	) const

Returns the first parent element of a given element key

**Parameters**

InKey
FRigElementKey

The key of the element to retrieve the parents for

**Returns**

Returns the first parent element

GetGlobalControlOffsetTransform
FTransform GetGlobalControlOffsetTransform(
FRigElementKey 	InKey,
bool 	bInitial	 = 	false
	) const

Returns the global offset transform for a given control element.

**Parameters**

InKey
FRigElementKey

The key of the control to retrieve the transform for

bInitial
bool

If true the initial transform will be used

**Returns**

The global offset transform

GetGlobalControlOffsetTransformByIndex
FTransform GetGlobalControlOffsetTransformByIndex(
int 	InElementIndex,
bool 	bInitial	 = 	false
	) const

Returns the global offset transform for a given control element.

**Parameters**

InElementIndex
int

The index of the control to retrieve the transform for

bInitial
bool

If true the initial transform will be used

**Returns**

The global offset transform

GetGlobalControlShapeTransform
FTransform GetGlobalControlShapeTransform(
FRigElementKey 	InKey,
bool 	bInitial	 = 	false
	) const

Returns the global shape transform for a given control element.

**Parameters**

InKey
FRigElementKey

The key of the control to retrieve the transform for

bInitial
bool

If true the initial transform will be used

**Returns**

The global shape transform

GetGlobalControlShapeTransformByIndex
FTransform GetGlobalControlShapeTransformByIndex(
int 	InElementIndex,
bool 	bInitial	 = 	false
	) const

Returns the global shape transform for a given control element.

**Parameters**

InElementIndex
int

The index of the control to retrieve the transform for

bInitial
bool

If true the initial transform will be used

**Returns**

The global shape transform

GetGlobalTransform
FTransform GetGlobalTransform(
FRigElementKey 	InKey,
bool 	bInitial	 = 	false
	) const

Returns the global current or initial value for a given key.  If the key is invalid FTransform::Identity will be returned.

**Parameters**

InKey
FRigElementKey

The key to retrieve the transform for

bInitial
bool

If true the initial transform will be used

**Returns**

The global current or initial transform's value.

GetGlobalTransformByIndex
FTransform GetGlobalTransformByIndex(
int 	InElementIndex,
bool 	bInitial	 = 	false
	) const

Returns the global current or initial value for a element index.  If the index is invalid FTransform::Identity will be returned.

**Parameters**

InElementIndex
int

The index to retrieve the transform for

bInitial
bool

If true the initial transform will be used

**Returns**

The global current or initial transform's value.

GetIndex
int GetIndex(
FRigElementKey 	InKey
	) const

Returns the index of an element given its key

**Parameters**

InKey
FRigElementKey

The key of the element to retrieve the index for

**Returns**

The index of the element or INDEX_NONE

GetKey
FRigElementKey GetKey(
int 	InElementIndex
	) const

Returns the key of an element given its index

**Parameters**

InElementIndex
int

The index of the element to retrieve the key for

**Returns**

The key of an element given its index

GetLocalTransform
FTransform GetLocalTransform(
FRigElementKey 	InKey,
bool 	bInitial	 = 	false
	) const

Returns the local current or initial value for a given key.  If the key is invalid FTransform::Identity will be returned.

**Parameters**

InKey
FRigElementKey

The key to retrieve the transform for

bInitial
bool

If true the initial transform will be used

**Returns**

The local current or initial transform's value.

GetLocalTransformByIndex
FTransform GetLocalTransformByIndex(
int 	InElementIndex,
bool 	bInitial	 = 	false
	) const

Returns the local current or initial value for a element index.  If the index is invalid FTransform::Identity will be returned.

**Parameters**

InElementIndex
int

The index to retrieve the transform for

bInitial
bool

If true the initial transform will be used

**Returns**

The local current or initial transform's value.

GetNulls
TArray<FRigElementKey> GetNulls(
bool 	bTraverse	 = 	true
	) const

Returns all Null elements

**Parameters**

bTraverse
bool

Returns the elements in order of a depth first traversal

GetNumberOfParents
int GetNumberOfParents(
FRigElementKey 	InKey
	) const

Returns the number of parents of an element

**Parameters**

InKey
FRigElementKey

The key of the element to retrieve the number of parents for

**Returns**

Returns the number of parents of an element

GetParents
TArray<FRigElementKey> GetParents(
FRigElementKey 	InKey,
bool 	bRecursive	 = 	false
	) const

Returns the parent elements of a given element key

**Parameters**

InKey
FRigElementKey

The key of the element to retrieve the parents for

bRecursive
bool

If set to true parents of parents will also be returned

**Returns**

Returns the parent elements

GetParentTransform
FTransform GetParentTransform(
FRigElementKey 	InKey,
bool 	bInitial	 = 	false
	) const

Returns the global current or initial value for a given key.  If the element does not have a parent FTransform::Identity will be returned.

**Parameters**

InKey
FRigElementKey

The key of the element to retrieve the transform for

bInitial
bool

If true the initial transform will be used

**Returns**

The element's parent's global current or initial transform's value.

GetParentTransformByIndex
FTransform GetParentTransformByIndex(
int 	InElementIndex,
bool 	bInitial	 = 	false
	) const

Returns the global current or initial value for a given element index.  If the element does not have a parent FTransform::Identity will be returned.

**Parameters**

InElementIndex
int

The index of the element to retrieve the transform for

bInitial
bool

If true the initial transform will be used

**Returns**

The element's parent's global current or initial transform's value.

GetParentWeight
FRigElementWeight GetParentWeight(
FRigElementKey 	InChild,
FRigElementKey 	InParent,
bool 	bInitial	 = 	false
	) const

Returns the weight of a parent below a multi parent element

**Parameters**

InChild
FRigElementKey

The key of the multi parented element

InParent
FRigElementKey

The key of the parent to look up the weight for

bInitial
bool

If true the initial weights will be used

**Returns**

Returns the weight of a parent below a multi parent element, or FLT_MAX if the parent is invalid

GetParentWeightArray
TArray<FRigElementWeight> GetParentWeightArray(
FRigElementKey 	InChild,
bool 	bInitial	 = 	false
	) const

Returns the weights of all parents below a multi parent element

**Parameters**

InChild
FRigElementKey

The key of the multi parented element

bInitial
bool

If true the initial weights will be used

**Returns**

Returns the weight of a parent below a multi parent element, or FLT_MAX if the parent is invalid

GetPose
FRigPose GetPose(
bool 	bInitial	 = 	false
	) const

Returns the current / initial pose of the hierarchy

**Parameters**

bInitial
bool

If set to true the initial pose will be returned

**Returns**

The pose of the hierarchy

GetPreviousName
FName GetPreviousName(
FRigElementKey 	InKey
	) const

Returns the previous name of an element prior to a rename operation

**Parameters**

InKey
FRigElementKey

The key of the element to request the old name for

GetPreviousParent
FRigElementKey GetPreviousParent(
FRigElementKey 	InKey
	) const

Returns the previous parent of an element prior to a reparent operation

**Parameters**

InKey
FRigElementKey

The key of the element to request the old parent  for

GetReferences
TArray<FRigElementKey> GetReferences(
bool 	bTraverse	 = 	true
	) const

Returns all references

**Parameters**

bTraverse
bool

Returns the elements in order of a depth first traversal

GetRigidBodies
TArray<FRigElementKey> GetRigidBodies(
bool 	bTraverse	 = 	true
	) const

Returns all RigidBody elements

**Parameters**

bTraverse
bool

Returns the elements in order of a depth first traversal

GetSelectedKeys
TArray<FRigElementKey> GetSelectedKeys(

ERigElementType 	InTypeFilter	 = 	ERigElementType :: All

) const

Returns the keys of selected elements @InTypeFilter The types to retrieve the selection for

**Returns**

An array of the currently selected elements

IsParentedTo
bool IsParentedTo(
FRigElementKey 	InChild,
FRigElementKey 	InParent
	) const

Returns true if an element is parented to another element

**Parameters**

InChild
FRigElementKey

The key of the child element to check for a parent

InParent
FRigElementKey

The key of the parent element to check for

**Returns**

True if the child is parented to the parent

IsSelected
bool IsSelected(
FRigElementKey 	InKey
	) const

Returns true if a given element is selected

**Parameters**

InKey
FRigElementKey

The key to check

**Returns**

true if a given element is selected

IsSelectedByIndex
bool IsSelectedByIndex(
int 	InIndex
	) const

Returns true if a given element is selected

**Parameters**

InIndex
int

The index to check

**Returns**

true if a given element is selected

IsValidIndex
bool IsValidIndex(
int 	InElementIndex
	) const

Returns true if the provided element index is valid

**Parameters**

InElementIndex
int

The index to validate

**Returns**

Returns true if the provided element index is valid

Num
int Num() const

Returns the number of elements in the Hierarchy.

**Returns**

The number of elements in the Hierarchy

Contains
bool Contains(
FRigElementKey 	InKey
	) const

Returns true if the provided element key is valid

**Parameters**

InKey
FRigElementKey

The key to validate

**Returns**

Returns true if the provided element key is valid

ResetCurveValues
void ResetCurveValues()

Resets all curves to 0.0

ResetPoseToInitial
void ResetPoseToInitial(
ERigElementType 	InTypeFilter
	)

Resets the current pose of a filtered lost if elements to the initial / ref pose.

SendAutoKeyEvent
void SendAutoKeyEvent(
FRigElementKey 	InElement,
float32 	InOffsetInSeconds	 = 	0.000000,
bool 	bAsynchronous	 = 	true
	)

Sends an autokey event from the hierarchy to the world

**Parameters**

InElement
FRigElementKey

The element to send the autokey for

InOffsetInSeconds
float32

The time offset in seconds

bAsynchronous
bool

If set to true the event will go on a thread safe queue

SetControlOffsetTransform
void SetControlOffsetTransform(
FRigElementKey 	InKey,
FTransform 	InTransform,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommands	 = 	false
	)

Sets the offset transform for a given control element by key

**Parameters**

InKey
FRigElementKey

The key of the control element to set the offset transform for

InTransform
FTransform

The new offset transform value to set

bInitial
bool

If true the initial value will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetControlOffsetTransformByIndex
void SetControlOffsetTransformByIndex(
int 	InElementIndex,
FTransform 	InTransform,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommands	 = 	false
	)

Sets the local offset transform for a given control element by index

**Parameters**

InElementIndex
int

The index of the control element to set the offset transform for

InTransform
FTransform

The new local offset transform value to set

bInitial
bool

If true the initial value will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetControlSettings
void SetControlSettings(
FRigElementKey 	InKey,
FRigControlSettings 	InSettings,
bool 	bSetupUndo	 = 	false,
bool 	bForce	 = 	false,
bool 	bPrintPythonCommands	 = 	false
	)

Sets the control settings for a given control element by key

**Parameters**

InKey
FRigElementKey

The key of the control element to set the settings for

InSettings
FRigControlSettings

The new control settings value to set

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetControlSettingsByIndex
void SetControlSettingsByIndex(
int 	InElementIndex,
FRigControlSettings 	InSettings,
bool 	bSetupUndo	 = 	false,
bool 	bForce	 = 	false,
bool 	bPrintPythonCommands	 = 	false
	)

Sets the control settings for a given control element by index

**Parameters**

InElementIndex
int

The index of the control element to set the settings for

InSettings
FRigControlSettings

The new control settings value to set

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetControlShapeTransform
void SetControlShapeTransform(
FRigElementKey 	InKey,
FTransform 	InTransform,
bool 	bInitial	 = 	false,
bool 	bSetupUndo	 = 	false
	)

Sets the shape transform for a given control element by key

**Parameters**

InKey
FRigElementKey

The key of the control element to set the shape transform for

InTransform
FTransform

The new shape transform value to set

bInitial
bool

If true the initial value will be used

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetControlShapeTransformByIndex
void SetControlShapeTransformByIndex(
int 	InElementIndex,
FTransform 	InTransform,
bool 	bInitial	 = 	false,
bool 	bSetupUndo	 = 	false
	)

Sets the local shape transform for a given control element by index

**Parameters**

InElementIndex
int

The index of the control element to set the shape transform for

InTransform
FTransform

The new local shape transform value to set

bInitial
bool

If true the initial value will be used

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetControlValue
void SetControlValue(

FRigElementKey 	InKey,
FRigControlValue 	InValue,
ERigControlValueType 	InValueType	 = 	ERigControlValueType :: Current,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommands	 = 	false

)

Sets a control's current value given its key

**Parameters**

InKey
FRigElementKey

The key of the element to set the current value for

InValue
FRigControlValue

The value to set on the control

InValueType
ERigControlValueType

The type of value to set

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetControlValueByIndex
void SetControlValueByIndex(

int 	InElementIndex,
FRigControlValue 	InValue,
ERigControlValueType 	InValueType	 = 	ERigControlValueType :: Current,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommands	 = 	false

)

Sets a control's current value given its index

**Parameters**

InElementIndex
int

The index of the element to set the current value for

InValue
FRigControlValue

The value to set on the control

InValueType
ERigControlValueType

The type of value to set

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetControlVisibility
void SetControlVisibility(
FRigElementKey 	InKey,
bool 	bVisibility
	)

Sets a control's current visibility based on a key

**Parameters**

InKey
FRigElementKey

The key of the element to set the visibility for

bVisibility
bool

The visibility to set on the control

SetControlVisibilityByIndex
void SetControlVisibilityByIndex(
int 	InElementIndex,
bool 	bVisibility
	)

Sets a control's current visibility based on a key

**Parameters**

InElementIndex
int

The index of the element to set the visibility for

bVisibility
bool

The visibility to set on the control

SetCurveValue
void SetCurveValue(
FRigElementKey 	InKey,
float32 	InValue,
bool 	bSetupUndo	 = 	false
	)

Sets a curve's value given its key

**Parameters**

InKey
FRigElementKey

The key of the element to set the value for

InValue
float32

The value to set on the curve

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetCurveValueByIndex
void SetCurveValueByIndex(
int 	InElementIndex,
float32 	InValue,
bool 	bSetupUndo	 = 	false
	)

Sets a curve's value given its index

**Parameters**

InElementIndex
int

The index of the element to set the value for

InValue
float32

The value to set on the curve

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetGlobalTransform
void SetGlobalTransform(
FRigElementKey 	InKey,
FTransform 	InTransform,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true,
bool 	bSetupUndo	 = 	false
	)

Sets the global current or initial transform for a given key.

**Parameters**

InKey
FRigElementKey

The key to set the transform for

InTransform
FTransform

The new transform value to set

bInitial
bool

If true the initial transform will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetGlobalTransformByIndex
void SetGlobalTransformByIndex(
int 	InElementIndex,
FTransform 	InTransform,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true,
bool 	bSetupUndo	 = 	false
	)

Sets the global current or initial transform for a given element index.

**Parameters**

InElementIndex
int

The index of the element to set the transform for

InTransform
FTransform

The new transform value to set

bInitial
bool

If true the initial transform will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetLocalTransform
void SetLocalTransform(
FRigElementKey 	InKey,
FTransform 	InTransform,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommands	 = 	false
	)

Sets the local current or initial transform for a given key.

**Parameters**

InKey
FRigElementKey

The key to set the transform for

InTransform
FTransform

The new transform value to set

bInitial
bool

If true the initial transform will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetLocalTransformByIndex
void SetLocalTransformByIndex(
int 	InElementIndex,
FTransform 	InTransform,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true,
bool 	bSetupUndo	 = 	false,
bool 	bPrintPythonCommands	 = 	false
	)

Sets the local current or initial transform for a given element index.

**Parameters**

InElementIndex
int

The index of the element to set the transform for

InTransform
FTransform

The new transform value to set

bInitial
bool

If true the initial transform will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

bSetupUndo
bool

If true the transform stack will be setup for undo / redo

SetParentWeight
bool SetParentWeight(
FRigElementKey 	InChild,
FRigElementKey 	InParent,
FRigElementWeight 	InWeight,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true
	)

Sets the weight of a parent below a multi parent element

**Parameters**

InChild
FRigElementKey

The key of the multi parented element

InParent
FRigElementKey

The key of the parent to look up the weight for

InWeight
FRigElementWeight

The new weight to set for the parent

bInitial
bool

If true the initial weights will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

**Returns**

Returns true if changing the weight was successful

SetParentWeightArray
bool SetParentWeightArray(
FRigElementKey 	InChild,
TArray<FRigElementWeight> 	InWeights,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true
	)

Sets the all of the weights of the parents of a multi parent element

**Parameters**

InChild
FRigElementKey

The key of the multi parented element

InWeights
TArray<FRigElementWeight>

The new weights to set for the parents

bInitial
bool

If true the initial weights will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

**Returns**

Returns true if changing the weight was successful

SetPose
void SetPose(
FRigPose 	InPose
	)

Sets the current / initial pose of the hierarchy

**Parameters**

InPose
FRigPose

The pose to set on the hierarchy

SortKeys
TArray<FRigElementKey> SortKeys(
TArray<FRigElementKey> 	InKeys
	) const

Sorts the input key list by traversing the hierarchy

**Parameters**

InKeys
TArray<FRigElementKey>

The keys to sort

**Returns**

The sorted keys

SwitchToDefaultParent
bool SwitchToDefaultParent(
FRigElementKey 	InChild,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true
	)

Switches a multi parent element to its first parent

**Parameters**

InChild
FRigElementKey

The key of the multi parented element

bInitial
bool

If true the initial weights will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

**Returns**

Returns true if changing the weight was successful

SwitchToParent
bool SwitchToParent(
FRigElementKey 	InChild,
FRigElementKey 	InParent,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true
	)

Switches a multi parent element to a single parent.  This sets the new parent's weight to 1.0 and disables weights for all other potential parents.

**Parameters**

InChild
FRigElementKey

The key of the multi parented element

InParent
FRigElementKey

The key of the parent to look up the weight for

bInitial
bool

If true the initial weights will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

**Returns**

Returns true if changing the weight was successful

SwitchToWorldSpace
bool SwitchToWorldSpace(
FRigElementKey 	InChild,
bool 	bInitial	 = 	false,
bool 	bAffectChildren	 = 	true
	)

Switches a multi parent element to world space.  This injects a world space reference.

**Parameters**

InChild
FRigElementKey

The key of the multi parented element

bInitial
bool

If true the initial weights will be used

bAffectChildren
bool

If set to false children will not move (maintain global).

**Returns**

Returns true if changing the weight was successful

GetEulerTransformFromControlValue
static FEulerTransform URigHierarchy::GetEulerTransformFromControlValue(

FRigControlValue 	InValue

)

Returns the contained FEulerTransform value from a a Rig Control Value

**Parameters**

InValue
FRigControlValue

The Rig Control value to convert from

**Returns**

The converted FEulerTransform value

GetFloatFromControlValue
static float32 URigHierarchy::GetFloatFromControlValue(
FRigControlValue 	InValue
	)

Returns the contained float value from a a Rig Control Value

**Parameters**

InValue
FRigControlValue

The Rig Control value to convert from

**Returns**

The converted float value

GetIntFromControlValue
static int URigHierarchy::GetIntFromControlValue(
FRigControlValue 	InValue
	)

Returns the contained int32 value from a a Rig Control Value

**Parameters**

InValue
FRigControlValue

The Rig Control value to convert from

**Returns**

The converted int32 value

GetRotatorFromControlValue
static FRotator URigHierarchy::GetRotatorFromControlValue(
FRigControlValue 	InValue
	)

Returns the contained FRotator value from a a Rig Control Value

**Parameters**

InValue
FRigControlValue

The Rig Control value to convert from

**Returns**

The converted FRotator value

GetTransformFromControlValue
static FTransform URigHierarchy::GetTransformFromControlValue(
FRigControlValue 	InValue
	)

Returns the contained FTransform value from a a Rig Control Value

**Parameters**

InValue
FRigControlValue

The Rig Control value to convert from

**Returns**

The converted FTransform value

GetTransformNoScaleFromControlValue
static FTransformNoScale URigHierarchy::GetTransformNoScaleFromControlValue(

FRigControlValue 	InValue

)

Returns the contained FTransformNoScale value from a a Rig Control Value

**Parameters**

InValue
FRigControlValue

The Rig Control value to convert from

**Returns**

The converted FTransformNoScale value

GetVector2DFromControlValue
static FVector2D URigHierarchy::GetVector2DFromControlValue(
FRigControlValue 	InValue
	)

Returns the contained FVector2D value from a a Rig Control Value

**Parameters**

InValue
FRigControlValue

The Rig Control value to convert from

**Returns**

The converted FVector2D value

GetVectorFromControlValue
static FVector URigHierarchy::GetVectorFromControlValue(
FRigControlValue 	InValue
	)

Returns the contained FVector value from a a Rig Control Value

**Parameters**

InValue
FRigControlValue

The Rig Control value to convert from

**Returns**

The converted FVector value

MakeControlValueFromBool
static FRigControlValue URigHierarchy::MakeControlValueFromBool(
bool 	InValue
	)

Creates a rig control value from a bool value

**Parameters**

InValue
bool

The value to create the rig control value from

**Returns**

The converted control rig val ue

MakeControlValueFromEulerTransform
static FRigControlValue URigHierarchy::MakeControlValueFromEulerTransform(

FEulerTransform 	InValue

)

Creates a rig control value from a FEulerTransform value

**Parameters**

InValue
FEulerTransform

The value to create the rig control value from

**Returns**

The converted control rig val ue

MakeControlValueFromFloat
static FRigControlValue URigHierarchy::MakeControlValueFromFloat(
float32 	InValue
	)

Creates a rig control value from a float value

**Parameters**

InValue
float32

The value to create the rig control value from

**Returns**

The converted control rig val ue

MakeControlValueFromInt
static FRigControlValue URigHierarchy::MakeControlValueFromInt(
int 	InValue
	)

Creates a rig control value from a int32 value

**Parameters**

InValue
int

The value to create the rig control value from

**Returns**

The converted control rig val ue

MakeControlValueFromRotator
static FRigControlValue URigHierarchy::MakeControlValueFromRotator(
FRotator 	InValue
	)

Creates a rig control value from a FRotator value

**Parameters**

InValue
FRotator

The value to create the rig control value from

**Returns**

The converted control rig val ue

MakeControlValueFromTransform
static FRigControlValue URigHierarchy::MakeControlValueFromTransform(
FTransform 	InValue
	)

Creates a rig control value from a FTransform value

**Parameters**

InValue
FTransform

The value to create the rig control value from

**Returns**

The converted control rig val ue

MakeControlValueFromTransformNoScale
static FRigControlValue URigHierarchy::MakeControlValueFromTransformNoScale(

FTransformNoScale 	InValue

)

Creates a rig control value from a FTransformNoScale value

**Parameters**

InValue
FTransformNoScale

The value to create the rig control value from

**Returns**

The converted control rig val ue

MakeControlValueFromVector
static FRigControlValue URigHierarchy::MakeControlValueFromVector(
FVector 	InValue
	)

Creates a rig control value from a FVector value

**Parameters**

InValue
FVector

The value to create the rig control value from

**Returns**

The converted control rig val ue

MakeControlValueFromVector2D
static FRigControlValue URigHierarchy::MakeControlValueFromVector2D(
FVector2D 	InValue
	)

Creates a rig control value from a FVector2D value

**Parameters**

InValue
FVector2D

The value to create the rig control value from

**Returns**

The converted control rig val ue

STATIC FUNCTIONS
StaticClass
static UClass URigHierarchy::StaticClass()
