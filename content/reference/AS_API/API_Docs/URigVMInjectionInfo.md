# URigVMInjectionInfo

**Visibility:** public

## Inheritance

UObject → URigVMInjectionInfo

## Description

The Injected Info is used for injecting a node on a pin.  Injected nodes are not visible to the user, but they are normal nodes on the graph.

## RIGVMINJECTIONINFO

### Pin

```
const URigVMPin Pin
```

Returns the pin of this injected node.

### Graph

```
const URigVMGraph Graph
```

Returns the graph of this injected node.

---

## RIGVMINJECTIONINFO

### GetPin

```
URigVMPin GetPin()const
```

Returns the pin of this injected node.

### GetGraph

```
URigVMGraph GetGraph()const
```

Returns the graph of this injected node.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMInjectionInfo::StaticClass()
```
