# UEditorAnimCurveBoneLinks

**Visibility:** public

## Inheritance

UObject → UEditorAnimCurveBoneLinks → BONES → ConnectedBones

## Description

TArray<FBoneReference> ConnectedBones

## LOD

### MaxLOD

```
uint8 MaxLOD
```

Max (Lowest) LOD to evaluate to curve.  Since LOD goes from 0 to high number, we call it Max.  For example, if you have 3 LODs (0, 1, 2), and if you want this to work until LOD 1, type 1.  Then the curve will be evaluated until LOD1, but not for LOD 2 Default value is 255

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorAnimCurveBoneLinks::StaticClass()
```
