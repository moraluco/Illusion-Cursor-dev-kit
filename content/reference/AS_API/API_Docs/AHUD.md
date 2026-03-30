# AHUD

**Visibility:** public

## Inheritance

AActor → AHUD → ADebugCameraHUD

## Description

Base class of the heads-up display. This has a canvas and a debug canvas on which primitives can be drawn.  It also contains a list of simple hit boxes that can be used for simple item click detection.  A method of rendering debug text is also included.  Provides some simple methods for rendering text, textures, rectangles and materials which can also be accessed from blueprints.  @see UCanvas @see FHUDHitBox @see FDebugTextInfo

## HUD

### bShowHUD

```
bool bShowHUD
```

Whether or not the HUD should be drawn.

### OwningPawn

```
const APawn OwningPawn
```

Returns the Pawn for this HUD's player.

### OwningPlayerController

```
const APlayerController OwningPlayerController
```

Returns the PlayerController for this HUD's player.

bLostFocusPaused

### bLostFocusPaused

```
const bool bLostFocusPaused
```

Tells whether the game was paused due to lost focus

### PlayerOwner

```
APlayerController PlayerOwner
```

PlayerController which owns this HUD.

### bShowDebugInfo

```
bool bShowDebugInfo
```

If true, current ViewTarget shows debug information using its DisplayDebug().

### bShowHitBoxDebugInfo

```
bool bShowHitBoxDebugInfo
```

If true, show hitbox debugging info.

### bShowOverlays

```
bool bShowOverlays
```

If true, render actor overlays.

### bEnableDebugTextShadow

```
bool bEnableDebugTextShadow
```

Put shadow on debug strings

---

## HUD

### DrawRect

```
void DrawRect(FLinearColor RectColor, float32 ScreenX, float32 ScreenY, float32 ScreenW, float32 ScreenH)
```

Draws a colored untextured quad on the HUD.

**Parameters**

RectColor
FLinearColor

Color of the rect. Can be translucent.

ScreenX
float32

Screen-space X coordinate of upper left corner of the quad.

ScreenY
float32

Screen-space Y coordinate of upper left corner of the quad.

ScreenW
float32

Screen-space width of the quad (in pixels).

ScreenH
float32

Screen-space height of the quad (in pixels).

AddHitBox
void AddHitBox(
FVector2D 	Position,
FVector2D 	Size,
FName 	InName,
bool 	bConsumesInput,
int 	Priority	 = 	0
	)

Add a hitbox to the hud

**Parameters**

Position
FVector2D

Coordinates of the top left of the hit box.

Size
FVector2D

Size of the hit box.

bConsumesInput
bool

Whether click processing should continue if this hit box is clicked.

Priority
int

The priority of the box used for layering. Larger values are considered first.  Equal values are considered in the order they were added.

Deproject
void Deproject(
float32 	ScreenX,
float32 	ScreenY,
FVector& 	WorldPosition,
FVector& 	WorldDirection
	) const

Transforms a 2D screen location into a 3D location and direction

DrawLine
void DrawLine(
float32 	StartScreenX,
float32 	StartScreenY,
float32 	EndScreenX,
float32 	EndScreenY,
FLinearColor 	LineColor,
float32 	LineThickness	 = 	0.000000
	)

Draws a 2D line on the HUD.

**Parameters**

StartScreenX
float32

Screen-space X coordinate of start of the line.

StartScreenY
float32

Screen-space Y coordinate of start of the line.

EndScreenX
float32

Screen-space X coordinate of end of the line.

EndScreenY
float32

Screen-space Y coordinate of end of the line.

LineColor
FLinearColor

Color to draw line

LineThickness
float32

Thickness of the line to draw

DrawMaterial
void DrawMaterial(
UMaterialInterface 	Material,
float32 	ScreenX,
float32 	ScreenY,
float32 	ScreenW,
float32 	ScreenH,
float32 	MaterialU,
float32 	MaterialV,
float32 	MaterialUWidth,
float32 	MaterialVHeight,
float32 	Scale,
bool 	bScalePosition,
float32 	Rotation,
FVector2D 	RotPivot
	)

Draws a material-textured quad on the HUD.

**Parameters**

Material
UMaterialInterface

Material to use

ScreenX
float32

Screen-space X coordinate of upper left corner of the quad.

ScreenY
float32

Screen-space Y coordinate of upper left corner of the quad.

ScreenW
float32

Screen-space width of the quad (in pixels).

ScreenH
float32

Screen-space height of the quad (in pixels).

MaterialU
float32

Texture-space U coordinate of upper left corner of the quad

MaterialV
float32

Texture-space V coordinate of upper left corner of the quad.

MaterialUWidth
float32

Texture-space width of the quad (in normalized UV distance).

MaterialVHeight
float32

Texture-space height of the quad (in normalized UV distance).

Scale
float32

Amount to scale the entire texture (horizontally and vertically)

bScalePosition
bool

Whether the "Scale" parameter should also scale the position of this draw call.

Rotation
float32

Amount to rotate this quad

RotPivot
FVector2D

Location (as proportion of quad, 0-1) to rotate about

DrawMaterialSimple
void DrawMaterialSimple(
UMaterialInterface 	Material,
float32 	ScreenX,
float32 	ScreenY,
float32 	ScreenW,
float32 	ScreenH,
float32 	Scale	 = 	1.000000,
bool 	bScalePosition	 = 	false
	)

Draws a material-textured quad on the HUD.  Assumes UVs such that the entire material is shown.

**Parameters**

Material
UMaterialInterface

Material to use

ScreenX
float32

Screen-space X coordinate of upper left corner of the quad.

ScreenY
float32

Screen-space Y coordinate of upper left corner of the quad.

ScreenW
float32

Screen-space width of the quad (in pixels).

ScreenH
float32

Screen-space height of the quad (in pixels).

Scale
float32

Amount to scale the entire texture (horizontally and vertically)

bScalePosition
bool

Whether the "Scale" parameter should also scale the position of this draw call.

DrawMaterialTriangle
void DrawMaterialTriangle(

UMaterialInterface 	Material,
FVector2D 	V0_Pos,
FVector2D 	V1_Pos,
FVector2D 	V2_Pos,
FVector2D 	V0_UV,
FVector2D 	V1_UV,
FVector2D 	V2_UV,
FLinearColor 	V0_Color	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ),
FLinearColor 	V1_Color	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ),
FLinearColor 	V2_Color	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 )

)
Project
FVector Project(
FVector 	Location,
bool 	bClampToZeroPlane	 = 	true
	) const

Transforms a 3D world-space vector into 2D screen coordinates

**Parameters**

Location
FVector

The world-space position to transform

bClampToZeroPlane
bool

If true, 2D screen coordinates behind the viewing plane (-Z) will have Z set to 0 (leaving X and Y alone)

**Returns**

The transformed vector

DrawText
void DrawText(
FString 	Text,
FLinearColor 	TextColor,
float32 	ScreenX,
float32 	ScreenY,
UFont 	Font	 = 	nullptr,
float32 	Scale	 = 	1.000000,
bool 	bScalePosition	 = 	false
	)

Draws a string on the HUD.

**Parameters**

Text
FString

String to draw

TextColor
FLinearColor

Color to draw string

ScreenX
float32

Screen-space X coordinate of upper left corner of the string.

ScreenY
float32

Screen-space Y coordinate of upper left corner of the string.

Font
UFont

Font to draw text.  If NULL, default font is chosen.

Scale
float32

Scale multiplier to control size of the text.

bScalePosition
bool

Whether the "Scale" parameter should also scale the position of this draw call.

DrawTexture
void DrawTexture(
UTexture 	Texture,
float32 	ScreenX,
float32 	ScreenY,
float32 	ScreenW,
float32 	ScreenH,
float32 	TextureU,
float32 	TextureV,
float32 	TextureUWidth,
float32 	TextureVHeight,
FLinearColor 	TintColor,
EBlendMode 	BlendMode,
float32 	Scale,
bool 	bScalePosition,
float32 	Rotation,
FVector2D 	RotPivot
	)

Draws a textured quad on the HUD.

**Parameters**

Texture
UTexture

Texture to draw.

ScreenX
float32

Screen-space X coordinate of upper left corner of the quad.

ScreenY
float32

Screen-space Y coordinate of upper left corner of the quad.

ScreenW
float32

Screen-space width of the quad (in pixels).

ScreenH
float32

Screen-space height of the quad (in pixels).

TextureU
float32

Texture-space U coordinate of upper left corner of the quad

TextureV
float32

Texture-space V coordinate of upper left corner of the quad.

TextureUWidth
float32

Texture-space width of the quad (in normalized UV distance).

TextureVHeight
float32

Texture-space height of the quad (in normalized UV distance).

TintColor
FLinearColor

Vertex color for the quad.

BlendMode
EBlendMode

Controls how to blend this quad with the scene. Translucent by default.

Scale
float32

Amount to scale the entire texture (horizontally and vertically)

bScalePosition
bool

Whether the "Scale" parameter should also scale the position of this draw call.

Rotation
float32

Amount to rotate this quad

RotPivot
FVector2D

Location (as proportion of quad, 0-1) to rotate about

DrawTextureSimple
void DrawTextureSimple(
UTexture 	Texture,
float32 	ScreenX,
float32 	ScreenY,
float32 	Scale	 = 	1.000000,
bool 	bScalePosition	 = 	false
	)

Draws a textured quad on the HUD. Assumes 1:1 texel density.

**Parameters**

Texture
UTexture

Texture to draw.

ScreenX
float32

Screen-space X coordinate of upper left corner of the quad.

ScreenY
float32

Screen-space Y coordinate of upper left corner of the quad.

Scale
float32

Scale multiplier to control size of the text.

bScalePosition
bool

Whether the "Scale" parameter should also scale the position of this draw call.

GetActorsInSelectionRectangle
void GetActorsInSelectionRectangle(
TSubclassOf<AActor> 	ClassFilter,
FVector2D 	FirstPoint,
FVector2D 	SecondPoint,
TArray<AActor>& 	OutActors,
bool 	bIncludeNonCollidingComponents	 = 	true,
bool 	bActorMustBeFullyEnclosed	 = 	false
	)

Returns the array of actors inside a selection rectangle, with a class filter.

Sample usage:

TArray<AStaticMeshActor*> ActorsInSelectionRect; Canvas->GetActorsInSelectionRectangle<AStaticMeshActor>(FirstPoint,SecondPoint,ActorsInSelectionRect);

**Parameters**

FirstPoint
FVector2D

The first point, or anchor of the marquee box. Where the dragging of the marquee started in screen space.

SecondPoint
FVector2D

The second point, where the mouse cursor currently is / the other point of the box selection, in screen space.

bIncludeNonCollidingComponents
bool

Whether to include even non-colliding components of the actor when determining its bounds

bActorMustBeFullyEnclosed
bool

The Selection rule: whether the selection box can partially intersect Actor, or must fully enclose the Actor.

**Returns**

OutActors  The actors that are within the selection box according to selection rule

GetOwningPawn
APawn GetOwningPawn() const

Returns the Pawn for this HUD's player.

GetOwningPlayerController
APlayerController GetOwningPlayerController() const

Returns the PlayerController for this HUD's player.

GetTextSize
void GetTextSize(
FString 	Text,
float32& 	OutWidth,
float32& 	OutHeight,
UFont 	Font	 = 	nullptr,
float32 	Scale	 = 	1.000000
	) const

Returns the width and height of a string.

**Parameters**

Text
FString

String to draw

OutWidth
float32&

Returns the width in pixels of the string.

OutHeight
float32&

Returns the height in pixels of the string.

Font
UFont

Font to draw text.  If NULL, default font is chosen.

Scale
float32

Scale multiplier to control size of the text.

---

## FUNCTIONS

### HitBoxClick

```
void HitBoxClick(const FName BoxName)
```

Called when a hit box is clicked on. Provides the name associated with that box.

### DrawHUD

```
void DrawHUD(int SizeX, int SizeY)
```

Hook to allow blueprints to do custom HUD drawing. See: bSuppressNativeHUD to control HUD drawing in base class.  Note:  the canvas resource used for drawing is only valid during this event, it will not be valid if drawing functions are called later (e.g. after a Delay node).

### HitBoxBeginCursorOver

```
void HitBoxBeginCursorOver(const FName BoxName)
```

Called when a hit box is moused over.

AddDebugText

### void AddDebugText

```
void AddDebugText(FString DebugText, AActor SrcActor, float32 Duration, FVector Offset, FVector DesiredOffset, FColor TextColor, bool bSkipOverwriteCheck, bool bAbsoluteLocation, bool bKeepAttachedToActor, UFont InFont, float32 FontScale, bool bDrawShadow)
```

Add debug text for a specific actor to be displayed via DrawDebugTextList().  If the debug text is invalid then it will attempt to remove any previous entries via RemoveDebugText().

**Parameters**

DebugText
FString

Text to draw

SrcActor
AActor

Actor to which this relates

Duration
float32

Duration to display the string

Offset
FVector

Initial offset to render text

DesiredOffset
FVector

Desired offset to render text - the text will move to this location over the given duration

TextColor
FColor

Color of text to render

bSkipOverwriteCheck
bool

skips the check to see if there is already debug text for the given actor

bAbsoluteLocation
bool

use an absolute world location

bKeepAttachedToActor
bool

if this is true the text will follow the actor, otherwise it will be drawn at the location when the call was made

InFont
UFont

font to use

FontScale
float32

scale

bDrawShadow
bool

Draw shadow on this string

HitBoxEndCursorOver
void HitBoxEndCursorOver(
const 	FName 	BoxName
	)

Called when a hit box no longer has the mouse over it.

HitBoxRelease
void HitBoxRelease(
const 	FName 	BoxName
	)

Called when a hit box is unclicked. Provides the name associated with that box.

RemoveAllDebugStrings
void RemoveAllDebugStrings()

Remove all debug strings added via AddDebugText

RemoveDebugText
void RemoveDebugText(
AActor 	SrcActor,
bool 	bLeaveDurationText
	)

Remove debug strings for the given actor

**Parameters**

SrcActor
AActor

Actor whose string you wish to remove

bLeaveDurationText
bool

when true text that has a finite duration will be removed, otherwise all will be removed for given actor

GetbLostFocusPaused
bool GetbLostFocusPaused() const
GetbShowHUD
bool GetbShowHUD() const
SetbShowHUD
void SetbShowHUD(
bool 	Value
	)
GetbShowDebugInfo
bool GetbShowDebugInfo() const
SetbShowDebugInfo
void SetbShowDebugInfo(
bool 	Value
	)
GetbShowHitBoxDebugInfo
bool GetbShowHitBoxDebugInfo() const
SetbShowHitBoxDebugInfo
void SetbShowHitBoxDebugInfo(
bool 	Value
	)
GetbShowOverlays
bool GetbShowOverlays() const
SetbShowOverlays
void SetbShowOverlays(
bool 	Value
	)
GetbEnableDebugTextShadow
bool GetbEnableDebugTextShadow() const
SetbEnableDebugTextShadow
void SetbEnableDebugTextShadow(
bool 	Value
	)
STATIC FUNCTIONS
Spawn
static AHUD AHUD::Spawn(
FVector 	Location	 = 	FVector :: ZeroVector,
FRotator 	Rotation	 = 	FRotator :: ZeroRotator,
FName 	Name	 = 	NAME_None,
ULevel 	Level	 = 	nullptr
	)
StaticClass
static UClass AHUD::StaticClass()
