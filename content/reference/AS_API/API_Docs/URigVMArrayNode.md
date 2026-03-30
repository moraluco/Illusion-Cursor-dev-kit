# URigVMArrayNode

**Visibility:** public

## Inheritance

URigVMNode → URigVMArrayNode

## Description

The Array Node represents one of a series available array operations such as SetNum, GetAtIndex etc.

## RIGVMARRAYNODE

### CPPTypeObject

```
const UObject CPPTypeObject
```

Returns the C++ data type struct of the array (or nullptr)

### CPPType

```
const FString CPPType
```

Returns the C++ data type of the element

---

## VARIABLES

### OpCode

```
const ERigVMOpCode OpCode RIGVMARRAYNODE GetCPPTypeObject UObject GetCPPTypeObject()const
```

Returns the C++ data type struct of the array (or nullptr)

### GetOpCode

```
ERigVMOpCode GetOpCode()const
```

Returns the op code of this node

### GetCPPType

```
FString GetCPPType()const
```

Returns the C++ data type of the element

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMArrayNode::StaticClass()
```
