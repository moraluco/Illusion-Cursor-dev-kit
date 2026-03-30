# UCutMeshWithMeshTool

**Visibility:** public

## Inheritance

UBaseCreateFromSelectedTool → UCutMeshWithMeshTool

## Description

UCutMeshWithMeshTool cuts an input mesh into two pieces based on a second input mesh.  Essentially this just both a Boolean Subtract and a Boolean Intersection. However doing those as two separate operations involves quite a few steps, so this Tool does it in a single step and with some improved efficiency.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCutMeshWithMeshTool::StaticClass()
```
