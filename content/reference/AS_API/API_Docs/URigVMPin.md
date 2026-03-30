# URigVMPin

**Visibility:** public

## Inheritance

UObject → URigVMPin

## Description

The Pin represents a single connector / pin on a node in the RigVM model.  Pins can be connected based on rules. Pins also provide access to a 'PinPath', which essentially represents . separated list of names to reach the pin within the owning graph. PinPaths are unique.  In comparison to the EdGraph Pin the URigVMPin supports the concept of 'SubPins', so child / parent relationships between pins. A FVector Pin for example might have its X, Y and Z components as SubPins. Array Pins will have its elements as SubPins, and so on.  A URigVMPin is owned solely by a URigVMNode.

## RIGVMPIN

### Graph

```
const URigVMGraph Graph
```

Returns the graph of this Pin.

ArraySize

### ArraySize

```
const int ArraySize
```

Returns the number of elements within an array Pin

### ArrayElementCppType

```
const FString ArrayElementCppType
```

Returns the C++ data type of an element of the Pin array

### Node

```
const URigVMNode Node
```

Returns the node of this Pin.

### ParentPin

```
const URigVMPin ParentPin
```

Returns the parent Pin

or nullptr if the Pin is nested directly below a node.

### RootPin

```
const URigVMPin RootPin
```

Returns the top-most parent Pin, so for example for "Node.Transform.Translation.X" this returns the Pin for "Node.Transform".

### PinForLink

```
const URigVMPin PinForLink
```

Returns the pin to be used for a link.  This might differ from this actual pin, since the pin might contain injected nodes.

### Enum

```
const UEnum Enum
```

Returns the enum of the data type of the Pin, or nullptr otherwise.

### ToolTipText

```
const FText ToolTipText
```

Returns the tooltip of this pin

### ScriptStruct

```
const UScriptStruct ScriptStruct
```

Returns the struct of the data type of the Pin, or nullptr otherwise.

PinIndex

### PinIndex

```
const int PinIndex
```

Returns the index of the Pin within the node / parent Pin

### OriginalPinFromInjectedNode

```
const URigVMPin OriginalPinFromInjectedNode
```

Returns the original pin for a pin on an injected node. This can be used to determine where a link should go in the user interface

---

## VARIABLES

### CustomWidgetName

```
const FName CustomWidgetName
```
### DisplayName

```
const FName DisplayName
```
### DefaultValue

```
const FString DefaultValue
```
### CPPType

```
const FString CPPType
```
### Direction

```
const ERigVMPinDirection Direction
```

if new members are added to the pin in the future it is important to search for all existing usages of all members to make sure things are copied/initialized properly

### CPPTypeObject

```
const UObject CPPTypeObject
```

serialize object ptr here to keep track of the latest version of the type object, type object can reference assets like user defined struct, which can be renamed or moved to new locations, serializing the type object with the pin ensure automatic update whenever those things happen

### SubPins

```
const TArray<URigVMPin> SubPins Links const TArray<URigVMLink> Links RIGVMPIN GetScriptStruct UScriptStruct GetScriptStruct()const
```

Returns the struct of the data type of the Pin, or nullptr otherwise.

### GetArrayElementCppType

```
FString GetArrayElementCppType()const
```

Returns the C++ data type of an element of the Pin array

### GetArraySize

```
int GetArraySize()const
```

Returns the number of elements within an array Pin

### GetCPPType

```
FString GetCPPType()const
```

Returns the C++ data type of the pin

### GetCPPTypeObject

```
UObject GetCPPTypeObject()const
```

Returns the struct of the data type of the Pin, or nullptr otherwise.

### GetCustomWidgetName

```
FName GetCustomWidgetName()const
```

Returns the name of a custom widget to be used for editing the Pin.

### GetDefaultValue

```
FString GetDefaultValue()const
```

Returns the default value of the Pin as a string.  Note that this value is computed based on the Pin's SubPins - so for example for a FVector typed Pin the default value is actually composed out of the default values of the X, Y and Z SubPins.

### GetDirection

```
ERigVMPinDirection GetDirection()const
```

Returns the direction of the pin

### GetDisplayName

```
FName GetDisplayName()const
```

Returns the display label of the pin

### GetEnum

```
UEnum GetEnum()const
```

Returns the enum of the data type of the Pin, or nullptr otherwise.

### GetGraph

```
URigVMGraph GetGraph()const
```

Returns the graph of this Pin.

### GetLinkedSourcePins

```
TArray<URigVMPin> GetLinkedSourcePins(bool bRecursive = false)const
```

Returns all of the linked source Pins, using this Pin as the target.

### GetLinkedTargetPins

```
TArray<URigVMPin> GetLinkedTargetPins(bool bRecursive = false)const
```

Returns all of the linked target Pins, using this Pin as the source.

### GetLinks

```
const TArray<URigVMLink>& GetLinks()const
```

Returns all of the links linked to this Pin.

### GetNode

```
URigVMNode GetNode()const
```

Returns the node of this Pin.

### GetOriginalPinFromInjectedNode

```
URigVMPin GetOriginalPinFromInjectedNode()const
```

Returns the original pin for a pin on an injected node. This can be used to determine where a link should go in the user interface

### GetParentPin

```
URigVMPin GetParentPin()const
```

Returns the parent Pin

### or nullptr if the Pin is nested directly below a node.

```
or nullptr if the Pin is nested directly below a node.
```

GetPinForLink

### URigVMPin GetPinForLink

```
URigVMPin GetPinForLink()const
```

Returns the pin to be used for a link.  This might differ from this actual pin, since the pin might contain injected nodes.

### GetPinIndex

```
int GetPinIndex()const
```

Returns the index of the Pin within the node / parent Pin

### GetPinPath

```
FString GetPinPath(bool bUseNodePath = false)const
```

Returns a . separated path containing all names of the pin and its owners, this includes the node name, for example "Node.Color.R"

### GetRootPin

```
URigVMPin GetRootPin()const
```

Returns the top-most parent Pin, so for example for "Node.Transform.Translation.X" this returns the Pin for "Node.Transform".

### FindSubPin

```
URigVMPin FindSubPin(FString InPinPath)const
```

Returns a SubPin given a name / path or nullptr.

### GetSegmentPath

```
FString GetSegmentPath(bool bIncludeRootPin = false)const
```

Returns a . separated path containing all names of the pin within its main memory owner / storage. This is typically used to create an offset pointer within memory (FRigVMRegisterOffset).  So for example for a PinPath such as "Node.Transform.Translation.X" the corresponding SegmentPath is "Translation.X", since the transform is the storage / memory.

### GetSourceLinks

```
TArray<URigVMLink> GetSourceLinks(bool bRecursive = false)const
```

Returns all of the source pins using this Pin as the target.

### GetSubPins

```
const TArray<URigVMPin>& GetSubPins()const
```

Returns all of the SubPins of this one.

### GetTargetLinks

```
TArray<URigVMLink> GetTargetLinks(bool bRecursive = false)const
```

Returns all of the target links, using this Pin as the source.

### GetToolTipText

```
FText GetToolTipText()const
```

Returns the tooltip of this pin

### IsArray

```
bool IsArray()const
```

Returns true if the data type of the Pin is an array

### IsArrayElement

```
bool IsArrayElement()const
```

Returns true if the Pin is a SubPin within an array

### IsDefinedAsConstant

```
bool IsDefinedAsConstant()const
```

Returns true if the pin is defined as a constant value / literal

### IsDynamicArray

```
bool IsDynamicArray()const
```

Returns true if this pin represents a dynamic array

### IsExecuteContext

```
bool IsExecuteContext()const
```

Returns true if the C++ data type is an execute context

### IsExpanded

```
bool IsExpanded()const
```

Returns true if the pin is currently expanded

### IsLinkedTo

```
bool IsLinkedTo(URigVMPin InPin)const
```

Returns true if this Pin is linked to another Pin

### IsReferenceCountedContainer

```
bool IsReferenceCountedContainer()const
```

Returns true if this data type is referenced counted

### IsRootPin

```
bool IsRootPin()const
```

Returns true if this pin is a root pin

### IsStringType

```
bool IsStringType()const
```

Returns true if the C++ data type is FString or FName

### IsStruct

```
bool IsStruct()const
```

Returns true if the data type of the Pin is a struct

### IsStructMember

```
bool IsStructMember()const
```

Returns true if the Pin is a SubPin within a struct

### IsUnknownType

```
bool IsUnknownType()const
```

Returns true if the C++ data type is unknown

### IsUObject

```
bool IsUObject()const
```

Returns true if the data type of the Pin is a uobject

### RequiresWatch

```
bool RequiresWatch(bool bCheckExposedPinChain = false)const
```

Returns true if the pin should be watched

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMPin::StaticClass()
```
