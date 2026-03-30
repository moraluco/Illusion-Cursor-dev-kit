# URigVMVariableNode

**Visibility:** public

## Inheritance

URigVMNode → URigVMVariableNode

## Description

The Variable Node represents a mutable value / local state within the the Function / Graph. Variable Node's can be a getter or a setter.  Getters are pure nodes with just an output value pin, while setters are mutable nodes with an execute and input value pin.

## RIGVMVARIABLENODE

### CPPTypeObject

```
const UObject CPPTypeObject
```

Returns the C++ data type struct of the variable (or nullptr)

### DefaultValue

```
const FString DefaultValue
```

Returns the default value of the variable as a string

### VariableDescription

```
const FRigVMGraphVariableDescription VariableDescription
```

Returns this variable node's variable description

### VariableName

```
const FName VariableName
```

Returns the name of the variable

### CPPType

```
const FString CPPType
```

Returns the C++ data type of the variable

---

## RIGVMVARIABLENODE

### GetVariableName

```
FName GetVariableName()const
```

Returns the name of the variable

### GetCPPTypeObject

```
UObject GetCPPTypeObject()const
```

Returns the C++ data type struct of the variable (or nullptr)

### GetDefaultValue

```
FString GetDefaultValue()const
```

Returns the default value of the variable as a string

### GetVariableDescription

```
FRigVMGraphVariableDescription GetVariableDescription()const
```

Returns this variable node's variable description

### GetCPPType

```
FString GetCPPType()const
```

Returns the C++ data type of the variable

### IsGetter

```
bool IsGetter()const
```

Returns true if this node is a variable getter

### IsInputArgument

```
bool IsInputArgument()const
```

Returns true if this variable is an input argument

### IsLocalVariable

```
bool IsLocalVariable()const
```

Returns true if this variable is a local variable

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMVariableNode::StaticClass()
```
