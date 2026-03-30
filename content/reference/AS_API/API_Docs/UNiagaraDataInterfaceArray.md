# UNiagaraDataInterfaceArray

**Visibility:** public

## Inheritance

UNiagaraDataInterfaceRWBase → UNiagaraDataInterfaceArray → UNiagaraDataInterfaceArrayBool → UNiagaraDataInterfaceArrayColor → UNiagaraDataInterfaceArrayFloat → UNiagaraDataInterfaceArrayFloat2

## Description

and 6 other children

## ARRAY

### MaxElements

```
int MaxElements
```

When greater than 0 sets the maximum number of elements the array can hold, only relevant when using operations that modify the array size.

### GpuSyncMode

```
ENiagaraGpuSyncMode GpuSyncMode
```

How to do we want to synchronize modifications to the array data.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceArray::StaticClass()
```
