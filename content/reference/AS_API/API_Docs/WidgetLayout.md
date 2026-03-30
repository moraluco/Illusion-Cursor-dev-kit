# WidgetLayout

## Inheritance

WidgetLayout

## Description

STATIC VARIABLES MousePositionOnPlatform static const FVector2D WidgetLayout::MousePositionOnPlatform

## SLOT

### SlotAsGridSlot

```
static UGridSlot WidgetLayout::SlotAsGridSlot(UWidget Widget)
```

Gets the slot object on the child widget as a Grid Slot, allowing you to manipulate layout information.

**Parameters**

Widget
UWidget

The child widget of a grid panel.

SlotAsCanvasSlot
static UCanvasPanelSlot WidgetLayout::SlotAsCanvasSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Canvas Slot, allowing you to manipulate layout information.

**Parameters**

Widget
UWidget

The child widget of a canvas panel.

SlotAsWrapBoxSlot
static UWrapBoxSlot WidgetLayout::SlotAsWrapBoxSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Wrap Box Slot, allowing you to manipulate its information.

**Parameters**

Widget
UWidget

The child widget of a Wrap Box.

SlotAsSafeBoxSlot
static USafeZoneSlot WidgetLayout::SlotAsSafeBoxSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Safe Box Slot, allowing you to manipulate its information.

**Parameters**

Widget
UWidget

The child widget of a Safe Box.

SlotAsUniformGridSlot
static UUniformGridSlot WidgetLayout::SlotAsUniformGridSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Uniform Grid Slot, allowing you to manipulate layout information.

**Parameters**

Widget
UWidget

The child widget of a uniform grid panel.

SlotAsScaleBoxSlot
static UScaleBoxSlot WidgetLayout::SlotAsScaleBoxSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Scale Box Slot, allowing you to manipulate its information.

**Parameters**

Widget
UWidget

The child widget of a Scale Box.

SlotAsSizeBoxSlot
static USizeBoxSlot WidgetLayout::SlotAsSizeBoxSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Size Box Slot, allowing you to manipulate its information.

**Parameters**

Widget
UWidget

The child widget of a Size Box.

SlotAsVerticalBoxSlot
static UVerticalBoxSlot WidgetLayout::SlotAsVerticalBoxSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Vertical Box Slot, allowing you to manipulate its information.

**Parameters**

Widget
UWidget

The child widget of a Vertical Box.

SlotAsBorderSlot
static UBorderSlot WidgetLayout::SlotAsBorderSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Border Slot, allowing you to manipulate layout information.

**Parameters**

Widget
UWidget

The child widget of a border panel.

SlotAsWidgetSwitcherSlot
static UWidgetSwitcherSlot WidgetLayout::SlotAsWidgetSwitcherSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Widget Switcher Slot, allowing you to manipulate its information.

**Parameters**

Widget
UWidget

The child widget of a Widget Switcher Slot.

SlotAsScrollBoxSlot
static UScrollBoxSlot WidgetLayout::SlotAsScrollBoxSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Scroll Box Slot, allowing you to manipulate its information.

**Parameters**

Widget
UWidget

The child widget of a Scroll Box.

SlotAsHorizontalBoxSlot
static UHorizontalBoxSlot WidgetLayout::SlotAsHorizontalBoxSlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Horizontal Box Slot, allowing you to manipulate its information.

**Parameters**

Widget
UWidget

The child widget of a Horizontal Box.

SlotAsOverlaySlot
static UOverlaySlot WidgetLayout::SlotAsOverlaySlot(
UWidget 	Widget
	)

Gets the slot object on the child widget as a Overlay Slot, allowing you to manipulate layout information.

**Parameters**

Widget
UWidget

The child widget of a overlay panel.

---

## VIEWPORT

### GetPlayerScreenWidgetGeometry

```
static FGeometry WidgetLayout::GetPlayerScreenWidgetGeometry(
```

### APlayerController 	PlayerController

```
APlayerController 	PlayerController
```

)

### Gets the geometry of the widget holding all widgets added to the "Player Screen". You can use this geometry to convert between absolute and local space of widgets held on this widget.

```
Gets the geometry of the widget holding all widgets added to the "Player Screen". You can use this geometry to convert between absolute and local space of widgets held on this widget.
```

GetViewportWidgetGeometry

### static FGeometry WidgetLayout::GetViewportWidgetGeometry

```
static FGeometry WidgetLayout::GetViewportWidgetGeometry()
```

Gets the geometry of the widget holding all widgets added to the "Viewport".  You can use this geometry to convert between absolute and local space of widgets held on this widget.

### ProjectWorldLocationToWidgetPosition

```
static bool WidgetLayout::ProjectWorldLocationToWidgetPosition(
```

APlayerController 	PlayerController,

FVector 	WorldLocation,

### FVector2D& 	ScreenPosition,

```
bool 	bPlayerViewportRelative
```

)

Gets the projected world to screen position for a player, then converts it into a widget position, which takes into account any quality scaling.

**Parameters**

PlayerController
APlayerController

The player controller to project the position in the world to their screen.

WorldLocation
FVector

The world location to project from.

ScreenPosition
FVector2D&

The position in the viewport with quality scale removed and DPI scale remove.

bPlayerViewportRelative
bool

Should this be relative to the player viewport subregion (useful when using player attached widgets in split screen or when aspect-ratio constrained)

**Returns**

true if the position projects onto the screen.

GetViewportScale
static float32 WidgetLayout::GetViewportScale()

Gets the current DPI Scale being applied to the viewport and all the Widgets.

RemoveAllWidgets
static void WidgetLayout::RemoveAllWidgets()

Removes all widgets from the viewport.

GetViewportSize
static FVector2D WidgetLayout::GetViewportSize()

Gets the size of the game viewport.

GetMousePositionScaledByDPI
static bool WidgetLayout::GetMousePositionScaledByDPI(
APlayerController 	Player,
float32& 	LocationX,
float32& 	LocationY
	)

Gets the mouse position of the player controller, scaled by the DPI.  If you're trying to go from raw mouse screenspace coordinates to fullscreen widget space, you'll need to transform the mouse into DPI Scaled space.  This function performs that scaling.

MousePositionScaledByDPI = MousePosition * (1 / ViewportScale).  //UE_DEPRECATED(4.17, "Use GetMousePositionOnViewport() instead.  Optionally and for more options, you can use GetViewportWidgetGeometry and GetPlayerScreenWidgetGeometry are newly introduced to give you the geometry of the viewport and the player screen for widgets to help convert between spaces.")

GetMousePositionOnViewport
static FVector2D WidgetLayout::GetMousePositionOnViewport()

Gets the platform's mouse cursor position in the local space of the viewport widget.

GetMousePositionOnPlatform
static FVector2D WidgetLayout::GetMousePositionOnPlatform()

Gets the platform's mouse cursor position.  This is the 'absolute' desktop location of the mouse.
