# Widget

## Inheritance

Widget

## Description

STATIC VARIABLES DragDroppingContent static const UDragDropOperation Widget::DragDroppingContent

## FOCUS

### SetFocusToGameViewport

```
static void Widget::SetFocusToGameViewport()
```

---

## INPUT

### SetInputMode_GameOnly

```
static void Widget::SetInputMode_GameOnly(APlayerController PlayerController)
```

Setup an input mode that allows only player input / player controller to respond to user input.

Note: Any bound Input Events in this widget will be called.

### SetInputMode_GameAndUIEx

```
static void Widget::SetInputMode_GameAndUIEx(
```

APlayerController 	PlayerController,

UWidget 	InWidgetToFocus	 = 	nullptr,

EMouseLockMode 	InMouseLockMode	 = 	EMouseLockMode :: DoNotLock,

bool 	bHideCursorDuringCapture	 = 	true

)

Setup an input mode that allows only the UI to respond to user input, and if the UI doesn't handle it player input / player controller gets a chance.

Note: This means that any bound Input events in the widget will be called.

### SetInputMode_UIOnlyEx

```
static void Widget::SetInputMode_UIOnlyEx(
```

APlayerController 	PlayerController,

UWidget 	InWidgetToFocus	 = 	nullptr,

EMouseLockMode 	InMouseLockMode	 = 	EMouseLockMode :: DoNotLock

)

Setup an input mode that allows only the UI to respond to user input.

Note: This means that any bound Input Events in the widget will not be called!

---

## PAINTING

### DrawTextFormatted

```
static void Widget::DrawTextFormatted(
```

FPaintContext& 	Context,

### FText 	Text,

```
FText Text, FVector2D Position, UFont Font, int FontSize = 16, FName FontTypeFace = FName(""),
```

FLinearColor 	Tint	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 )

)

Draws text.

**Parameters**

Text
FText

The string to draw.

Position
FVector2D

The starting position where the text is drawn in local space.

Tint
FLinearColor

Color to render the line.

DrawBox
static void Widget::DrawBox(

FPaintContext& 	Context,
FVector2D 	Position,
FVector2D 	Size,
USlateBrushAsset 	Brush,
FLinearColor 	Tint	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 )

)

Draws a box

DrawLine
static void Widget::DrawLine(

FPaintContext& 	Context,
FVector2D 	PositionA,
FVector2D 	PositionB,
FLinearColor 	Tint	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ),
bool 	bAntiAlias	 = 	true,
float32 	Thickness	 = 	1.000000

)

Draws a line.

**Parameters**

PositionA
FVector2D

Starting position of the line in local space.

PositionB
FVector2D

Ending position of the line in local space.

Tint
FLinearColor

Color to render the line.

bAntiAlias
bool

Whether the line should be antialiased.

Thickness
float32

How many pixels thick this line should be.

DrawLines
static void Widget::DrawLines(

FPaintContext& 	Context,
TArray<FVector2D> 	Points,
FLinearColor 	Tint	 = 	FLinearColor ( 1.000000 , 1.000000 , 1.000000 , 1.000000 ),
bool 	bAntiAlias	 = 	true,
float32 	Thickness	 = 	1.000000

)

Draws several line segments.

**Parameters**

Points
TArray<FVector2D>

Line pairs, each line needs to be 2 separate points in the array.

Tint
FLinearColor

Color to render the line.

bAntiAlias
bool

Whether the line should be antialiased.

Thickness
float32

How many pixels thick this line should be.

---

## WIDGET

### GetInputEventFromCharacterEvent

```
static FInputEvent Widget::GetInputEventFromCharacterEvent(FCharacterEvent Event)
```

GetKeyEventFromAnalogInputEvent

### static FKeyEvent Widget::GetKeyEventFromAnalogInputEvent

```
static FKeyEvent Widget::GetKeyEventFromAnalogInputEvent(FAnalogInputEvent Event)
```

GetInputEventFromNavigationEvent

### static FInputEvent Widget::GetInputEventFromNavigationEvent

```
static FInputEvent Widget::GetInputEventFromNavigationEvent(FNavigationEvent Event)
```

GetAllWidgetsOfClass

### static void Widget::GetAllWidgetsOfClass

```
static void Widget::GetAllWidgetsOfClass(TArray<UUserWidget>& FoundWidgets, TSubclassOf<UUserWidget> WidgetClass, bool TopLevelOnly = true)
```

Find all widgets of a certain class.

**Parameters**

FoundWidgets
TArray<UUserWidget>&

The widgets that were found matching the filter.

WidgetClass
TSubclassOf<UUserWidget>

The widget class to filter by.

TopLevelOnly
bool

Only the widgets that are direct children of the viewport will be returned.

GetAllWidgetsWithInterface
static void Widget::GetAllWidgetsWithInterface(
TArray<UUserWidget>& 	FoundWidgets,
TSubclassOf<UInterface> 	Interface,
bool 	TopLevelOnly
	)

Find all widgets in the world with the specified interface.  This is a slow operation, use with caution e.g. do not use every frame.

**Parameters**

FoundWidgets
TArray<UUserWidget>&

Output array of widgets that implement the specified interface.

Interface
TSubclassOf<UInterface>

The interface to find. Must be specified or result array will be empty.

TopLevelOnly
bool

Only the widgets that are direct children of the viewport will be returned.

GetInputEventFromPointerEvent
static FInputEvent Widget::GetInputEventFromPointerEvent(
FPointerEvent 	Event
	)
GetInputEventFromKeyEvent
static FInputEvent Widget::GetInputEventFromKeyEvent(
FKeyEvent 	Event
	)

---

## WIDGET \| ACCESSIBILITY

### SetColorVisionDeficiencyType

```
static void Widget::SetColorVisionDeficiencyType(
```

EColorVisionDeficiency 	Type,

float32 	Severity,

### bool 	CorrectDeficiency,

```
bool 	ShowCorrectionWithDeficiency
```

)

### window

```
Apply color deficiency correction settings to the game window
```
**Parameters**

Type
EColorVisionDeficiency

The type of color deficiency correction to apply.

Severity
float32

Intensity of the color deficiency correction effect, from 0 to 1.

CorrectDeficiency
bool

Shifts the color spectrum to the visible range based on the current deficiency type.

ShowCorrectionWithDeficiency
bool

If you're correcting the color deficiency, you can use this to visualize what the correction looks like with the deficiency.

---

## WIDGET \| BRUSH

### MakeBrushFromAsset

```
static FSlateBrush Widget::MakeBrushFromAsset(USlateBrushAsset BrushAsset)
```

Creates a Slate Brush from a Slate Brush Asset

**Returns**

A new slate brush using the asset's brush.

MakeBrushFromTexture
static FSlateBrush Widget::MakeBrushFromTexture(
UTexture2D 	Texture,
int 	Width	 = 	0,
int 	Height	 = 	0
	)

Creates a Slate Brush from a Texture2D

**Parameters**

Width
int

When less than or equal to zero, the Width of the brush will default to the Width of the Texture

Height
int

When less than or equal to zero, the Height of the brush will default to the Height of the Texture

**Returns**

A new slate brush using the texture.

MakeBrushFromMaterial
static FSlateBrush Widget::MakeBrushFromMaterial(
UMaterialInterface 	Material,
int 	Width	 = 	32,
int 	Height	 = 	32
	)

Creates a Slate Brush from a Material.  Materials don't have an implicit size, so providing a widget and height is required to hint slate with how large the image wants to be by default.

**Returns**

A new slate brush using the material.

NoResourceBrush
static FSlateBrush Widget::NoResourceBrush()

Creates a Slate Brush that wont draw anything, the "Null Brush".

**Returns**

A new slate brush that wont draw anything.

GetBrushResourceAsMaterial
static UMaterialInterface Widget::GetBrushResourceAsMaterial(
FSlateBrush 	Brush
	)

Gets the brush resource as a material.

GetBrushResource
static UObject Widget::GetBrushResource(
FSlateBrush 	Brush
	)

Gets the resource object on a brush.  This could be a UTexture2D or a UMaterialInterface.

GetBrushResourceAsTexture2D
static UTexture2D Widget::GetBrushResourceAsTexture2D(
FSlateBrush 	Brush
	)

Gets the brush resource as a texture 2D.

GetDynamicMaterial
static UMaterialInstanceDynamic Widget::GetDynamicMaterial(
FSlateBrush& 	Brush
	)

Gets the material that allows changes to parameters at runtime.  The brush must already have a material assigned to it, if it does it will automatically be converted to a MID.

**Returns**

A material that supports dynamic input from the game.

SetBrushResourceToMaterial
static void Widget::SetBrushResourceToMaterial(
FSlateBrush& 	Brush,
UMaterialInterface 	Material
	)

Sets the resource on a brush to be a Material.

SetBrushResourceToTexture
static void Widget::SetBrushResourceToTexture(
FSlateBrush& 	Brush,
UTexture2D 	Texture
	)

Sets the resource on a brush to be a UTexture2D.

WIDGET|DRAG AND DROP
CancelDragDrop
static void Widget::CancelDragDrop()

Cancels any current drag drop operation.

IsDragDropping
static bool Widget::IsDragDropping()

Returns true if a drag/drop event is occurring that a widget can handle.

GetDragDroppingContent
static UDragDropOperation Widget::GetDragDroppingContent()

Returns the drag and drop operation that is currently occurring if any, otherwise nothing.

WIDGET|DRAG AND DROP|EVENT REPLY
EndDragDrop
static FEventReply Widget::EndDragDrop(
FEventReply& 	Reply
	)

An event should return FReply::Handled().EndDragDrop() to request that the current drag/drop operation be terminated.

DetectDrag
static FEventReply Widget::DetectDrag(
FEventReply& 	Reply,
UWidget 	WidgetDetectingDrag,
FKey 	DragKey
	)

Ask Slate to detect if a user starts dragging in this widget later.  Slate internally tracks the movement and if it surpasses the drag threshold, Slate will send an OnDragDetected event to the widget.

**Parameters**

WidgetDetectingDrag
UWidget

Detect dragging in this widget

DragKey
FKey

This button should be pressed to detect the drag

DetectDragIfPressed
static FEventReply Widget::DetectDragIfPressed(
FPointerEvent 	PointerEvent,
UWidget 	WidgetDetectingDrag,
FKey 	DragKey
	)

Given the pointer event, emit the DetectDrag reply if the provided key was pressed.  If the DragKey is a touch key, that will also automatically work.

**Parameters**

PointerEvent
FPointerEvent

The pointer device event coming in.

WidgetDetectingDrag
UWidget

Detect dragging in this widget.

DragKey
FKey

This button should be pressed to detect the drag, won't emit the DetectDrag FEventReply unless this is pressed.

WIDGET|EVENT REPLY
ReleaseMouseCapture
static FEventReply Widget::ReleaseMouseCapture(
FEventReply& 	Reply
	)
LockMouse
static FEventReply Widget::LockMouse(
FEventReply& 	Reply,
UWidget 	CapturingWidget
	)
CaptureMouse
static FEventReply Widget::CaptureMouse(
FEventReply& 	Reply,
UWidget 	CapturingWidget
	)
ClearUserFocus
static FEventReply Widget::ClearUserFocus(
FEventReply& 	Reply,
bool 	bInAllUsers	 = 	false
	)
Handled
static FEventReply Widget::Handled()

The event reply to use when you choose to handle an event.  This will prevent the event from continuing to bubble up / down the widget hierarchy.

SetUserFocus
static FEventReply Widget::SetUserFocus(
FEventReply& 	Reply,
UWidget 	FocusWidget,
bool 	bInAllUsers	 = 	false
	)
Unhandled
static FEventReply Widget::Unhandled()

The event reply to use when you choose not to handle an event.

UnlockMouse
static FEventReply Widget::UnlockMouse(
FEventReply& 	Reply
	)
SetMousePosition
static FEventReply Widget::SetMousePosition(
FEventReply& 	Reply,
FVector2D 	NewMousePosition
	)
WIDGET|HARDWARE CURSOR
SetHardwareCursor
static bool Widget::SetHardwareCursor(
EMouseCursor 	CursorShape,
FName 	CursorName,
FVector2D 	HotSpot
	)

Loads or sets a hardware cursor from the content directory in the game.

---

## WIDGET \| MENU

### DismissAllMenus

```
static void Widget::DismissAllMenus()
```

Closes any popup menu

### WIDGET|SAFE ZONE

```
WIDGET|SAFE ZONE GetSafeZonePadding static void Widget::GetSafeZonePadding(FVector4& SafePadding, FVector2D& SafePaddingScale, FVector4& SpillOverPadding)
```

Gets the amount of padding that needs to be added when accounting for the safe zone on TVs.

### WIDGET|WINDOW TITLE BAR

```
WIDGET|WINDOW TITLE BAR SetWindowTitleBarState static void Widget::SetWindowTitleBarState(UWidget TitleBarContent, EWindowTitleBarMode Mode, bool bTitleBarDragEnabled, bool bWindowButtonsVisible, bool bTitleBarVisible)
```

SetWindowTitleBarOnCloseClickedDelegate

### static void Widget::SetWindowTitleBarOnCloseClickedDelegate

```
static void Widget::SetWindowTitleBarOnCloseClickedDelegate(
```

FOnGameWindowCloseButtonClickedDelegate__WidgetBlueprintLibrary 	Delegate	 = 	FOnGameWindowCloseButtonClickedDelegate__WidgetBlueprintLibrary ( )

### )

```
) RestorePreviousWindowTitleBarState
```

static void Widget::RestorePreviousWindowTitleBarState()

### SetWindowTitleBarCloseButtonActive

```
static void Widget::SetWindowTitleBarCloseButtonActive(bool bActive)
```
