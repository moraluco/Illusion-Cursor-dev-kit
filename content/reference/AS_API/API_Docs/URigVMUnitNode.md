# URigVMUnitNode

**Visibility:** public

## Inheritance

URigVMNode → URigVMUnitNode

## Description

The Struct Node represents a Function Invocation of a RIGVM_METHOD declared on a USTRUCT. Struct Nodes have input / output pins for all struct UPROPERTY members.

## RIGVMUNITNODE

### StructDefaultValue

```
const FString StructDefaultValue
```

Returns the default value for the struct as text

---

## VARIABLES

### ScriptStruct

```
const UScriptStruct ScriptStruct MethodName const FName MethodName RIGVMUNITNODE GetScriptStruct UScriptStruct GetScriptStruct()const
```

Returns the UStruct for this unit node (the struct declaring the RIGVM_METHOD)

### GetStructDefaultValue

```
FString GetStructDefaultValue()const
```

Returns the default value for the struct as text

### GetMethodName

```
FName GetMethodName()const
```

Returns the name of the declared RIGVM_METHOD

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMUnitNode::StaticClass()
```
