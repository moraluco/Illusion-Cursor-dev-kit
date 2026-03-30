# URigVMLibraryNode

**Visibility:** public

## Inheritance

URigVMNode → URigVMLibraryNode → URigVMCollapseNode → URigVMFunctionReferenceNode

## Description

The Library Node represents a function invocation of a function specified somewhere else. The function can be expressed as a sub-graph (RigVMGroupNode) or as a referenced function (RigVMFunctionNode).

## RIGVMLIBRARYNODE

### Library

```
const URigVMFunctionLibrary Library ContainedGraph const URigVMGraph ContainedGraph RIGVMLIBRARYNODE GetLibrary URigVMFunctionLibrary GetLibrary()const
```

GetContainedGraph

### URigVMGraph GetContainedGraph

```
URigVMGraph GetContainedGraph()const STATIC FUNCTIONS
```

StaticClass

### static UClass URigVMLibraryNode::StaticClass

```
static UClass URigVMLibraryNode::StaticClass()
```
