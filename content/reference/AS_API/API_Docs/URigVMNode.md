# URigVMNode

**Visibility:** public

## Inheritance

UObject → URigVMNode → URigVMArrayNode → URigVMBranchNode → URigVMCommentNode → URigVMEnumNode

## Description

and 10 other children

The Node represents a single statement within a Graph.  Nodes can represent values such as Variables / Parameters, they can represent Function Invocations or Control Flow logic statements (such as If conditions of For loops).  Additionally Nodes are used to represent Comment statements.  Nodes contain Pins to represent parameters for Function Invocations or Value access on Variables / Parameters.

## RIGVMNODE

NodeIndex

### NodeIndex

```
const int NodeIndex
```

Returns the current index of the Node within the Graph.

### EventName

```
const FName EventName
```

Returns the name of the event

### Graph

```
const URigVMGraph Graph
```

Returns the Graph of this Node

### InjectionInfo

```
const URigVMInjectionInfo InjectionInfo
```

Returns the injection info of this Node (or nullptr)

### LinkedSourceNodes

```
const TArray<URigVMNode> LinkedSourceNodes
```

Returns a list of Nodes connected as sources to this Node as the target.

### LinkedTargetNodes

```
const TArray<URigVMNode> LinkedTargetNodes
```

Returns a list of Nodes connected as targets to this Node as the source.

### Links

```
const TArray<URigVMLink> Links
```

Returns all links to any pin on this node

### AllPinsRecursively

```
const TArray<URigVMPin> AllPinsRecursively
```

Returns all of the Pins of this Node (including SubPins).

### PreviousFName

```
const FName PreviousFName
```

Returns the name of the node prior to the renaming

### ToolTipText

```
const FText ToolTipText
```

Returns the tooltip of this node

### RootGraph

```
const URigVMGraph RootGraph
```

Returns the top level / root Graph of this Node

---

## VARIABLES

### NodeColor

```
const FLinearColor NodeColor
```
### OrphanedPins

```
const TArray<URigVMPin> OrphanedPins
```
### NodeTitle

```
const FString NodeTitle
```
### Pins

```
const TArray<URigVMPin> Pins Size const FVector2D Size Position const FVector2D Position RIGVMNODE GetToolTipText FText GetToolTipText()const
```

Returns the tooltip of this node

### FindPin

```
URigVMPin FindPin(FString InPinPath)const
```

Returns a Pin given it's partial pin path below this node (for example: "Color.R")

### GetAllPinsRecursively

```
TArray<URigVMPin> GetAllPinsRecursively()const
```

Returns all of the Pins of this Node (including SubPins).

### GetEventName

```
FName GetEventName()const
```

Returns the name of the event

### GetGraph

```
URigVMGraph GetGraph()const
```

Returns the Graph of this Node

### GetInjectionInfo

```
URigVMInjectionInfo GetInjectionInfo()const
```

Returns the injection info of this Node (or nullptr)

### GetLinkedSourceNodes

```
TArray<URigVMNode> GetLinkedSourceNodes()const
```

Returns a list of Nodes connected as sources to this Node as the target.

### GetLinkedTargetNodes

```
TArray<URigVMNode> GetLinkedTargetNodes()const
```

Returns a list of Nodes connected as targets to this Node as the source.

### GetLinks

```
TArray<URigVMLink> GetLinks()const
```

Returns all links to any pin on this node

### GetNodeColor

```
FLinearColor GetNodeColor()const
```

Returns the color of this node

### used for UI.

```
used for UI.
```

GetNodeIndex

### int GetNodeIndex

```
int GetNodeIndex()const
```

Returns the current index of the Node within the Graph.

### GetNodePath

```
FString GetNodePath(bool bRecursive = false)const
```

Returns the a . separated string containing all of the names used to reach this Node within the Graph.  (for now this is the same as the Node's name)

### GetNodeTitle

```
FString GetNodeTitle()const
```

Returns the title of this Node

### used for UI.

```
used for UI.
```

GetOrphanedPins

### const TArray<URigVMPin>& GetOrphanedPins

```
const TArray<URigVMPin>& GetOrphanedPins()const
```

Returns all of the top-level orphaned Pins of this Node.

### GetPins

```
const TArray<URigVMPin>& GetPins()const
```

Returns all of the top-level Pins of this Node.

### GetPosition

```
FVector2D GetPosition()const
```

Returns the 2d position of this node

### used for UI.

```
used for UI.
```

GetPreviousFName

### FName GetPreviousFName

```
FName GetPreviousFName()const
```

Returns the name of the node prior to the renaming

### GetRootGraph

```
URigVMGraph GetRootGraph()const
```

Returns the top level / root Graph of this Node

### GetSize

```
FVector2D GetSize()const
```

Returns the 2d size of this node

### used for UI.

```
used for UI.
```

ExecutionIsHaltedAtThisNode

### bool ExecutionIsHaltedAtThisNode

```
bool ExecutionIsHaltedAtThisNode()const HasBreakpoint
```

bool HasBreakpoint() const

### HasInputPin

```
bool HasInputPin(bool bIncludeIO = true)const
```

Returns true if the node has any input pins

### HasIOPin

```
bool HasIOPin()const
```

Returns true if the node has any io pins

### HasOrphanedPins

```
bool HasOrphanedPins()const
```

Returns true if the node has orphaned pins

### which leads to a compiler error

```
which leads to a compiler error
```

HasOutputPin

### bool HasOutputPin

```
bool HasOutputPin(bool bIncludeIO = true)const
```

Returns true if the node has any output pins

### HasPinOfDirection

```
bool HasPinOfDirection(ERigVMPinDirection InDirection)const
```

Returns true if the node has any pins of the provided direction

### IsDefinedAsConstant

```
bool IsDefinedAsConstant()const
```

Returns true if the node is defined as non-varying

### IsDefinedAsVarying

```
bool IsDefinedAsVarying()const
```

Returns true if the node is defined as non-varying

### IsEvent

```
bool IsEvent()const
```

Returns true if this Node is the beginning of a scope

### IsInjected

```
bool IsInjected()const
```

Returns true if this is an injected node.  Injected nodes are managed by pins are are not visible to the user.

### IsLinkedTo

```
bool IsLinkedTo(URigVMNode InNode)const
```

Returns true if this Node is linked to another given node through any of the Nodes' Pins.

### IsMutable

```
bool IsMutable()const
```

Returns true if this Node has side effects or internal state.

### IsPure

```
bool IsPure()const
```

Returns true if this Node has no side-effects and no internal state.

### IsSelected

```
bool IsSelected()const
```

Returns true if this Node is currently selected.

### IsVisibleInUI

```
bool IsVisibleInUI()const
```

Returns true if this should be visible in the UI

### SetExecutionIsHaltedAtThisNode

```
void SetExecutionIsHaltedAtThisNode(bool bValue)
```

SetHasBreakpoint

### void SetHasBreakpoint

```
void SetHasBreakpoint(bool bValue)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMNode::StaticClass()
```
