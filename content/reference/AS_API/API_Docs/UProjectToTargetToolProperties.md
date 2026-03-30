# UProjectToTargetToolProperties

**Visibility:** public

## Inheritance

URemeshMeshToolProperties → UProjectToTargetToolProperties

## Description

Subclass URemeshMeshToolProperties just so we can set default values for some properties. Setting these values in the Setup function of UProjectToTargetTool turns out to be tricky to achieve with the property cache.

## NORMALFLOW

### FillAreaSmoothMultiplier

```
float32 FillAreaSmoothMultiplier
```
### FaceProjectionPassesPerRemeshIteration

```
int FaceProjectionPassesPerRemeshIteration
```
### SurfaceProjectionSpeed

```
float32 SurfaceProjectionSpeed
```
### NormalAlignmentSpeed

```
float32 NormalAlignmentSpeed
```
### bSmoothInFillAreas

```
bool bSmoothInFillAreas
```
### FillAreaDistanceMultiplier

```
float32 FillAreaDistanceMultiplier
```

---

## PROJECTIONSPACE

### bWorldSpace

```
bool bWorldSpace REMESHING bParallel bool bParallel STATIC FUNCTIONS StaticClass static UClass UProjectToTargetToolProperties::StaticClass()
```
