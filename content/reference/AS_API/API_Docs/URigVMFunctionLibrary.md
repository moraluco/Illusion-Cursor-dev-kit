# URigVMFunctionLibrary

**Visibility:** public

## Inheritance

URigVMGraph → URigVMFunctionLibrary

## Description

The Function Library is a graph used only to store the sub graphs used for functions.

## RIGVMGRAPH

### Functions

```
const TArray<URigVMLibraryNode> Functions
```

Returns all of the stored functions

---

## RIGVMGRAPH

### FindFunctionForNode

```
URigVMLibraryNode FindFunctionForNode(URigVMNode InNode)const
```

Finds a function by a node within a function (or a sub graph of that)

### GetFunctions

```
TArray<URigVMLibraryNode> GetFunctions()const
```

Returns all of the stored functions

### GetReferencePathsForFunction

```
TArray<FString> GetReferencePathsForFunction(FName InFunctionName)
```

Returns all references for a given function name

### GetReferencesForFunction

```
TArray<TSoftObjectPtr<URigVMFunctionReferenceNode>> GetReferencesForFunction(FName InFunctionName)
```

Returns all references for a given function name

### FindFunction

```
URigVMLibraryNode FindFunction(FName InFunctionName)const
```

Finds a function by name

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMFunctionLibrary::StaticClass()
```
