# UCanvas

**Visibility:** public

## Inheritance

UObject → UCanvas

## Description

A drawing canvas.

## CANVAS

### DrawText

```
void DrawText(
```

UFont 	RenderFont,

### FString 	RenderText,

```
FString RenderText, FVector2D ScreenPosition, FVector2D Scale = FVector2D(1.000000, 1.000000),
```

FLinearColor 	RenderColor	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ),

### float32 	Kerning	 = 	0.000000,

```
float32 Kerning = 0.000000, FLinearColor ShadowColor = FLinearColor(0.000000, 0.000000, 0.000000, 1.000000),
```

FVector2D 	ShadowOffset	 = 	FVector2D ( 1.000000 , 1.000000 ),

### bool 	bCentreX	 = 	false,

```
bool bCentreX = false, bool bCentreY = false, bool bOutlined = false, FLinearColor OutlineColor = FLinearColor(0.000000, 0.000000, 0.000000, 1.000000)
```

)

Draws text on the Canvas.

**Parameters**

RenderFont
UFont

Font to use when rendering the text. If this is null, then a default engine font is used.

RenderText
FString

Text to render on the Canvas.

ScreenPosition
FVector2D

Screen space position to render the text.

RenderColor
FLinearColor

Color to render the text.

Kerning
float32

Horizontal spacing adjustment to modify the spacing between each letter.

ShadowColor
FLinearColor

Color to render the shadow of the text.

ShadowOffset
FVector2D

Pixel offset relative to the screen space position to render the shadow of the text.

bCentreX
bool

If true, then interpret the screen space position X coordinate as the center of the rendered text.

bCentreY
bool

If true, then interpret the screen space position Y coordinate as the center of the rendered text.

bOutlined
bool

If true, then the text should be rendered with an outline.

OutlineColor
FLinearColor

Color to render the outline for the text.

DrawBorder
void DrawBorder(
UTexture 	BorderTexture,
UTexture 	BackgroundTexture,
UTexture 	LeftBorderTexture,
UTexture 	RightBorderTexture,
UTexture 	TopBorderTexture,
UTexture 	BottomBorderTexture,
FVector2D 	ScreenPosition,
FVector2D 	ScreenSize,
FVector2D 	CoordinatePosition,
FVector2D 	CoordinateSize,
FLinearColor 	RenderColor,
FVector2D 	BorderScale,
FVector2D 	BackgroundScale,
float32 	Rotation,
FVector2D 	PivotPoint,
FVector2D 	CornerSize
	)

Draws a 3x3 grid border with tiled frame and tiled interior on the Canvas.

**Parameters**

BorderTexture
UTexture

Texture to use for border.

BackgroundTexture
UTexture

Texture to use for border background.

LeftBorderTexture
UTexture

Texture to use for the tiling left border.

RightBorderTexture
UTexture

Texture to use for the tiling right border.

TopBorderTexture
UTexture

Texture to use for the tiling top border.

BottomBorderTexture
UTexture

Texture to use for the tiling bottom border.

ScreenPosition
FVector2D

Screen space position to render the texture.

ScreenSize
FVector2D

Screen space size to render the texture.

CoordinatePosition
FVector2D

Normalized UV starting coordinate to use when rendering the border texture.

CoordinateSize
FVector2D

Normalized UV size coordinate to use when rendering the border texture.

RenderColor
FLinearColor

Color to tint the border.

BorderScale
FVector2D

Scale of the border.

BackgroundScale
FVector2D

Scale of the background.

Rotation
float32

Rotation, in degrees, to render the texture.

PivotPoint
FVector2D

Normalized pivot point to use when rotating the texture.

CornerSize
FVector2D

Frame corner size in percent of frame texture (should be < 0.5f).

DrawBox
void DrawBox(
FVector2D 	ScreenPosition,
FVector2D 	ScreenSize,
float32 	Thickness	 = 	1.000000,
FLinearColor 	RenderColor	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 )
	)

Draws an unfilled box on the Canvas.

**Parameters**

ScreenPosition
FVector2D

Screen space position to render the text.

ScreenSize
FVector2D

Screen space size to render the texture.

Thickness
float32

How many pixels thick the box lines should be.

DrawLine
void DrawLine(

FVector2D 	ScreenPositionA,
FVector2D 	ScreenPositionB,
float32 	Thickness	 = 	1.000000,
FLinearColor 	RenderColor	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 )

)

Draws a line on the Canvas.

**Parameters**

ScreenPositionA
FVector2D

Starting position of the line in screen space.

ScreenPositionB
FVector2D

Ending position of the line in screen space.

Thickness
float32

How many pixels thick this line should be.

RenderColor
FLinearColor

Color to render the line.

DrawMaterial
void DrawMaterial(
UMaterialInterface 	RenderMaterial,
FVector2D 	ScreenPosition,
FVector2D 	ScreenSize,
FVector2D 	CoordinatePosition,
FVector2D 	CoordinateSize	 = 	FVector2D ( 1.000000 , 1.000000 ),
float32 	Rotation	 = 	0.000000,
FVector2D 	PivotPoint	 = 	FVector2D ( 0.500000 , 0.500000 )
	)

Draws a material on the Canvas.

**Parameters**

RenderMaterial
UMaterialInterface

Material to use when rendering. Remember that only the emissive channel is able to be rendered as no lighting is performed when rendering to the Canvas.

ScreenPosition
FVector2D

Screen space position to render the texture.

ScreenSize
FVector2D

Screen space size to render the texture.

CoordinatePosition
FVector2D

Normalized UV starting coordinate to use when rendering the texture.

CoordinateSize
FVector2D

Normalized UV size coordinate to use when rendering the texture.

Rotation
float32

Rotation, in degrees, to render the texture.

PivotPoint
FVector2D

Normalized pivot point to use when rotating the texture.

DrawMaterialTriangles
void DrawMaterialTriangles(
UMaterialInterface 	RenderMaterial,
TArray<FCanvasUVTri> 	Triangles
	)

Draws a set of triangles on the Canvas.

**Parameters**

RenderMaterial
UMaterialInterface

Material to use when rendering. Remember that only the emissive channel is able to be rendered as no lighting is performed when rendering to the Canvas.

Triangles
TArray<FCanvasUVTri>

Triangles to render.

DrawPolygon
void DrawPolygon(

UTexture 	RenderTexture,
FVector2D 	ScreenPosition,
FVector2D 	Radius	 = 	FVector2D ( 1.000000 , 1.000000 ),
int 	NumberOfSides	 = 	3,
FLinearColor 	RenderColor	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 )

)

Draws a polygon on the Canvas.

**Parameters**

RenderTexture
UTexture

Texture to use when rendering the triangles. If no texture is set, then the default white texture is used.

ScreenPosition
FVector2D

Screen space position to render the text.

Radius
FVector2D

How large in pixels this polygon should be.

NumberOfSides
int

How many sides this polygon should have. This should be above or equal to three.

RenderColor
FLinearColor

Color to tint the polygon.

Deproject
void Deproject(
FVector2D 	ScreenPosition,
FVector& 	WorldOrigin,
FVector& 	WorldDirection
	)

Performs a deprojection of a screen space coordinate using the projection matrix set up for the Canvas.

**Parameters**

ScreenPosition
FVector2D

Screen space position to deproject to the World.

WorldOrigin
FVector&

Vector which is the world position of the screen space position.

WorldDirection
FVector&

Vector which can be used in a trace to determine what is "behind" the screen space position. Useful for object picking.

DrawTexture
void DrawTexture(

UTexture 	RenderTexture,
FVector2D 	ScreenPosition,
FVector2D 	ScreenSize,
FVector2D 	CoordinatePosition,
FVector2D 	CoordinateSize	 = 	FVector2D ( 1.000000 , 1.000000 ),
FLinearColor 	RenderColor	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ),
EBlendMode 	BlendMode	 = 	EBlendMode :: BLEND_Translucent,
float32 	Rotation	 = 	0.000000,
FVector2D 	PivotPoint	 = 	FVector2D ( 0.500000 , 0.500000 )

)

Draws a texture on the Canvas.

**Parameters**

RenderTexture
UTexture

Texture to use when rendering. If no texture is set then this will use the default white texture.

ScreenPosition
FVector2D

Screen space position to render the texture.

ScreenSize
FVector2D

Screen space size to render the texture.

CoordinatePosition
FVector2D

Normalized UV starting coordinate to use when rendering the texture.

CoordinateSize
FVector2D

Normalized UV size coordinate to use when rendering the texture.

RenderColor
FLinearColor

Color to use when rendering the texture.

BlendMode
EBlendMode

Blending mode to use when rendering the texture.

Rotation
float32

Rotation, in degrees, to render the texture.

PivotPoint
FVector2D

Normalized pivot point to use when rotating the texture.

DrawTriangles
void DrawTriangles(
UTexture 	RenderTexture,
TArray<FCanvasUVTri> 	Triangles
	)

Draws a set of triangles on the Canvas.

**Parameters**

RenderTexture
UTexture

Texture to use when rendering the triangles. If no texture is set, then the default white texture is used.

Triangles
TArray<FCanvasUVTri>

Triangles to render.

Project
FVector Project(
FVector 	WorldLocation
	)

Performs a projection of a world space coordinates using the projection matrix set up for the Canvas.

**Parameters**

WorldLocation
FVector

World space location to project onto the Canvas rendering plane.

**Returns**

Returns a vector where X, Y defines a screen space position representing the world space location.

WrappedTextSize
FVector2D WrappedTextSize(
UFont 	RenderFont,
FString 	RenderText
	)

Returns the wrapped text size in screen space coordinates.

**Parameters**

RenderFont
UFont

Font to use when determining the size of the text. If this is null, then a default engine font is used.

RenderText
FString

Text to determine the size of.

**Returns**

Returns the screen space size of the text.

ClippedTextSize
FVector2D ClippedTextSize(
UFont 	RenderFont,
FString 	RenderText,
FVector2D 	Scale	 = 	FVector2D ( 1.000000 , 1.000000 )
	)

Returns the clipped text size in screen space coordinates.

**Parameters**

RenderFont
UFont

Font to use when determining the size of the text. If this is null, then a default engine font is used.

RenderText
FString

Text to determine the size of.

Scale
FVector2D

Scale of the font to use when determining the size of the text.

**Returns**

Returns the screen space size of the text.

STATIC FUNCTIONS
StaticClass
static UClass UCanvas::StaticClass()
