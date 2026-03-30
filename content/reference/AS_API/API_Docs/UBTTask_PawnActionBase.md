# UBTTask_PawnActionBase

**Visibility:** public

## Inheritance

UBTTaskNode → UBTTask_PawnActionBase → UBTTask_PushPawnAction

## Description

Base class for managing pawn actions

Task will set itself as action observer before pushing it to AI Controller, override OnActionEvent if you need any special event handling.

Please use result returned by PushAction for ExecuteTask function.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTTask_PawnActionBase::StaticClass()
```
