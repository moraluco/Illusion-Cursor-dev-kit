# UCurveBase

**Visibility:** public

## Inheritance

UObject → UCurveBase → UCurveFloat → UCurveLinearColor → UCurveVector

## Description

Defines a curve of interpolated points to evaluate over a given range

## IMPORTSETTINGS

### AssetImportData

```
UAssetImportData AssetImportData MATH|CURVES GetValueRange void GetValueRange(float32& MinValue, float32& MaxValue)const
```

Get the value range across all curves

### GetTimeRange

```
void GetTimeRange(float32& MinTime, float32& MaxTime)const
```

Get the time range across all curves

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCurveBase::StaticClass()
```
