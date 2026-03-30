# URigVMGraph

**Visibility:** public

## Inheritance

UObject → URigVMGraph → URigVMFunctionLibrary

## Description

The Graph represents a Function definition using Nodes as statements.  Graphs can be compiled into a URigVM using the FRigVMCompiler.  Graphs provide access to its Nodes, Pins and Links.

## RIGVMGRAPH

### OutputArguments

```
const TArray<FRigVMGraphVariableDescription> OutputArguments
```

Returns the output arguments of this graph

### EntryNode

```
const URigVMFunctionEntryNode EntryNode
```

Returns the entry node of this graph

### GraphName

```
const FString GraphName
```

Returns the name of this graph (as defined by the node path)

### InputArguments

```
const TArray<FRigVMGraphVariableDescription> InputArguments
```

Returns the input arguments of this graph

### ParentGraph

```
const URigVMGraph ParentGraph
```

Returns the parent graph of this graph

### NodePath

```
const FString NodePath
```

Returns the path of this graph as defined by its invoking nodes

### DefaultFunctionLibrary

```
URigVMFunctionLibrary DefaultFunctionLibrary
```

Returns the locally available function library

### ParameterDescriptions

```
const TArray<FRigVMGraphParameterDescription> ParameterDescriptions
```

Returns a list of unique Parameter descriptions within this Graph.  Multiple Parameter Nodes can share the same description.

### SelectNodes

```
const TArray<FName> SelectNodes
```

Returns the names of all currently selected Nodes.

### ReturnNode

```
const URigVMFunctionReturnNode ReturnNode
```

Returns the return node of this graph

### RootGraph

```
const URigVMGraph RootGraph
```

Returns the root / top level parent graph of this graph (or this if it is the root graph)

### VariableDescriptions

```
const TArray<FRigVMGraphVariableDescription> VariableDescriptions
```

Returns a list of unique Variable descriptions within this Graph.  Multiple Variable Nodes can share the same description.

---

## VARIABLES

### Links

```
const TArray<URigVMLink> Links Nodes const TArray<URigVMNode> Nodes RIGVMGRAPH GetNodes const TArray<URigVMNode>& GetNodes()const
```

Returns all of the Nodes within this Graph.

### FindNode

```
URigVMNode FindNode(FString InNodePath)const
```

Returns a Node given its path (or nullptr).  (for now this is the same as finding a node by its name.)

### FindNodeByName

```
URigVMNode FindNodeByName(FName InNodeName)const
```

Returns a Node given its name (or nullptr).

### FindPin

```
URigVMPin FindPin(FString InPinPath)const
```

Returns a Pin given its path, for example "Node.Color.R".

### GetContainedGraphs

```
TArray<URigVMGraph> GetContainedGraphs(bool bRecursive = false)const
```

Returns all of the contained graphs

### GetDefaultFunctionLibrary

```
URigVMFunctionLibrary GetDefaultFunctionLibrary()const
```

Returns the locally available function library

### GetEntryNode

```
URigVMFunctionEntryNode GetEntryNode()const
```

Returns the entry node of this graph

### GetGraphName

```
FString GetGraphName()const
```

Returns the name of this graph (as defined by the node path)

### GetInputArguments

```
TArray<FRigVMGraphVariableDescription> GetInputArguments()const
```

Returns the input arguments of this graph

### GetLinks

```
const TArray<URigVMLink>& GetLinks()const
```

Returns all of the Links within this Graph.

### GetLocalVariables

```
TArray<FRigVMGraphVariableDescription> GetLocalVariables(bool bIncludeInputArguments = false)const
```

Returns the local variables of this function

### GetNodePath

```
FString GetNodePath()const
```

Returns the path of this graph as defined by its invoking nodes

### FindLink

```
URigVMLink FindLink(FString InLinkPinPathRepresentation)const
```

Returns a link given its string representation, for example "NodeA.Color.R -> NodeB.Translation.X"

### GetOutputArguments

```
TArray<FRigVMGraphVariableDescription> GetOutputArguments()const
```

Returns the output arguments of this graph

### GetParameterDescriptions

```
TArray<FRigVMGraphParameterDescription> GetParameterDescriptions()const
```

Returns a list of unique Parameter descriptions within this Graph.  Multiple Parameter Nodes can share the same description.

### GetParentGraph

```
URigVMGraph GetParentGraph()const
```

Returns the parent graph of this graph

### GetReturnNode

```
URigVMFunctionReturnNode GetReturnNode()const
```

Returns the return node of this graph

### GetRootGraph

```
URigVMGraph GetRootGraph()const
```

Returns the root / top level parent graph of this graph (or this if it is the root graph)

### GetSelectNodes

```
const TArray<FName>& GetSelectNodes()const
```

Returns the names of all currently selected Nodes.

### GetVariableDescriptions

```
TArray<FRigVMGraphVariableDescription> GetVariableDescriptions()const
```

Returns a list of unique Variable descriptions within this Graph.  Multiple Variable Nodes can share the same description.

### IsNodeSelected

```
bool IsNodeSelected(FName InNodeName)const
```

Returns true if a Node with a given name is selected.

### IsRootGraph

```
bool IsRootGraph()const
```

Returns true if this graph is a root / top level graph

### IsTopLevelGraph

```
bool IsTopLevelGraph()const
```

Returns true if this graph is the top level graph

### SetDefaultFunctionLibrary

```
void SetDefaultFunctionLibrary(URigVMFunctionLibrary InFunctionLibrary)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMGraph::StaticClass()
```
