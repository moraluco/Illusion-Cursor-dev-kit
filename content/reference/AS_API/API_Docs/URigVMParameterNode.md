# URigVMParameterNode

**Visibility:** public

## Inheritance

URigVMNode → URigVMParameterNode

## Description

The Parameter Node represents an input or output argument / parameter of the Function / Graph. Parameter Node have only a single value pin.

## RIGVMPARAMETERNODE

### CPPTypeObject

```
const UObject CPPTypeObject
```

Returns the C++ data type struct of the parameter (or nullptr)

### DefaultValue

```
const FString DefaultValue
```

Returns the default value of the parameter as a string

### ParameterDescription

```
const FRigVMGraphParameterDescription ParameterDescription
```

Returns this parameter node's parameter description

### ParameterName

```
const FName ParameterName
```

Returns the name of the parameter

### CPPType

```
const FString CPPType
```

Returns the C++ data type of the parameter

---

## RIGVMPARAMETERNODE

### GetCPPTypeObject

```
UObject GetCPPTypeObject()const
```

Returns the C++ data type struct of the parameter (or nullptr)

### GetDefaultValue

```
FString GetDefaultValue()const
```

Returns the default value of the parameter as a string

### GetParameterDescription

```
FRigVMGraphParameterDescription GetParameterDescription()const
```

Returns this parameter node's parameter description

### GetParameterName

```
FName GetParameterName()const
```

Returns the name of the parameter

### IsInput

```
bool IsInput()const
```

Returns true if this node is an input

### GetCPPType

```
FString GetCPPType()const
```

Returns the C++ data type of the parameter

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMParameterNode::StaticClass()
```
