# FPlane

## Inheritance

FPlane → VARIABLES → Normal

## Description

const FVector Normal Origin const FVector Origin

## FUNCTIONS

### GetOrigin

```
FVector GetOrigin()const
```

GetNormal

### FVector GetNormal

```
FVector GetNormal()const SegmentPlaneIntersection
```

bool SegmentPlaneIntersection(

FVector 	StartPoint,

FVector 	EndPoint,

FVector& 	OutIntersectionPoint

	) const

Returns true if there is an intersection between the segment specified by StartPoint and Endpoint, andthe plane on which polygon Plane lies. If there is an intersection, the point is placed in out_IntersectionPoint

**Parameters**

StartPoint
FVector

start point of segment

EndPoint
FVector

end point of segment

OutIntersectionPoint
FVector&

the point on the segment that intersects the mesh (if any)

**Returns**

true if intersection occurred

opAssign
FPlane& opAssign(
FPlane 	Other
	)
PlaneDot
float PlaneDot(
FVector 	Location
	) const
