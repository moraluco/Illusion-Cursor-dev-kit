# FBoxSphereBounds3f

## Inheritance

FBoxSphereBounds3f → VARIABLES → Sphere

## Description

const FSphere3f Sphere Box const FBox3f Box

## FUNCTIONS

### GetSphere

```
FSphere3f GetSphere()const
```

opEquals

### bool opEquals

```
bool opEquals(FBoxSphereBounds3f Other)const
```

ComputeSquaredDistanceFromBoxToPoint

### float32 ComputeSquaredDistanceFromBoxToPoint

```
float32 ComputeSquaredDistanceFromBoxToPoint(FVector3f Point)const
```

GetBox

### FBox3f GetBox

```
FBox3f GetBox()const GetBoxExtrema
```

FVector3f GetBoxExtrema(

### uint 	Extrema

```
uint 	Extrema 	) const
```

opAdd

### FBoxSphereBounds3f opAdd

```
FBoxSphereBounds3f opAdd(FBoxSphereBounds3f Other)const
```

ExpandBy

### FBoxSphereBounds3f ExpandBy

```
FBoxSphereBounds3f ExpandBy(float32 ExpandAmount)const
```

TransformBy

### FBoxSphereBounds3f TransformBy

```
FBoxSphereBounds3f TransformBy(FTransform3f M)const
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

BoxesIntersect

### static bool FBoxSphereBounds3f::BoxesIntersect

```
static bool FBoxSphereBounds3f::BoxesIntersect(FBoxSphereBounds3f A, FBoxSphereBounds3f B)
```

SpheresIntersect

### static bool FBoxSphereBounds3f::SpheresIntersect

```
static bool FBoxSphereBounds3f::SpheresIntersect(
```

FBoxSphereBounds3f 	A,

FBoxSphereBounds3f 	B,

float32 	Tolerance	 = 	KINDA_SMALL_NUMBER

)
