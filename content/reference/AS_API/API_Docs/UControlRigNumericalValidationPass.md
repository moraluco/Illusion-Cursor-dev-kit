# UControlRigNumericalValidationPass

**Visibility:** public

## Inheritance

UControlRigValidationPass → UControlRigNumericalValidationPass

## Description

Used to perform a numerical comparison of the poses

## SETTINGS

### bCheckBones

```
bool bCheckBones
```

If set to true the pass will validate the poses of all bones

### bCheckCurves

```
bool bCheckCurves
```

If set to true the pass will validate the values of all curves

### TranslationPrecision

```
float32 TranslationPrecision
```

The threshold under which we'll ignore a precision issue in the pass

### RotationPrecision

```
float32 RotationPrecision
```

The threshold under which we'll ignore a precision issue in the pass (in degrees)

### ScalePrecision

```
float32 ScalePrecision
```

The threshold under which we'll ignore a precision issue in the pass

### CurvePrecision

```
float32 CurvePrecision
```

The threshold under which we'll ignore a precision issue in the pass

### bCheckControls

```
bool bCheckControls
```

If set to true the pass will validate the poses of all bones

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UControlRigNumericalValidationPass::StaticClass()
```
