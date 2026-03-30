# Math

## Inheritance

Math

## Description

STATIC FUNCTIONS CeilToFloat static float Math::CeilToFloat( float 	F 	) RandRange static int Math::RandRange( int 	Min, int 	Max 	) RandRange static float Math::RandRange( float 	Min, float 	Max 	) RandRange static float32 Math::RandRange( float32 	Min, float32 	Max 	) RandBool static bool Math::RandBool() VRand static FVector Math::VRand()

Returns a random vector with length of 1

VRandCone static FVector Math::VRandCone( FVector 	DDir, float32 	HorizontalConeHalfAngleRad, float32 	VerticalConeHalfAngleRad 	)

Returns a random unit vector, uniformly distributed, within the specified cone ConeHalfAngleRad is the half-angle of cone, in radians.  Returns a normalized vector.

VRandCone static FVector Math::VRandCone( FVector 	DDir, float32 	ConeHalfAngleRad 	) RandPointInCircle static FVector2D Math::RandPointInCircle( float32 	Radius 	)

Get a random point on a unit circle, evenly spread across the circumference.

GetReflectionVector static FVector Math::GetReflectionVector( FVector 	Direction, FVector 	SurfaceNormal 	)

Given a direction vector and a surface normal, returns the vector reflected across the surface normal.  Produces a result like shining a laser at a mirror!

Parameters Direction FVector

Direction vector the ray is coming from.

SurfaceNormal FVector

A normal of the surface the ray should be reflected on.

Returns

Reflected vector.

MakePulsatingValue static float32 Math::MakePulsatingValue( float 	InCurrentTime, float32 	InPulsesPerSecond, float32 	InPhase	 = 	0.0f 	)

Simple function to create a pulsating scalar value

Parameters InCurrentTime float

Current absolute time

InPulsesPerSecond float32

How many full pulses per second?

InPhase float32

Optional phase amount, between 0.0 and 1.0 (to synchronize pulses)

Returns

Pulsating value (0.0-1.0)

IsNearlyEqual static bool Math::IsNearlyEqual( float 	A, float 	B, float 	ErrorTolerance	 = 	SMALL_NUMBER 	) IsNearlyEqual static bool Math::IsNearlyEqual( float32 	A, float32 	B, float32 	ErrorTolerance	 = 	SMALL_NUMBER 	) IsNearlyZero static bool Math::IsNearlyZero( float 	Value, float 	ErrorTolerance	 = 	SMALL_NUMBER 	) IsNearlyZero static bool Math::IsNearlyZero( float32 	Value, float32 	ErrorTolerance	 = 	SMALL_NUMBER 	) IsPowerOfTwo static bool Math::IsPowerOfTwo( int 	Value 	) SmoothStep static float Math::SmoothStep( float 	A, float 	B, float 	X 	)

Returns a smooth Hermite interpolation between 0 and 1 for the value X (where X ranges between A and B) Clamped to 0 for X <= A and 1 for X >= B.

Parameters A float

Minimum value of X

B float

Maximum value of X

X float

Parameter

Returns

Smoothed value between 0 and 1

SmoothStep static float32 Math::SmoothStep( float32 	A, float32 	B, float32 	X 	)

Returns a smooth Hermite interpolation between 0 and 1 for the value X (where X ranges between A and B) Clamped to 0 for X <= A and 1 for X >= B.

Parameters A float32

Minimum value of X

B float32

Maximum value of X

X float32

Parameter

Returns

Smoothed value between 0 and 1

Clamp static float Math::Clamp( float 	X, float 	Min, float 	Max 	) Clamp static float32 Math::Clamp( float32 	X, float32 	Min, float32 	Max 	) Clamp static int Math::Clamp( int 	X, int 	Min, int 	Max 	) Wrap static float Math::Wrap( float 	X, float 	Min, float 	Max 	) Wrap static float32 Math::Wrap( float32 	X, float32 	Min, float32 	Max 	) Wrap static int Math::Wrap( int 	X, int 	Min, int 	Max 	) SinCos static void Math::SinCos( float32& 	ScalarSin, float32& 	ScalarCos, float32 	Value 	) SinCos static void Math::SinCos( float& 	ScalarSin, float& 	ScalarCos, float 	Value 	) FastAsin static float Math::FastAsin( float 	Value 	) FastAsin static float32 Math::FastAsin( float32 	Value 	) RadiansToDegrees static float Math::RadiansToDegrees( const 	float& 	RadVal 	) DegreesToRadians static float Math::DegreesToRadians( const 	float& 	DegVal 	) RadiansToDegrees static float32 Math::RadiansToDegrees( const 	float32& 	RadVal 	) DegreesToRadians static float32 Math::DegreesToRadians( const 	float32& 	DegVal 	) ClampAngle static float32 Math::ClampAngle( float32 	AngleDegrees, float32 	MinAngleDegrees, float32 	MaxAngleDegrees 	) FindDeltaAngleDegrees static float Math::FindDeltaAngleDegrees( float 	A1, float 	A2 	) FindDeltaAngleRadians static float Math::FindDeltaAngleRadians( float 	A1, float 	A2 	) FindDeltaAngleDegrees static float32 Math::FindDeltaAngleDegrees( float32 	A1, float32 	A2 	) FindDeltaAngleRadians static float32 Math::FindDeltaAngleRadians( float32 	A1, float32 	A2 	) UnwindDegrees static float Math::UnwindDegrees( float 	A 	)

Utility to ensure angle is between +/- 180 degrees by unwinding.

UnwindRadians static float Math::UnwindRadians( float 	A 	)

Utility to ensure angle is between +/- 180 degrees by unwinding.

UnwindDegrees static float32 Math::UnwindDegrees( float32 	A 	)

Utility to ensure angle is between +/- 180 degrees by unwinding.

UnwindRadians static float32 Math::UnwindRadians( float32 	A 	)

Utility to ensure angle is between +/- 180 degrees by unwinding.

LerpStable static float Math::LerpStable( const 	float& 	A, const 	float& 	B, 	float 	Alpha 	) LerpStable static float32 Math::LerpStable( const 	float32& 	A, const 	float32& 	B, 	float32 	Alpha 	) Lerp static float Math::Lerp( const 	float& 	A, const 	float& 	B, const 	float& 	Alpha 	) Lerp static float32 Math::Lerp( const 	float32& 	A, const 	float32& 	B, const 	float32& 	Alpha 	) Lerp static FVector Math::Lerp( 	FVector 	A, 	FVector 	B, const 	float& 	Alpha 	) Lerp static FVector2D Math::Lerp( 	FVector2D 	A, 	FVector2D 	B, const 	float& 	Alpha 	) Lerp static FVector3f Math::Lerp( 	FVector3f 	A, 	FVector3f 	B, const 	float32& 	Alpha 	) Lerp static FVector2f Math::Lerp( 	FVector2f 	A, 	FVector2f 	B, const 	float32& 	Alpha 	) VLerp static FVector Math::VLerp( FVector 	A, FVector 	B, FVector 	Alpha 	) Lerp static FLinearColor Math::Lerp( 	FLinearColor 	A, 	FLinearColor 	B, const 	float32& 	Alpha 	) IsWithin static bool Math::IsWithin( const 	float& 	TestValue, const 	float& 	MinValue, const 	float& 	MaxValue 	) IsWithin static bool Math::IsWithin( const 	float32& 	TestValue, const 	float32& 	MinValue, const 	float32& 	MaxValue 	) IsWithin static bool Math::IsWithin( const 	int& 	TestValue, const 	int& 	MinValue, const 	int& 	MaxValue 	) IsWithinInclusive static bool Math::IsWithinInclusive( const 	float& 	TestValue, const 	float& 	MinValue, const 	float& 	MaxValue 	) IsWithinInclusive static bool Math::IsWithinInclusive( const 	float32& 	TestValue, const 	float32& 	MinValue, const 	float32& 	MaxValue 	) IsWithinInclusive static bool Math::IsWithinInclusive( const 	int& 	TestValue, const 	int& 	MinValue, const 	int& 	MaxValue 	) CubicInterp static FVector Math::CubicInterp( 	FVector 	Point0, 	FVector 	Tangent0, 	FVector 	Point1, 	FVector 	Tangent1, const 	float& 	Alpha 	) CubicInterp static FQuat Math::CubicInterp( 	FQuat 	Point0, 	FQuat 	Tangent0, 	FQuat 	Point1, 	FQuat 	Tangent1, const 	float& 	Alpha 	) CubicInterp static FVector Math::CubicInterp( 	FVector 	Point0, 	FVector 	Tangent0, 	FVector 	Point1, 	FVector 	Tangent1, const 	float32& 	Alpha 	) CubicInterp static FQuat Math::CubicInterp( 	FQuat 	Point0, 	FQuat 	Tangent0, 	FQuat 	Point1, 	FQuat 	Tangent1, const 	float32& 	Alpha 	) CubicInterp static FVector3f Math::CubicInterp( 	FVector3f 	Point0, 	FVector3f 	Tangent0, 	FVector3f 	Point1, 	FVector3f 	Tangent1, const 	float32& 	Alpha 	) CubicInterp static FQuat4f Math::CubicInterp( 	FQuat4f 	Point0, 	FQuat4f 	Tangent0, 	FQuat4f 	Point1, 	FQuat4f 	Tangent1, const 	float32& 	Alpha 	) CubicInterpDerivative static FVector Math::CubicInterpDerivative( 	FVector 	Point0, 	FVector 	Tangent0, 	FVector 	Point1, 	FVector 	Tangent1, const 	float& 	Alpha 	) CubicInterpDerivative static FRotator Math::CubicInterpDerivative( 	FRotator 	Point0, 	FRotator 	Tangent0, 	FRotator 	Point1, 	FRotator 	Tangent1, const 	float& 	Alpha 	) CubicInterpDerivative static FVector Math::CubicInterpDerivative( 	FVector 	Point0, 	FVector 	Tangent0, 	FVector 	Point1, 	FVector 	Tangent1, const 	float32& 	Alpha 	) CubicInterpDerivative static FRotator Math::CubicInterpDerivative( 	FRotator 	Point0, 	FRotator 	Tangent0, 	FRotator 	Point1, 	FRotator 	Tangent1, const 	float32& 	Alpha 	) CubicInterpDerivative static FVector3f Math::CubicInterpDerivative( 	FVector3f 	Point0, 	FVector3f 	Tangent0, 	FVector3f 	Point1, 	FVector3f 	Tangent1, const 	float32& 	Alpha 	) CubicInterpDerivative static FRotator3f Math::CubicInterpDerivative( 	FRotator3f 	Point0, 	FRotator3f 	Tangent0, 	FRotator3f 	Point1, 	FRotator3f 	Tangent1, const 	float32& 	Alpha 	) VInterpNormalRotationTo static FVector Math::VInterpNormalRotationTo( FVector 	Current, FVector 	Target, float32 	DeltaTime, float32 	RotationSpeedDegrees 	) VInterpConstantTo static FVector Math::VInterpConstantTo( FVector 	Current, FVector 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) VInterpTo static FVector Math::VInterpTo( FVector 	Current, FVector 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) RInterpConstantTo static FRotator Math::RInterpConstantTo( FRotator 	Current, FRotator 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) RInterpTo static FRotator Math::RInterpTo( FRotator 	Current, FRotator 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) RotatorFromAxisAndAngle static FRotator Math::RotatorFromAxisAndAngle( FVector 	Axis, float32 	Angle 	) LerpShortestPath static FRotator Math::LerpShortestPath( FRotator 	A, FRotator 	B, float 	Alpha 	)

Lerp between two rotators along the shortest path between them. Uses a quaternion slerp internally.

RInterpShortestPathTo static FRotator Math::RInterpShortestPathTo( FRotator 	Current, FRotator 	Target, float32 	DeltaTime, float32 	InterpSpeed 	)

Interp between two rotators along the shortest path between them. Uses a quaternion interp internally.

RInterpConstantShortestPathTo static FRotator Math::RInterpConstantShortestPathTo( FRotator 	Current, FRotator 	Target, float32 	DeltaTime, float32 	InterpSpeedDegrees 	)

Interp with constant speed between two rotators along the shortest path between them. Uses a quaternion interp internally.

QInterpConstantTo static FQuat Math::QInterpConstantTo( FQuat 	Current, FQuat 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) QInterpTo static FQuat Math::QInterpTo( FQuat 	Current, FQuat 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) QInterpConstantTo static FQuat4f Math::QInterpConstantTo( FQuat4f 	Current, FQuat4f 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) QInterpTo static FQuat4f Math::QInterpTo( FQuat4f 	Current, FQuat4f 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) FInterpConstantTo static float32 Math::FInterpConstantTo( float32 	Current, float32 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) FInterpTo static float32 Math::FInterpTo( float32 	Current, float32 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) FInterpConstantTo static float Math::FInterpConstantTo( float 	Current, float 	Target, float 	DeltaTime, float 	InterpSpeed 	) FInterpTo static float Math::FInterpTo( float 	Current, float 	Target, float 	DeltaTime, float 	InterpSpeed 	) CInterpTo static FLinearColor Math::CInterpTo( FLinearColor 	Current, FLinearColor 	Target, float32 	DeltaTime, float32 	InterpSpeed 	) SphereAABBIntersection static bool Math::SphereAABBIntersection( FVector 	SphereCenter, float 	RadiusSquared, FBox 	AABB 	) SphereAABBIntersection static bool Math::SphereAABBIntersection( FSphere 	Sphere, FBox 	AABB 	) SphereAABBIntersection static bool Math::SphereAABBIntersection( FVector3f 	SphereCenter, float32 	RadiusSquared, FBox3f 	AABB 	) SphereAABBIntersection static bool Math::SphereAABBIntersection( FSphere3f 	Sphere, FBox3f 	AABB 	) LinePlaneIntersection static FVector Math::LinePlaneIntersection( FVector 	Point1, FVector 	Point2, FVector 	PlaneOrigin, FVector 	PlaneNormal 	) LinePlaneIntersection static FVector3f Math::LinePlaneIntersection( FVector3f 	Point1, FVector3f 	Point2, FVector3f 	PlaneOrigin, FVector3f 	PlaneNormal 	) LineSphereIntersection static bool Math::LineSphereIntersection( FVector3f 	Start, FVector3f 	Dir, float32 	Length, FVector3f 	Origin, float32 	Radius 	) LineSphereIntersection static bool Math::LineSphereIntersection( FVector 	Start, FVector 	Dir, float 	Length, FVector 	Origin, float 	Radius 	) ClosestPointOnLine static FVector Math::ClosestPointOnLine( FVector 	LineStart, FVector 	LineEnd, FVector 	Point 	) ClosestPointOnInfiniteLine static FVector Math::ClosestPointOnInfiniteLine( FVector 	LineStart, FVector 	LineEnd, FVector 	Point 	) ComputeBoundingSphereForCone static FSphere Math::ComputeBoundingSphereForCone( FVector 	ConeOrigin, FVector 	ConeDirection, float 	ConeRadius, float 	CosConeAngle, float 	SinConeAngle 	) ComputeBoundingSphereForCone static FSphere3f Math::ComputeBoundingSphereForCone( FVector3f 	ConeOrigin, FVector3f 	ConeDirection, float32 	ConeRadius, float32 	CosConeAngle, float32 	SinConeAngle 	) TruncToInt static int Math::TruncToInt( float 	F 	) TruncToInt static int Math::TruncToInt( float32 	F 	) TruncToFloat static float Math::TruncToFloat( float 	F 	) TruncToDouble static float Math::TruncToDouble( float 	F 	) TruncToFloat static float32 Math::TruncToFloat( float32 	F 	) RoundToInt static int Math::RoundToInt( float 	F 	) RoundToInt static int Math::RoundToInt( float32 	F 	) RoundToFloat static float Math::RoundToFloat( float 	F 	) RoundToFloat static float32 Math::RoundToFloat( float32 	F 	) RoundToDouble static float Math::RoundToDouble( float 	F 	) FloorToInt static int Math::FloorToInt( float 	F 	) FloorToInt static int Math::FloorToInt( float32 	F 	) FloorToFloat static float Math::FloorToFloat( float 	F 	) FloorToDouble static float Math::FloorToDouble( float 	F 	) FloorToFloat static float32 Math::FloorToFloat( float32 	F 	) CeilToInt static int Math::CeilToInt( float 	F 	) CeilToInt static int Math::CeilToInt( float32 	F 	) CeilToDouble static float Math::CeilToDouble( float 	F 	) RandHelper static int Math::RandHelper( int 	Max 	) CeilToFloat static float32 Math::CeilToFloat( float32 	F 	) IsNaN static bool Math::IsNaN( float 	F 	) IsFinite static bool Math::IsFinite( float 	F 	) InvSqrt static float Math::InvSqrt( float 	F 	) InvSqrtEst static float Math::InvSqrtEst( float 	F 	) Fractional static float Math::Fractional( float 	Value 	) Frac static float Math::Frac( float 	Value 	) IsNaN static bool Math::IsNaN( float32 	F 	) IsFinite static bool Math::IsFinite( float32 	F 	) InvSqrt static float32 Math::InvSqrt( float32 	F 	) InvSqrtEst static float32 Math::InvSqrtEst( float32 	F 	) Fractional static float32 Math::Fractional( float32 	Value 	) Frac static float32 Math::Frac( float32 	Value 	) Modf static float Math::Modf( float 	InValue, float& 	OutIntPart 	) Modf static float32 Math::Modf( float32 	InValue, float32& 	OutIntPart 	) Exp static float Math::Exp( float 	Value 	) Exp2 static float Math::Exp2( float 	Value 	) Loge static float Math::Loge( float 	Value 	) Log2 static float Math::Log2( float 	Value 	) LogX static float Math::LogX( float 	Base, float 	Value 	) Fmod static float Math::Fmod( float 	X, float 	Y 	) Sin static float Math::Sin( float 	Value 	) Asin static float Math::Asin( float 	Value 	) Sinh static float Math::Sinh( float 	Value 	) Cos static float Math::Cos( float 	Value 	) Acos static float Math::Acos( float 	Value 	) Tan static float Math::Tan( float 	Value 	) Atan static float Math::Atan( float 	Value 	) Atan2 static float Math::Atan2( float 	Y, float 	X 	) Sqrt static float Math::Sqrt( float 	Value 	) Pow static float Math::Pow( float 	A, float 	B 	) Exp static float32 Math::Exp( float32 	Value 	) Exp2 static float32 Math::Exp2( float32 	Value 	) Loge static float32 Math::Loge( float32 	Value 	) Log2 static float32 Math::Log2( float32 	Value 	) LogX static float32 Math::LogX( float32 	Base, float32 	Value 	) Fmod static float32 Math::Fmod( float32 	X, float32 	Y 	) Sin static float32 Math::Sin( float32 	Value 	) Asin static float32 Math::Asin( float32 	Value 	) Sinh static float32 Math::Sinh( float32 	Value 	) Cos static float32 Math::Cos( float32 	Value 	) Acos static float32 Math::Acos( float32 	Value 	) Tan static float32 Math::Tan( float32 	Value 	) Atan static float32 Math::Atan( float32 	Value 	) Atan2 static float32 Math::Atan2( float32 	Y, float32 	X 	) Sqrt static float32 Math::Sqrt( float32 	Value 	) Pow static float32 Math::Pow( float32 	A, float32 	B 	) Rand static int Math::Rand() FRand static float32 Math::FRand() Abs static float Math::Abs( float 	Value 	) Abs static float32 Math::Abs( float32 	Value 	) Abs static int Math::Abs( int 	Value 	) Sign static float Math::Sign( float 	Value 	) Sign static float32 Math::Sign( float32 	Value 	) Sign static int Math::Sign( int 	Value 	) Min static float Math::Min( float 	A, float 	B 	) Min static float32 Math::Min( float32 	A, float32 	B 	) Min static int Math::Min( int 	A, int 	B 	) Max3 static float Math::Max3( float 	A, float 	B, float 	C 	) Max3 static float32 Math::Max3( float32 	A, float32 	B, float32 	C 	) Max static float Math::Max( float 	A, float 	B 	) Max static float32 Math::Max( float32 	A, float32 	B 	) Max static int Math::Max( int 	A, int 	B 	) Square static float Math::Square( float 	Value 	) Square static float32 Math::Square( float32 	Value 	) Square static int Math::Square( int 	Value 	) GetMappedRangeValueClamped static float Math::GetMappedRangeValueClamped( FVector2D 	InputRange, FVector2D 	OutputRange, float 	Value 	) GetMappedRangeValueUnclamped static float Math::GetMappedRangeValueUnclamped( FVector2D 	InputRange, FVector2D 	OutputRange, float 	Value 	) GetMappedRangeValueClamped static float32 Math::GetMappedRangeValueClamped( FVector2f 	InputRange, FVector2f 	OutputRange, float32 	Value 	) GetMappedRangeValueUnclamped static float32 Math::GetMappedRangeValueUnclamped( FVector2f 	InputRange, FVector2f 	OutputRange, float32 	Value 	) PerlinNoise1D static float32 Math::PerlinNoise1D( float32 	X 	)

Generates a 1D Perlin noise from the given value.  Returns a continuous random value between -1.0 and 1.0.

Returns

Perlin noise in the range of -1.0 to 1.0

PerlinNoise2D static float32 Math::PerlinNoise2D( FVector2D 	Location 	)

Generates a 1D Perlin noise sample at the given location.  Returns a continuous random value between -1.0 and 1.0.

Parameters Location FVector2D

Where to sample

Returns

Perlin noise in the range of -1.0 to 1.0

PerlinNoise3D static float32 Math::PerlinNoise3D( FVector 	Location 	)

Generates a 3D Perlin noise sample at the given location.  Returns a continuous random value between -1.0 and 1.0.

Parameters Location FVector

Where to sample

Returns

Perlin noise in the range of -1.0 to 1.0

GridSnap static float Math::GridSnap( float 	Location, float 	Grid 	) GridSnap static float32 Math::GridSnap( float32 	Location, float32 	Grid 	) SegmentIntersection2D static bool Math::SegmentIntersection2D( FVector 	SegmentStartA, FVector 	SegmentEndA, FVector 	SegmentStartB, FVector 	SegmentEndB, FVector& 	out_IntersectionPoint 	)

Returns true if there is an intersection between the segment specified by SegmentStartA and SegmentEndA, and the segment specified by SegmentStartB and SegmentEndB, in 2D space. If there is an intersection, the point is placed in out_IntersectionPoint

Parameters SegmentStartA FVector

start point of first segment

SegmentEndA FVector

end point of first segment

SegmentStartB FVector

start point of second segment

SegmentEndB FVector

end point of second segment

out_IntersectionPoint FVector&

out var for the intersection point (if any)

Returns

true if intersection occurred

FloatSpringInterp static float32 Math::FloatSpringInterp( float32 	Current, float32 	Target, FFloatSpringState& 	SpringState, float32 	Stiffness, float32 	CriticalDampingFactor, float32 	DeltaTime, float32 	Mass	 = 	1.f 	)

Uses a simple spring model to interpolate a float32 from Current to Target.

Parameters Current float32

## Members

### value

```
Current value
```

Target float32

### Target value

```
Target value
```

SpringState

### FFloatSpringState&

```
FFloatSpringState&
```

Data related to spring model (velocity, error, etc..) - Create a unique variable per spring

### Stiffness

```
float32
```

How stiff the spring model is (more stiffness means more oscillation around the target value)

### CriticalDampingFactor

```
float32
```

How much damping to apply to the spring (0 means no damping, 1 means critically damped which means no oscillation)

Mass

float32

### Multiplier that acts like mass on a spring

```
Multiplier that acts like mass on a spring
```

EaseIn

### static float Math::EaseIn

```
static float Math::EaseIn(const float& A, const float& B, float Alpha, float Exp)
```

EaseOut

### static float Math::EaseOut

```
static float Math::EaseOut(const float& A, const float& B, float Alpha, float Exp)
```

EaseInOut

### static float Math::EaseInOut

```
static float Math::EaseInOut(const float& A, const float& B, float Alpha, float Exp)
```

SinusoidalIn

### static float Math::SinusoidalIn

```
static float Math::SinusoidalIn(const float& A, const float& B, float Alpha)
```

SinusoidalOut

### static float Math::SinusoidalOut

```
static float Math::SinusoidalOut(const float& A, const float& B, float Alpha)
```

SinusoidalInOut

### static float Math::SinusoidalInOut

```
static float Math::SinusoidalInOut(const float& A, const float& B, float Alpha)
```

ExpoIn

### static float Math::ExpoIn

```
static float Math::ExpoIn(const float& A, const float& B, float Alpha)
```

ExpoOut

### static float Math::ExpoOut

```
static float Math::ExpoOut(const float& A, const float& B, float Alpha)
```

ExpoInOut

### static float Math::ExpoInOut

```
static float Math::ExpoInOut(const float& A, const float& B, float Alpha)
```

CircularIn

### static float Math::CircularIn

```
static float Math::CircularIn(const float& A, const float& B, float Alpha)
```

CircularOut

### static float Math::CircularOut

```
static float Math::CircularOut(const float& A, const float& B, float Alpha)
```

CircularInOut

### static float Math::CircularInOut

```
static float Math::CircularInOut(const float& A, const float& B, float Alpha)
```

EaseIn

### static float32 Math::EaseIn

```
static float32 Math::EaseIn(const float32& A, const float32& B, float32 Alpha, float32 Exp)
```

EaseOut

### static float32 Math::EaseOut

```
static float32 Math::EaseOut(const float32& A, const float32& B, float32 Alpha, float32 Exp)
```

EaseInOut

### static float32 Math::EaseInOut

```
static float32 Math::EaseInOut(const float32& A, const float32& B, float32 Alpha, float32 Exp)
```

SinusoidalIn

### static float32 Math::SinusoidalIn

```
static float32 Math::SinusoidalIn(const float32& A, const float32& B, float32 Alpha)
```

SinusoidalOut

### static float32 Math::SinusoidalOut

```
static float32 Math::SinusoidalOut(const float32& A, const float32& B, float32 Alpha)
```

SinusoidalInOut

### static float32 Math::SinusoidalInOut

```
static float32 Math::SinusoidalInOut(const float32& A, const float32& B, float32 Alpha)
```

ExpoIn

### static float32 Math::ExpoIn

```
static float32 Math::ExpoIn(const float32& A, const float32& B, float32 Alpha)
```

ExpoOut

### static float32 Math::ExpoOut

```
static float32 Math::ExpoOut(const float32& A, const float32& B, float32 Alpha)
```

ExpoInOut

### static float32 Math::ExpoInOut

```
static float32 Math::ExpoInOut(const float32& A, const float32& B, float32 Alpha)
```

CircularIn

### static float32 Math::CircularIn

```
static float32 Math::CircularIn(const float32& A, const float32& B, float32 Alpha)
```

CircularOut

### static float32 Math::CircularOut

```
static float32 Math::CircularOut(const float32& A, const float32& B, float32 Alpha)
```

CircularInOut

### static float32 Math::CircularInOut

```
static float32 Math::CircularInOut(const float32& A, const float32& B, float32 Alpha)
```

EaseIn

### static FVector Math::EaseIn

```
static FVector Math::EaseIn(FVector A, FVector B, float32 Alpha, float32 Exp)
```

EaseOut

### static FVector Math::EaseOut

```
static FVector Math::EaseOut(FVector A, FVector B, float32 Alpha, float32 Exp)
```

EaseInOut

### static FVector Math::EaseInOut

```
static FVector Math::EaseInOut(FVector A, FVector B, float32 Alpha, float32 Exp)
```

SinusoidalIn

### static FVector Math::SinusoidalIn

```
static FVector Math::SinusoidalIn(FVector A, FVector B, float32 Alpha)
```

SinusoidalOut

### static FVector Math::SinusoidalOut

```
static FVector Math::SinusoidalOut(FVector A, FVector B, float32 Alpha)
```

SinusoidalInOut

### static FVector Math::SinusoidalInOut

```
static FVector Math::SinusoidalInOut(FVector A, FVector B, float32 Alpha)
```

ExpoIn

### static FVector Math::ExpoIn

```
static FVector Math::ExpoIn(FVector A, FVector B, float32 Alpha)
```

ExpoOut

### static FVector Math::ExpoOut

```
static FVector Math::ExpoOut(FVector A, FVector B, float32 Alpha)
```

ExpoInOut

### static FVector Math::ExpoInOut

```
static FVector Math::ExpoInOut(FVector A, FVector B, float32 Alpha)
```

CircularIn

### static FVector Math::CircularIn

```
static FVector Math::CircularIn(FVector A, FVector B, float32 Alpha)
```

CircularOut

### static FVector Math::CircularOut

```
static FVector Math::CircularOut(FVector A, FVector B, float32 Alpha)
```

CircularInOut

### static FVector Math::CircularInOut

```
static FVector Math::CircularInOut(FVector A, FVector B, float32 Alpha)
```

IsPointInBox

### static bool Math::IsPointInBox

```
static bool Math::IsPointInBox(FVector Point, FVector BoxOrigin, FVector BoxExtent)
```

IsPointInBoxWithTransform

### static bool Math::IsPointInBoxWithTransform

```
static bool Math::IsPointInBoxWithTransform(FVector Point, FTransform BoxWorldTransform, FVector BoxExtent)
```

FindNearestPointsOnLineSegments

### static void Math::FindNearestPointsOnLineSegments

```
static void Math::FindNearestPointsOnLineSegments(FVector Segment1Start, FVector Segment1End, FVector Segment2Start, FVector Segment2End, FVector& Segment1Point, FVector& Segment2Point)
```

NormalizeToRange

### static float Math::NormalizeToRange

```
static float Math::NormalizeToRange(float Value, float RangeMin, float RangeMax)
```
