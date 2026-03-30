# URigVMLink

**Visibility:** public

## Inheritance

UObject → URigVMLink

## Description

The Link represents a connection between two Pins within a Graph. The Link can be accessed on the Graph itself - or through the URigVMPin::GetLinks() method.

## RIGVMLINK

LinkIndex

### LinkIndex

```
const int LinkIndex
```

Returns the current index of this Link within its owning Graph.

### PinPathRepresentation

```
const FString PinPathRepresentation
```

Returns a string representation of the Link, for example: "NodeA.Color.R -> NodeB.Translation.X" note: can be split again using SplitPinPathRepresentation

### SourcePin

```
const URigVMPin SourcePin
```

Returns the source Pin of this Link (or nullptr)

### TargetPin

```
const URigVMPin TargetPin
```

Returns the target Pin of this Link (or nullptr)

### Graph

```
const URigVMGraph Graph
```

Returns the Link's owning Graph/

---

## RIGVMLINK

### GetLinkIndex

```
int GetLinkIndex()const
```

Returns the current index of this Link within its owning Graph.

### GetPinPathRepresentation

```
FString GetPinPathRepresentation()
```

Returns a string representation of the Link, for example: "NodeA.Color.R -> NodeB.Translation.X" note: can be split again using SplitPinPathRepresentation

### GetSourcePin

```
URigVMPin GetSourcePin()
```

Returns the source Pin of this Link (or nullptr)

### GetTargetPin

```
URigVMPin GetTargetPin()
```

Returns the target Pin of this Link (or nullptr)

### GetGraph

```
URigVMGraph GetGraph()const
```

Returns the Link's owning Graph/

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URigVMLink::StaticClass()
```
