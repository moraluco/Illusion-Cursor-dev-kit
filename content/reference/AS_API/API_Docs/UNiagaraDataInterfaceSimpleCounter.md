# UNiagaraDataInterfaceSimpleCounter

**Visibility:** public

## Inheritance

UNiagaraDataInterface → UNiagaraDataInterfaceSimpleCounter

## Description

Thread safe counter starts at the initial value on start / reset.  When operating between CPU & GPU ensure you set the appropriate sync mode.

## Members

### COUNTER

```
SIMPLE COUNTER
```
### InitialValue

```
int InitialValue
```

This is the value the counter will have when the instance is reset / created.

### GpuSyncMode

```
ENiagaraGpuSyncMode GpuSyncMode
```

Select how we should synchronize the counter between Cpu & Gpu

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceSimpleCounter::StaticClass()
```
