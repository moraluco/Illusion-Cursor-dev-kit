# URigVMController

**Visibility:** public

## Inheritance

UObject → URigVMController

## Description

The Controller is the sole authority to perform changes on the Graph. The Controller itself is stateless.  The Controller offers a Modified event to subscribe to for user interface views - so they can be informed about any change that's happening within the Graph.  The Controller routes all changes through the Graph itself, so you can have N Controllers performing edits on 1 Graph, and N Views subscribing to 1 Controller.  In Python you can also subscribe to this event to be able to react to topological changes of the Graph there.

## RIGVMCONTROLLER

### TopLevelGraph

```
const URigVMGraph TopLevelGraph
```

Returns the top level graph

### Graph

```
URigVMGraph Graph
```

Returns the currently edited Graph of this controller.

---

## RIGVMCONTROLLER

### OnExternalVariableTypeChanged

```
void OnExternalVariableTypeChanged(FName InVarName, FString InCPPType, UObject InCPPTypeObject, bool bSetupUndoRedo)
```

Changes the data type of all nodes matching a given variable name

AddArrayNodeFromObjectPath

### URigVMArrayNode AddArrayNodeFromObjectPath

```
URigVMArrayNode AddArrayNodeFromObjectPath(ERigVMOpCode InOpCode, FString InCPPType, FString InCPPTypeObjectPath, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Array Node to the edited Graph given a struct object path name.  This causes a NodeAdded modified event.

### AddArrayPin

```
FString AddArrayPin(FString InArrayPinPath, FString InDefaultValue = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds an array element pin to the end of an array pin.  This causes a PinArraySizeChanged modified event.

### AddBranchNode

```
URigVMBranchNode AddBranchNode(FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a branch node to the graph.  Branch nodes can be used to split the execution of into multiple branches, allowing to drive behavior by logic.

### AddCommentNode

```
URigVMCommentNode AddCommentNode(
```

FString 	InCommentText,

### FVector2D 	InPosition,

```
FVector2D InPosition, FVector2D InSize = FVector2D(400.000000, 300.000000),
```

FLinearColor 	InColor	 = 	FLinearColor ( 0.000000 , 0.000000 , 0.000000 , 1.000000 ),

FString 	InNodeName	 = 	"",

bool 	bSetupUndoRedo	 = 	true,

bool 	bPrintPythonCommand	 = 	false

)

Adds a Comment Node to the edited Graph.  Comments can be used to annotate the Graph.  This causes a NodeAdded modified event.

### AddEnumNode

```
URigVMEnumNode AddEnumNode(FName InCPPTypeObjectPath, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds an enum node to the graph Enum nodes can be used to represent constant enum values within the graph

AddExposedPin

### FName AddExposedPin

```
FName AddExposedPin(FName InPinName, ERigVMPinDirection InDirection, FString InCPPType, FName InCPPTypeObjectPath, FString InDefaultValue, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds an exposed pin to the graph controlled by this

AddFreeRerouteNode

### URigVMRerouteNode AddFreeRerouteNode

```
URigVMRerouteNode AddFreeRerouteNode(bool bShowAsFullNode, FString InCPPType, FName InCPPTypeObjectPath, bool bIsConstant, FName InCustomWidgetName, FString InDefaultValue, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true)
```

Adds a free Reroute Node

AddFunctionReferenceNode

### URigVMFunctionReferenceNode AddFunctionReferenceNode

```
URigVMFunctionReferenceNode AddFunctionReferenceNode(
```

URigVMLibraryNode 	InFunctionDefinition,

FVector2D 	InNodePosition,

FString 	InNodeName	 = 	"",

bool 	bSetupUndoRedo	 = 	true,

bool 	bPrintPythonCommand	 = 	false

)

Adds a function reference / invocation to the graph

### AddFunctionToLibrary

```
URigVMLibraryNode AddFunctionToLibrary(FName InFunctionName, bool bMutable, FVector2D InNodePosition, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a function definition to a function library graph

### AddIfNode

```
URigVMIfNode AddIfNode(FString InCPPType, FName InCPPTypeObjectPath, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds an if node to the graph.  If nodes can be used to pick between two values based on a condition.

### AddIfNodeFromStruct

```
URigVMIfNode AddIfNodeFromStruct(UScriptStruct InScriptStruct, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true)
```

AddInjectedNode

### URigVMInjectionInfo AddInjectedNode

```
URigVMInjectionInfo AddInjectedNode(FString InPinPath, bool bAsInput, UScriptStruct InScriptStruct, FName InMethodName, FName InInputPinName, FName InOutputPinName, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Function / Struct Node to the edited Graph as an injected node UnitNode represent a RIGVM_METHOD declaration on a USTRUCT.  This causes a NodeAdded modified event.

AddInjectedNodeFromStructPath

### URigVMInjectionInfo AddInjectedNodeFromStructPath

```
URigVMInjectionInfo AddInjectedNodeFromStructPath(FString InPinPath, bool bAsInput, FString InScriptStructPath, FName InMethodName, FName InInputPinName, FName InOutputPinName, FString InNodeName = "", bool bSetupUndoRedo = true)
```

Adds a Function / Struct Node to the edited Graph as an injected node UnitNode represent a RIGVM_METHOD declaration on a USTRUCT.  This causes a NodeAdded modified event.

### AddLink

```
bool AddLink(FString InOutputPinPath, FString InInputPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a link to the graph.  This causes a LinkAdded modified event.

### AddLocalVariable

```
FRigVMGraphVariableDescription AddLocalVariable(FName InVariableName, FString InCPPType, UObject InCPPTypeObject, FString InDefaultValue, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Add a local variable to the graph

AddLocalVariableFromObjectPath

### FRigVMGraphVariableDescription AddLocalVariableFromObjectPath

```
FRigVMGraphVariableDescription AddLocalVariableFromObjectPath(
```

FName 	InVariableName,

FString 	InCPPType,

FString 	InCPPTypeObjectPath,

FString 	InDefaultValue,

bool 	bSetupUndoRedo	 = 	true

)

Add a local variable to the graph given a struct object path name.

AddParameterNode

### URigVMParameterNode AddParameterNode

```
URigVMParameterNode AddParameterNode(FName InParameterName, FString InCPPType, UObject InCPPTypeObject, bool bIsInput, FString InDefaultValue, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Parameter Node to the edited Graph.  Parameters represent input or output arguments to the Graph / Function.  Input Parameters are constant values / literals.  This causes a NodeAdded modified event.

AddParameterNodeFromObjectPath

### URigVMParameterNode AddParameterNodeFromObjectPath

```
URigVMParameterNode AddParameterNodeFromObjectPath(FName InParameterName, FString InCPPType, FString InCPPTypeObjectPath, bool bIsInput, FString InDefaultValue, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Parameter Node to the edited Graph given a struct object path name.  Parameters represent input or output arguments to the Graph / Function.  Input Parameters are constant values / literals.  This causes a NodeAdded modified event.

### AddPrototypeNode

```
URigVMPrototypeNode AddPrototypeNode(FName InNotation, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a prototype node to the graph.

### AddRerouteNodeOnLink

```
URigVMRerouteNode AddRerouteNodeOnLink(URigVMLink InLink, bool bShowAsFullNode, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Reroute Node on an existing Link to the edited Graph.  Reroute Nodes can be used to visually improve the data flow, they don't require any additional memory though and are purely cosmetic. This causes a NodeAdded modified event.

### AddRerouteNodeOnLinkPath

```
URigVMRerouteNode AddRerouteNodeOnLinkPath(FString InLinkPinPathRepresentation, bool bShowAsFullNode, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Reroute Node on an existing Link to the edited Graph given the Link's string representation.  Reroute Nodes can be used to visually improve the data flow, they don't require any additional memory though and are purely cosmetic. This causes a NodeAdded modified event.

AddRerouteNodeOnPin

### URigVMRerouteNode AddRerouteNodeOnPin

```
URigVMRerouteNode AddRerouteNodeOnPin(FString InPinPath, bool bAsInput, bool bShowAsFullNode, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Reroute Node on an existing Pin to the editor Graph.  Reroute Nodes can be used to visually improve the data flow, they don't require any additional memory though and are purely cosmetic. This causes a NodeAdded modified event.

### AddSelectNode

```
URigVMSelectNode AddSelectNode(FString InCPPType, FName InCPPTypeObjectPath, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a select node to the graph.  Select nodes can be used to pick between multiple values based on an index.

### AddSelectNodeFromStruct

```
URigVMSelectNode AddSelectNodeFromStruct(UScriptStruct InScriptStruct, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true)
```

AddUnitNode

### URigVMUnitNode AddUnitNode

```
URigVMUnitNode AddUnitNode(UScriptStruct InScriptStruct, FName InMethodName, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Function / Struct Node to the edited Graph.  UnitNode represent a RIGVM_METHOD declaration on a USTRUCT.  This causes a NodeAdded modified event.

### AddUnitNodeFromStructPath

```
URigVMUnitNode AddUnitNodeFromStructPath(FString InScriptStructPath, FName InMethodName, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Function / Struct Node to the edited Graph given its struct object path name.  UnitNode represent a RIGVM_METHOD declaration on a USTRUCT.  This causes a NodeAdded modified event.

AddVariableNode

### URigVMVariableNode AddVariableNode

```
URigVMVariableNode AddVariableNode(FName InVariableName, FString InCPPType, UObject InCPPTypeObject, bool bIsGetter, FString InDefaultValue, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Variable Node to the edited Graph.  Variables represent local work state for the function and can be read from and written to.  This causes a NodeAdded modified event.

AddVariableNodeFromObjectPath

### URigVMVariableNode AddVariableNodeFromObjectPath

```
URigVMVariableNode AddVariableNodeFromObjectPath(FName InVariableName, FString InCPPType, FString InCPPTypeObjectPath, bool bIsGetter, FString InDefaultValue, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Variable Node to the edited Graph given a struct object path name.  Variables represent local work state for the function and can be read from (bIsGetter == true) or written to (bIsGetter == false).  This causes a NodeAdded modified event.

### BindPinToVariable

```
bool BindPinToVariable(FString InPinPath, FString InNewBoundVariablePath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Binds a pin to a variable (or removes the binding given NAME_None) This causes a PinBoundVariableChanged modified event.

### BreakAllLinks

```
bool BreakAllLinks(FString InPinPath, bool bAsInput = true, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Removes all links on a given pin from the graph.  This might cause multiple LinkRemoved modified event.

### BreakLink

```
bool BreakLink(FString InOutputPinPath, FString InInputPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Removes a link from the graph.  This causes a LinkRemoved modified event.

### CancelUndoBracket

```
bool CancelUndoBracket()
```

Cancels an undo bracket / scoped transaction.  This is primarily useful for Python.  This causes a UndoBracketCanceled modified event.

### CanImportNodesFromText

```
bool CanImportNodesFromText(FString InText)
```

Exports the given nodes as text

### ChangeExposedPinType

```
bool ChangeExposedPinType(FName InPinName, FString InCPPType, FName InCPPTypeObjectPath, bool& bSetupUndoRedo, bool bSetupOrphanPins = true, bool bPrintPythonCommand = false)
```

Changes the type of an exposed pin in the graph controlled by this

### ClearArrayPin

```
bool ClearArrayPin(FString InArrayPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Removes all (but one) array element pin from an array pin.  This causes a PinArraySizeChanged modified event.

### ClearNodeSelection

```
bool ClearNodeSelection(bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Deselects all currently selected nodes in the graph.  This might cause several NodeDeselected modified event.

### CloseUndoBracket

```
bool CloseUndoBracket()
```

Closes an undo bracket / scoped transaction.  This is primarily useful for Python.  This causes a UndoBracketClosed modified event.

### CollapseNodes

```
URigVMCollapseNode CollapseNodes(TArray<FName> InNodeNames, FString InCollapseNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Turns a series of nodes into a Collapse node

### DuplicateArrayPin

```
FString DuplicateArrayPin(FString InArrayElementPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Duplicates an array element pin.  This causes a PinArraySizeChanged modified event.

### EjectNodeFromPin

```
URigVMNode EjectNodeFromPin(FString InPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Ejects the last injected node on a pin

### EnableReporting

```
void EnableReporting(bool bEnabled = true)
```

Enables or disables the error reporting of this Controller.

### ExpandLibraryNode

```
TArray<URigVMNode> ExpandLibraryNode(FName InNodeName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Turns a library node into its contained nodes

### ExportNodesToText

```
FString ExportNodesToText(TArray<FName> InNodeNames)
```

Exports the given nodes as text

### ExportSelectedNodesToText

```
FString ExportSelectedNodesToText()
```

Exports the selected nodes as text

### GeneratePythonCommands

```
TArray<FString> GeneratePythonCommands()
```

GetGraph

### URigVMGraph GetGraph

```
URigVMGraph GetGraph()const
```

Returns the currently edited Graph of this controller.

### GetPinDefaultValue

```
FString GetPinDefaultValue(FString InPinPath)
```

Returns the default value of a pin given its pinpath.

### GetTopLevelGraph

```
URigVMGraph GetTopLevelGraph()const
```

Returns the top level graph

### ImportNodesFromText

```
TArray<FName> ImportNodesFromText(FString InText, bool bSetupUndoRedo = true, bool bPrintPythonCommands = false)
```

Exports the given nodes as text

### InsertArrayPin

```
FString InsertArrayPin(FString InArrayPinPath, int InIndex = - 1, FString InDefaultValue = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Inserts an array element pin into an array pin.  This causes a PinArraySizeChanged modified event.

### IsReportingEnabled

```
bool IsReportingEnabled()const
```

Returns true if reporting is enabled

### LocalizeFunction

```
URigVMLibraryNode LocalizeFunction(
```

URigVMLibraryNode 	InFunctionDefinition,

bool 	bLocalizeDependentPrivateFunctions	 = 	true,

bool 	bSetupUndoRedo	 = 	true,

bool 	bPrintPythonCommand	 = 	false

)

Copies a function declaration into this graph's local function library

### LocalizeFunctions

```
TMap<URigVMLibraryNode, URigVMLibraryNode> LocalizeFunctions(
```

TArray<URigVMLibraryNode> 	InFunctionDefinitions,

bool 	bLocalizeDependentPrivateFunctions	 = 	true,

bool 	bSetupUndoRedo	 = 	true,

bool 	bPrintPythonCommand	 = 	false

)

### Copies a series of function declaratioms into this graph's local function library

```
Copies a series of function declaratioms into this graph's local function library
```

MakeBindingsFromVariableNode

### bool MakeBindingsFromVariableNode

```
bool MakeBindingsFromVariableNode(FName InNodeName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Turns a variable node into one or more bindings

### MakeVariableNodeFromBinding

```
bool MakeVariableNodeFromBinding(FString InPinPath, FVector2D InNodePosition, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Turns a binding to a variable node

### OnExternalVariableRemoved

```
void OnExternalVariableRemoved(FName InVarName, bool bSetupUndoRedo)
```

Removes all nodes related to a given variable

### OnExternalVariableRenamed

```
void OnExternalVariableRenamed(FName InOldVarName, FName InNewVarName, bool bSetupUndoRedo)
```

Renames the variable name in all relevant nodes

AddArrayNode

### URigVMArrayNode AddArrayNode

```
URigVMArrayNode AddArrayNode(ERigVMOpCode InOpCode, FString InCPPType, UObject InCPPTypeObject, FVector2D InPosition, FString InNodeName = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Adds a Array Node to the edited Graph.  This causes a NodeAdded modified event.

### OnExternalVariableTypeChangedFromObjectPath

```
void OnExternalVariableTypeChangedFromObjectPath(FName InVarName, FString InCPPType, FString InCPPTypeObjectPath, bool bSetupUndoRedo)
```

OpenUndoBracket

### bool OpenUndoBracket

```
bool OpenUndoBracket(FString InTitle)
```

Opens an undo bracket / scoped transaction for a series of actions to be performed as one step on the Undo stack. This is primarily useful for Python.  This causes a UndoBracketOpened modified event.

### PopGraph

```
URigVMGraph PopGraph(bool bSetupUndoRedo = true)
```

Pops the last graph off the stack This causes a GraphChanged modified event.

### PromoteCollapseNodeToFunctionReferenceNode

```
FName PromoteCollapseNodeToFunctionReferenceNode(
```

FName 	InNodeName,

bool 	bSetupUndoRedo	 = 	true,

bool 	bPrintPythonCommand	 = 	false,

FString 	InExistingFunctionDefinitionPath	 = 	""

)

### Turns a collapse node into a function node

```
Turns a collapse node into a function node
```

PromoteFunctionReferenceNodeToCollapseNode

### FName PromoteFunctionReferenceNodeToCollapseNode

```
FName PromoteFunctionReferenceNodeToCollapseNode(FName InNodeName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false, bool bRemoveFunctionDefinition = false)
```

Turns a collapse node into a function node

### PromotePinToVariable

```
bool PromotePinToVariable(FString InPinPath, bool bCreateVariableNode, FVector2D InNodePosition, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Promotes a pin to a variable

### PushGraph

```
void PushGraph(URigVMGraph InGraph, bool bSetupUndoRedo = true)
```

Pushes a new graph to the stack This causes a GraphChanged modified event.

### Redo

```
bool Redo()
```

Re-does the last action on the stack.  Note: This should really only be used for unit tests, use the GEditor's main Undo method instead.

### RefreshVariableNode

```
void RefreshVariableNode(FName InNodeName, FName InVariableName, FString InCPPType, UObject InCPPTypeObject, bool bSetupUndoRedo, bool bSetupOrphanPins = true)
```

Refreshes the variable node with the new data

### RemoveArrayPin

```
bool RemoveArrayPin(FString InArrayElementPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Removes an array element pin from an array pin.  This causes a PinArraySizeChanged modified event.

### RemoveExposedPin

```
bool RemoveExposedPin(FName InPinName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Removes an exposed pin from the graph controlled by this

### RemoveFunctionFromLibrary

```
bool RemoveFunctionFromLibrary(FName InFunctionName, bool bSetupUndoRedo = true)
```

Removes a function from a function library graph

### RemoveInjectedNode

```
bool RemoveInjectedNode(FString InPinPath, bool bAsInput, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Removes an injected node This causes a NodeRemoved modified event.

### RemoveLocalVariable

```
bool RemoveLocalVariable(FName InVariableName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Remove a local variable from the graph

### RemoveNode

```
bool RemoveNode(URigVMNode InNode, bool bSetupUndoRedo = true, bool bRecursive = false, bool bPrintPythonCommand = false, bool bRelinkPins = false)
```

Removes a node from the graph This causes a NodeRemoved modified event.

### RemoveNodeByName

```
bool RemoveNodeByName(FName InNodeName, bool bSetupUndoRedo = true, bool bRecursive = false, bool bPrintPythonCommand = false, bool bRelinkPins = false)
```

Removes a node from the graph given the node's name.  This causes a NodeRemoved modified event.

### RenameExposedPin

```
bool RenameExposedPin(FName InOldPinName, FName InNewPinName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Renames an exposed pin in the graph controlled by this

### RenameFunction

```
bool RenameFunction(FName InOldFunctionName, FName InNewFunctionName, bool bSetupUndoRedo = true)
```

Renames a function in the function library

### RenameLocalVariable

```
bool RenameLocalVariable(FName InVariableName, FName InNewVariableName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Rename a local variable from the graph

### RenameNode

```
bool RenameNode(URigVMNode InNode, FName InNewName, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Renames a node in the graph This causes a NodeRenamed modified event.

### RenameParameter

```
bool RenameParameter(FName InOldName, FName InNewName, bool bSetupUndoRedo = true)
```

Renames a parameter in the graph.  This causes a ParameterRenamed modified event.

### RenameVariable

```
bool RenameVariable(FName InOldName, FName InNewName, bool bSetupUndoRedo = true)
```

Renames a variable in the graph.  This causes a VariableRenamed modified event.

### ReplaceParameterNodeWithVariable

```
URigVMVariableNode ReplaceParameterNodeWithVariable(FName InNodeName, FName InVariableName, FString InCPPType, UObject InCPPTypeObject, bool bSetupUndoRedo)
```

Refreshes the variable node with the new data

### ResetPinDefaultValue

```
bool ResetPinDefaultValue(FString InPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Resets the default value of a pin given its pinpath.  This causes a PinDefaultValueChanged modified event.

### SelectNode

```
bool SelectNode(URigVMNode InNode, bool bSelect = true, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Selects a single node in the graph.  This causes a NodeSelected / NodeDeselected modified event.

### SelectNodeByName

```
bool SelectNodeByName(FName InNodeName, bool bSelect = true, bool bSetupUndoRedo = true)
```

Selects a single node in the graph by name.  This causes a NodeSelected / NodeDeselected modified event.

### SetArrayPinSize

```
bool SetArrayPinSize(FString InArrayPinPath, int InSize, FString InDefaultValue = "", bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Sets the size of the array pin This causes a PinArraySizeChanged modified event.

SetCommentText

### bool SetCommentText

```
bool SetCommentText(URigVMNode InNode, FString InCommentText, const int& InCommentFontSize, const bool& bInCommentBubbleVisible, const bool& bInCommentColorBubble, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Sets the comment text and properties of a comment node in the graph.  This causes a CommentTextChanged modified event.

SetCommentTextByName

### bool SetCommentTextByName

```
bool SetCommentTextByName(FName InNodeName, FString InCommentText, const int& InCommentFontSize, const bool& bInCommentBubbleVisible, const bool& bInCommentColorBubble, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Sets the comment text and properties of a comment node in the graph by name.  This causes a CommentTextChanged modified event.

### SetExposedPinIndex

```
bool SetExposedPinIndex(FName InPinName, int InNewIndex, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Sets the index for an exposed pin. This can be used to move the pin up and down on the node.

### SetGraph

```
void SetGraph(URigVMGraph InGraph)
```

Sets the currently edited Graph of this controller.  This causes a GraphChanged modified event.

### SetIsRunningUnitTest

```
void SetIsRunningUnitTest(bool bIsRunning)
```

Helper function to disable a series of checks that can be ignored during a unit test

### SetLocalVariableDefaultValue

```
bool SetLocalVariableDefaultValue(FName InVariableName, FString InDefaultValue, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false, bool bNotify = true)
```

SetLocalVariableType

### bool SetLocalVariableType

```
bool SetLocalVariableType(FName InVariableName, FString InCPPType, UObject InCPPTypeObject, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Sets the type of the local variable

### SetLocalVariableTypeFromObjectPath

```
bool SetLocalVariableTypeFromObjectPath(FName InVariableName, FString InCPPType, FString InCPPTypeObjectPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

SetNodeCategory

### bool SetNodeCategory

```
bool SetNodeCategory(URigVMCollapseNode InNode, FString InCategory, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)
```

Sets the category of a node in the graph.  This causes a NodeCategoryChanged modified event.

### SetNodeCategoryByName

```
bool SetNodeCategoryByName(FName InNodeName, FString InCategory, bool bSetupUndoRedo = true, bool bMergeUndoAction = false)
```

Sets the category of a node in the graph.  This causes a NodeCategoryChanged modified event.

### SetNodeColor

```
bool SetNodeColor(URigVMNode InNode, FLinearColor InColor, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)
```

Sets the color of a node in the graph.  This causes a NodeColorChanged modified event.

### SetNodeColorByName

```
bool SetNodeColorByName(FName InNodeName, FLinearColor InColor, bool bSetupUndoRedo = true, bool bMergeUndoAction = false)
```

Sets the color of a node in the graph by name.  This causes a NodeColorChanged modified event.

### SetNodeDescription

```
bool SetNodeDescription(URigVMCollapseNode InNode, FString InDescription, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)
```

Sets the function description of a node in the graph.  This causes a NodeDescriptionChanged modified event.

### SetNodeDescriptionByName

```
bool SetNodeDescriptionByName(FName InNodeName, FString InDescription, bool bSetupUndoRedo = true, bool bMergeUndoAction = false)
```

Sets the keywords of a node in the graph.  This causes a NodeDescriptionChanged modified event.

### SetNodeKeywords

```
bool SetNodeKeywords(URigVMCollapseNode InNode, FString InKeywords, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)
```

Sets the keywords of a node in the graph.  This causes a NodeKeywordsChanged modified event.

### SetNodeKeywordsByName

```
bool SetNodeKeywordsByName(FName InNodeName, FString InKeywords, bool bSetupUndoRedo = true, bool bMergeUndoAction = false)
```

Sets the keywords of a node in the graph.  This causes a NodeKeywordsChanged modified event.

### SetNodePosition

```
bool SetNodePosition(URigVMNode InNode, FVector2D InPosition, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)
```

Sets the position of a node in the graph.  This causes a NodePositionChanged modified event.

### SetNodePositionByName

```
bool SetNodePositionByName(FName InNodeName, FVector2D InPosition, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)
```

Sets the position of a node in the graph by name.  This causes a NodePositionChanged modified event.

### SetNodeSelection

```
bool SetNodeSelection(TArray<FName> InNodeNames, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Selects the nodes given the selection This might cause several NodeDeselected modified event.

### SetNodeSize

```
bool SetNodeSize(URigVMNode InNode, FVector2D InSize, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)
```

Sets the size of a node in the graph.  This causes a NodeSizeChanged modified event.

### SetNodeSizeByName

```
bool SetNodeSizeByName(FName InNodeName, FVector2D InSize, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)
```

Sets the size of a node in the graph by name.  This causes a NodeSizeChanged modified event.

### SetPinDefaultValue

```
bool SetPinDefaultValue(FString InPinPath, FString InDefaultValue, bool bResizeArrays = true, bool bSetupUndoRedo = true, bool bMergeUndoAction = false, bool bPrintPythonCommand = false)
```

Sets the default value of a pin given its pinpath.  This causes a PinDefaultValueChanged modified event.

### SetPinExpansion

```
bool SetPinExpansion(FString InPinPath, bool bIsExpanded, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Sets the pin to be expanded or not This causes a PinExpansionChanged modified event.

### SetPinIsWatched

```
bool SetPinIsWatched(FString InPinPath, bool bIsWatched, bool bSetupUndoRedo = true)
```

Sets the pin to be watched (or not) This causes a PinWatchedChanged modified event.

### SetRemappedVariable

```
bool SetRemappedVariable(URigVMFunctionReferenceNode InFunctionRefNode, FName InInnerVariableName, FName InOuterVariableName, bool bSetupUndoRedo = true)
```

Sets the remapped variable on a function reference node

### SetRerouteCompactness

```
bool SetRerouteCompactness(URigVMNode InNode, bool bShowAsFullNode, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Sets the compactness of a reroute node in the graph.  This causes a RerouteCompactnessChanged modified event.

### SetRerouteCompactnessByName

```
bool SetRerouteCompactnessByName(FName InNodeName, bool bShowAsFullNode, bool bSetupUndoRedo = true)
```

Sets the compactness of a reroute node in the graph by name.  This causes a RerouteCompactnessChanged modified event.

### UnbindPinFromVariable

```
bool UnbindPinFromVariable(FString InPinPath, bool bSetupUndoRedo = true, bool bPrintPythonCommand = false)
```

Removes the binging of a pin to a variable This causes a PinBoundVariableChanged modified event.

### Undo

```
bool Undo()
```

Un-does the last action on the stack.  Note: This should really only be used for unit tests, use the GEditor's main Undo method instead.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMController::StaticClass()
```
