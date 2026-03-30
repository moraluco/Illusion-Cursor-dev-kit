# UNiagaraDataInterfaceCurveBase

**Visibility:** public

## Inheritance

UNiagaraDataInterface → UNiagaraDataInterfaceCurveBase → UNiagaraDataInterfaceColorCurve → UNiagaraDataInterfaceCurve → UNiagaraDataInterfaceVector2DCurve → UNiagaraDataInterfaceVector4Curve → UNiagaraDataInterfaceVectorCurve

## Description

Base class for curve data interfaces which facilitates handling the curve data in a standardized way.

## CURVE

### ExposedName

```
FName ExposedName
```

Sets a custom name for the binding to make it easier to identify.

### OptimizeThreshold

```
float32 OptimizeThreshold
```

Threshold used to optimize the LUT.

---

## FUNCTIONS

### SetbExposeCurve

```
void SetbExposeCurve(bool Value)
```

SetbOptimizeLUT

### void SetbOptimizeLUT

```
void SetbOptimizeLUT(bool Value)
```

SetbOverrideOptimizeThreshold

### void SetbOverrideOptimizeThreshold

```
void SetbOverrideOptimizeThreshold(bool Value)
```

SetbUseLUT

### void SetbUseLUT

```
void SetbUseLUT(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceCurveBase::StaticClass()
```
