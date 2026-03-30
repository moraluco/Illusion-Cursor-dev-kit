# UK2Node_MathExpression

**Visibility:** public

## Inheritance

UK2Node_Composite → UK2Node_MathExpression

## Description

This node type acts like a collapsed node, a single node that represents a larger sub-network of nodes (contained within a sub-graph). This node will take the math expression it was named with, and attempt to convert it into a series of math nodes. If it is unsuccessful, then it generates a series of actionable errors.

## EXPRESSION

### Expression

```
FString Expression
```

The math expression to evaluate

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UK2Node_MathExpression::StaticClass()
```
