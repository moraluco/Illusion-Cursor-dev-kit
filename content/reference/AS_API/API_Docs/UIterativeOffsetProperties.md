# UIterativeOffsetProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UIterativeOffsetProperties

## Description

Properties for Iterative Offseting

## ITERATIVEOFFSETOPTIONS

### bOffsetBoundaries

```
bool bOffsetBoundaries
```

Control whether the boundary is allowed to move

### SmoothingPerStep

```
float32 SmoothingPerStep
```

Amount of smoothing applied per Offset step

### bReprojectSmooth

```
bool bReprojectSmooth
```

Reproject smooth vertices onto non-smoothed Offset Surface at each step (expensive but better-preserves uniform distance)

### Steps

```
int Steps
```

Number of Offseting iterations

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UIterativeOffsetProperties::StaticClass()
```
