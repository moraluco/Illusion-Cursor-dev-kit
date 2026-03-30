# UNiagaraDataInterfaceGrid2DCollection

**Visibility:** public

## Inheritance

UNiagaraDataInterfaceGrid2D → UNiagaraDataInterfaceGrid2DCollection → UNiagaraDataInterfaceGrid2DCollectionReader → GRID → OverrideBufferFormat

## Description

ENiagaraGpuBufferFormat OverrideBufferFormat

When enabled overrides the format used to store data inside the grid, otherwise uses the project default setting.  Lower bit depth formats will save memory and performance at the cost of precision.

PreviewAttribute FName PreviewAttribute

When enabled allows you to preview the grid in a debug display

RenderTargetUserParameter FNiagaraUserParameterBinding RenderTargetUserParameter

Reference to a user parameter if we're reading one.

## NIAGARA

### GetTextureSize

```
void GetTextureSize(const UNiagaraComponent Component, int& SizeX, int& SizeY)
```

---

## FUNCTIONS

### SetbPreviewGrid

```
void SetbPreviewGrid(bool Value)
```

SetbOverrideFormat

### void SetbOverrideFormat

```
void SetbOverrideFormat(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceGrid2DCollection::StaticClass()
```
