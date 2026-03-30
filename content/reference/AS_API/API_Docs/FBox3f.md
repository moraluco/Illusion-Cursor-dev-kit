# FBox3f

## Inheritance

FBox3f → VARIABLES → Extent

## Description

const FVector3f Extent Center const FVector3f Center

## FUNCTIONS

### GetExtent

```
FVector3f GetExtent()const
```

opAddAssign

### FBox3f& opAddAssign

```
FBox3f& opAddAssign(FBox3f Other)const
```

opEquals

### bool opEquals

```
bool opEquals(FBox3f Other)const
```

Intersect

### bool Intersect

```
bool Intersect(FBox3f other)const
```

opAdd

### FBox3f opAdd

```
FBox3f opAdd(FVector3f Other)const
```

opAddAssign

### FBox3f& opAddAssign

```
FBox3f& opAddAssign(FVector3f Other)const
```

opIndex

### FVector3f& opIndex

```
FVector3f& opIndex(int Index)
```

GetCenter

### FVector3f GetCenter

```
FVector3f GetCenter()const opAdd
```

FBox3f opAdd(

### FBox3f 	Other

```
FBox3f 	Other 	) const
```

GetCenterAndExtents

### void GetCenterAndExtents

```
void GetCenterAndExtents(FVector3f& Center, FVector3f& Extents)const
```

GetClosestPointTo

### FVector3f GetClosestPointTo

```
FVector3f GetClosestPointTo(FVector3f In)const
```

InverseTransformBy

### FBox3f InverseTransformBy

```
FBox3f InverseTransformBy(FTransform M)const
```

TransformBy

### FBox3f TransformBy

```
FBox3f TransformBy(FTransform3f M)const
```

IsInside

### bool IsInside

```
bool IsInside(FVector3f In)const
```

IsInsideOrOn

### bool IsInsideOrOn

```
bool IsInsideOrOn(FVector3f In)const
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

BuildAABB

### static FBox3f FBox3f::BuildAABB

```
static FBox3f FBox3f::BuildAABB(FVector3f Origin, FVector3f Extent)
```
