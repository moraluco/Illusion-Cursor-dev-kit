# UNiagaraDataInterfaceGrid3DCollection

**Visibility:** public

## Inheritance

UNiagaraDataInterfaceGrid3D → UNiagaraDataInterfaceGrid3DCollection → UNiagaraDataInterfaceGrid3DCollectionReader → GRID → RenderTargetUserParameter

## Description

FNiagaraUserParameterBinding RenderTargetUserParameter

Reference to a user parameter if we're reading one.

OverrideBufferFormat ENiagaraGpuBufferFormat OverrideBufferFormat

When enabled overrides the format used to store data inside the grid, otherwise uses the project default setting.  Lower bit depth formats will save memory and performance at the cost of precision.

PreviewAttribute FName PreviewAttribute

When enabled allows you to preview the grid in a debug display

NumAttributes int NumAttributes

Number of attributes stored on the grid

## NIAGARA

### GetTextureSize

```
void GetTextureSize(const UNiagaraComponent Component, int& SizeX, int& SizeY, int& SizeZ)
```

GetRawTextureSize

### void GetRawTextureSize

```
void GetRawTextureSize(const UNiagaraComponent Component, int& SizeX, int& SizeY, int& SizeZ)
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
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceGrid3DCollection::StaticClass()
```
