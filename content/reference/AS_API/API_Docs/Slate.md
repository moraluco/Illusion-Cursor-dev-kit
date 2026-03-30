# Slate

## Inheritance

Slate → SLATEBRUSH → EqualEqual_SlateBrush

## Description

static bool Slate::EqualEqual_SlateBrush( FSlateBrush 	A, FSlateBrush 	B 	)

Returns whether brushes A and B are identical.

USER INTERFACE|GEOMETRY AbsoluteToViewport static void Slate::AbsoluteToViewport( FVector2D 	AbsoluteDesktopCoordinate, FVector2D& 	PixelPosition, FVector2D& 	ViewportPosition 	)

Translates absolute coordinate in desktop space of the geometry provided into local viewport coordinates.

Parameters PixelPosition FVector2D&

The position in the game's viewport, usable for line traces and other uses where you need a coordinate in the space of viewport resolution units.

ViewportPosition FVector2D&

The position in the space of other widgets in the viewport.  Like if you wanted to add another widget to the viewport at the same position in viewport space as this location, this is what you would use.

LocalToViewport static void Slate::LocalToViewport( FGeometry 	Geometry, FVector2D 	LocalCoordinate, FVector2D& 	PixelPosition, FVector2D& 	ViewportPosition 	)

Translates local coordinate of the geometry provided into local viewport coordinates.

Parameters PixelPosition FVector2D&

The position in the game's viewport, usable for line traces and other uses where you need a coordinate in the space of viewport resolution units.

ViewportPosition FVector2D&

The position in the space of other widgets in the viewport.  Like if you wanted to add another widget to the viewport at the same position in viewport space as this location, this is what you would use.

GetAbsoluteSize static FVector2D Slate::GetAbsoluteSize( FGeometry 	Geometry 	)

Returns the size of the geometry in absolute space.

GetLocalSize static FVector2D Slate::GetLocalSize( FGeometry 	Geometry 	)

Returns the size of the geometry in local space.

GetLocalTopLeft static FVector2D Slate::GetLocalTopLeft( FGeometry 	Geometry 	)

Returns the local top/left of the geometry in local space.

IsUnderLocation static bool Slate::IsUnderLocation( FGeometry 	Geometry, FVector2D 	AbsoluteCoordinate 	)

Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.

Returns

true if the provided location in absolute coordinates is within the bounds of this geometry.

LocalToAbsolute static FVector2D Slate::LocalToAbsolute( FGeometry 	Geometry, FVector2D 	LocalCoordinate 	)

Translates local coordinates into absolute coordinates

Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.

Returns

### Absolute coordinates

```
Absolute coordinates
```

AbsoluteToLocal

### static FVector2D Slate::AbsoluteToLocal

```
static FVector2D Slate::AbsoluteToLocal(FGeometry Geometry, FVector2D AbsoluteCoordinate)
```

Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.

**Returns**

Transforms AbsoluteCoordinate into the local space of this Geometry.

ScreenToViewport
static void Slate::ScreenToViewport(
FVector2D 	ScreenPosition,
FVector2D& 	ViewportPosition
	)

Translates a screen position in pixels into the local space of the viewport widget.

ScreenToWidgetAbsolute
static void Slate::ScreenToWidgetAbsolute(
FVector2D 	ScreenPosition,
FVector2D& 	AbsoluteCoordinate,
bool 	bIncludeWindowPosition	 = 	false
	)

Translates a screen position in pixels into absolute application coordinates.  If bIncludeWindowPosition is true, then this method will also remove the game window's position (useful when in windowed mode).

ScreenToWidgetLocal
static void Slate::ScreenToWidgetLocal(
FGeometry 	Geometry,
FVector2D 	ScreenPosition,
FVector2D& 	LocalCoordinate,
bool 	bIncludeWindowPosition	 = 	false
	)

Translates a screen position in pixels into the local space of a widget with the given geometry.  If bIncludeWindowPosition is true, then this method will also remove the game window's position (useful when in windowed mode).

TransformScalarAbsoluteToLocal
static float32 Slate::TransformScalarAbsoluteToLocal(
FGeometry 	Geometry,
float32 	AbsoluteScalar
	)
TransformScalarLocalToAbsolute
static float32 Slate::TransformScalarLocalToAbsolute(
FGeometry 	Geometry,
float32 	LocalScalar
	)
TransformVectorAbsoluteToLocal
static FVector2D Slate::TransformVectorAbsoluteToLocal(
FGeometry 	Geometry,
FVector2D 	AbsoluteVector
	)
TransformVectorLocalToAbsolute
static FVector2D Slate::TransformVectorLocalToAbsolute(
FGeometry 	Geometry,
FVector2D 	LocalVector
	)
