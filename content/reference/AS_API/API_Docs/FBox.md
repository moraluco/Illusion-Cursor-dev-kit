# FBox

## Inheritance

FBox → VARIABLES → Extent

## Description

const FVector Extent Center const FVector Center

## FUNCTIONS

### GetExtent

```
FVector GetExtent()const
```

opAddAssign

### FBox& opAddAssign

```
FBox& opAddAssign(FBox Other)const
```

opEquals

### bool opEquals

```
bool opEquals(FBox Other)const
```

Intersect

### bool Intersect

```
bool Intersect(FBox other)const
```

opAdd

### FBox opAdd

```
FBox opAdd(FVector Other)const
```

opAddAssign

### FBox& opAddAssign

```
FBox& opAddAssign(FVector Other)const
```

opIndex

### FVector& opIndex

```
FVector& opIndex(int Index)
```

GetCenter

### FVector GetCenter

```
FVector GetCenter()const opAdd
```

FBox opAdd(

### FBox 	Other

```
FBox 	Other 	) const
```

GetCenterAndExtents

### void GetCenterAndExtents

```
void GetCenterAndExtents(FVector& Center, FVector& Extents)const
```

GetClosestPointTo

### FVector GetClosestPointTo

```
FVector GetClosestPointTo(FVector In)const
```

InverseTransformBy

### FBox InverseTransformBy

```
FBox InverseTransformBy(FTransform M)const
```

TransformBy

### FBox TransformBy

```
FBox TransformBy(FTransform M)const
```

IsInside

### bool IsInside

```
bool IsInside(FVector In)const
```

IsInsideOrOn

### bool IsInsideOrOn

```
bool IsInsideOrOn(FVector In)const
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

BuildAABB

### static FBox FBox::BuildAABB

```
static FBox FBox::BuildAABB(FVector Origin, FVector Extent)
```
