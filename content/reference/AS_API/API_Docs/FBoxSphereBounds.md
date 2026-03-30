# FBoxSphereBounds

## Inheritance

FBoxSphereBounds → VARIABLES → Sphere

## Description

const FSphere Sphere Box const FBox Box

## FUNCTIONS

### GetSphere

```
FSphere GetSphere()const
```

opEquals

### bool opEquals

```
bool opEquals(FBoxSphereBounds Other)const
```

ComputeSquaredDistanceFromBoxToPoint

### float ComputeSquaredDistanceFromBoxToPoint

```
float ComputeSquaredDistanceFromBoxToPoint(FVector Point)const
```

GetBox

### FBox GetBox

```
FBox GetBox()const GetBoxExtrema
```

FVector GetBoxExtrema(

### uint 	Extrema

```
uint 	Extrema 	) const
```

opAdd

### FBoxSphereBounds opAdd

```
FBoxSphereBounds opAdd(FBoxSphereBounds Other)const
```

ExpandBy

### FBoxSphereBounds ExpandBy

```
FBoxSphereBounds ExpandBy(float ExpandAmount)const
```

TransformBy

### FBoxSphereBounds TransformBy

```
FBoxSphereBounds TransformBy(FTransform M)const
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

BoxesIntersect

### static bool FBoxSphereBounds::BoxesIntersect

```
static bool FBoxSphereBounds::BoxesIntersect(FBoxSphereBounds A, FBoxSphereBounds B)
```

SpheresIntersect

### static bool FBoxSphereBounds::SpheresIntersect

```
static bool FBoxSphereBounds::SpheresIntersect(FBoxSphereBounds A, FBoxSphereBounds B, float Tolerance = KINDA_SMALL_NUMBER)
```
