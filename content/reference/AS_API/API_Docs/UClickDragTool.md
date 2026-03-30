# UClickDragTool

**Visibility:** public

## Inheritance

UInteractiveTool → UClickDragTool

## Description

UClickDragTool is a base tool that basically just implements IClickDragBehaviorTarget, and on setup registers a UClickDragInputBehavior. You can subclass this Tool to implement basic click-drag type Tools. If you want to do more advanced things, like handle modifier buttons/keys, you will need to implement IClickDragBehaviorTarget yourself

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UClickDragTool::StaticClass()
```
