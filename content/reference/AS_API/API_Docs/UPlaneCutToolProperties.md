# UPlaneCutToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UPlaneCutToolProperties

## Description

Standard properties of the plane cut operation

## OPTIONS

### SpacingBetweenHalves

```
float32 SpacingBetweenHalves
```

If keeping both halves, separate the two pieces by this amount

### bShowPreview

```
bool bShowPreview bFillCutHole bool bFillCutHole
```

If true, the cut surface is filled with simple planar hole fill surface(s)

### bFillSpans

```
bool bFillSpans
```

If true, will attempt to fill cut holes even if they're ill-formed (e.g. because they connect to pre-existing holes in the geometry)

### bKeepBothHalves

```
bool bKeepBothHalves
```

If true, both halves of the cut are computed

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPlaneCutToolProperties::StaticClass()
```
