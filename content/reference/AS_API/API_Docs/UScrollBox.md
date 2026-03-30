# UScrollBox

**Visibility:** public

## Inheritance

UPanelWidget → UScrollBox

## Description

An arbitrary scrollable collection of widgets.  Great for presenting 10-100 widgets in a list.  Doesn't support virtualization.

## BUTTON \| EVENT

### OnUserScrolled

```
FOnUserScrolledEvent OnUserScrolled
```

Called when the scroll has changed

---

## SCROLL

### WheelScrollMultiplier

```
float32 WheelScrollMultiplier
```

The multiplier to apply when wheel scrolling

### AlwaysShowScrollbarTrack

```
bool AlwaysShowScrollbarTrack
```
### BackPadScrolling

```
bool BackPadScrolling
```

Whether to back pad this scroll box, allowing user to scroll backward until child contents are no longer visible

### FrontPadScrolling

```
bool FrontPadScrolling
```

Whether to front pad this scroll box, allowing user to scroll forward until child contents are no longer visible

### bAnimateWheelScrolling

```
bool bAnimateWheelScrolling
```

True to lerp smoothly when wheel scrolling along the scroll box

### NavigationScrollPadding

```
float32 NavigationScrollPadding
```

The amount of padding to ensure exists between the item being navigated to, at the edge of the scrollbox.  Use this if you want to ensure there's a preview of the next item the user could scroll to.

### bAllowRightClickDragScrolling

```
bool bAllowRightClickDragScrolling
```

Option to disable right-click-drag scrolling

### ConsumeMouseWheel

```
EConsumeMouseWheel ConsumeMouseWheel
```

When mouse wheel events should be consumed.

### ScrollBarVisibility

```
ESlateVisibility ScrollBarVisibility
```

Visibility

### ScrollWhenFocusChanges

```
EScrollWhenFocusChanges ScrollWhenFocusChanges
```

Scroll behavior when user focus is given to a child widget

### Orientation

```
EOrientation Orientation
```

The orientation of the scrolling and stacking in the box.

### AllowOverscroll

```
bool AllowOverscroll
```

Disable to stop scrollbars from activating inertial overscrolling

### NavigationDestination

```
EDescendantScrollDestination NavigationDestination
```

Sets where to scroll a widget to when using explicit navigation or if ScrollWhenFocusChanges is enabled

### ScrollbarThickness

```
FVector2D ScrollbarThickness
```

The thickness of the scrollbar thumb

### ScrollbarPadding

```
FMargin ScrollbarPadding
```

The margin around the scrollbar

### AlwaysShowScrollbar

```
bool AlwaysShowScrollbar
```

---

## STYLE

### WidgetStyle

```
FScrollBoxStyle WidgetStyle
```
### style

```
The style
```
### WidgetBarStyle

```
FScrollBarStyle WidgetBarStyle
```

The bar style

---

## WIDGET

### ScrollOffset

```
float32 ScrollOffset
```

Gets the scroll offset of the scrollbox in Slate Units.

ScrollOffsetOfEnd

### ScrollOffsetOfEnd

```
const float32 ScrollOffsetOfEnd
```

Gets the scroll offset of the bottom of the ScrollBox in Slate Units.

### ViewOffsetFraction

```
const float32 ViewOffsetFraction SCROLL SetScrollBarVisibility void SetScrollBarVisibility(ESlateVisibility NewScrollBarVisibility)
```

EndInertialScrolling

### void EndInertialScrolling

```
void EndInertialScrolling()
```

Instantly stops any inertial scrolling that is currently in progress

### SetConsumeMouseWheel

```
void SetConsumeMouseWheel(EConsumeMouseWheel NewConsumeMouseWheel)
```

SetWheelScrollMultiplier

### void SetWheelScrollMultiplier

```
void SetWheelScrollMultiplier(float32 NewWheelScrollMultiplier)
```

SetNavigationDestination

### void SetNavigationDestination

```
void SetNavigationDestination(EDescendantScrollDestination NewNavigationDestination)
```

SetScrollbarPadding

### void SetScrollbarPadding

```
void SetScrollbarPadding(FMargin NewScrollbarPadding)
```

SetAnimateWheelScrolling

### void SetAnimateWheelScrolling

```
void SetAnimateWheelScrolling(bool bShouldAnimateWheelScrolling)
```

SetAlwaysShowScrollbar

### void SetAlwaysShowScrollbar

```
void SetAlwaysShowScrollbar(bool NewAlwaysShowScrollbar)
```

SetScrollbarThickness

### void SetScrollbarThickness

```
void SetScrollbarThickness(FVector2D NewScrollbarThickness)
```

SetScrollWhenFocusChanges

### void SetScrollWhenFocusChanges

```
void SetScrollWhenFocusChanges(EScrollWhenFocusChanges NewScrollWhenFocusChanges)
```

SetAllowOverscroll

### void SetAllowOverscroll

```
void SetAllowOverscroll(bool NewAllowOverscroll)
```

SetOrientation

### void SetOrientation

```
void SetOrientation(EOrientation NewOrientation)
```

---

## WIDGET

### GetScrollOffset

```
float32 GetScrollOffset()const
```

Gets the scroll offset of the scrollbox in Slate Units.

### ScrollWidgetIntoView

```
void ScrollWidgetIntoView(
```

UWidget 	WidgetToFind,

bool 	AnimateScroll	 = 	true,

### EDescendantScrollDestination 	ScrollDestination	 = 	EDescendantScrollDestination :: IntoView,

```
EDescendantScrollDestination 	ScrollDestination	 = 	EDescendantScrollDestination :: IntoView, float32 	Padding	 = 	0.000000
```

)

### Scrolls the ScrollBox to the widget during the next layout pass.

```
Scrolls the ScrollBox to the widget during the next layout pass.
```

GetScrollOffsetOfEnd

### float32 GetScrollOffsetOfEnd

```
float32 GetScrollOffsetOfEnd()const
```

Gets the scroll offset of the bottom of the ScrollBox in Slate Units.

### GetViewOffsetFraction

```
float32 GetViewOffsetFraction()const
```

ScrollToEnd

### void ScrollToEnd

```
void ScrollToEnd()
```

Scrolls the ScrollBox to the bottom instantly during the next layout pass.

### ScrollToStart

```
void ScrollToStart()
```

Scrolls the ScrollBox to the top instantly

### SetScrollOffset

```
void SetScrollOffset(float32 NewScrollOffset)
```

Updates the scroll offset of the scrollbox.

**Parameters**

NewScrollOffset
float32

is in Slate Units.

---

## FUNCTIONS

### GetAlwaysShowScrollbar

```
const bool& GetAlwaysShowScrollbar()const
```

GetScrollBarVisibility

### const ESlateVisibility& GetScrollBarVisibility

```
const ESlateVisibility& GetScrollBarVisibility()const GetConsumeMouseWheel
```

const EConsumeMouseWheel& GetConsumeMouseWheel() const

### GetScrollbarThickness

```
const FVector2D& GetScrollbarThickness()const
```

GetScrollbarPadding

### const FMargin& GetScrollbarPadding

```
const FMargin& GetScrollbarPadding()const GetOrientation
```

const EOrientation& GetOrientation() const

### GetAllowOverscroll

```
const bool& GetAllowOverscroll()const
```

GetNavigationDestination

### const EDescendantScrollDestination& GetNavigationDestination

```
const EDescendantScrollDestination& GetNavigationDestination()const GetScrollWhenFocusChanges
```

const EScrollWhenFocusChanges& GetScrollWhenFocusChanges() const

### GetWheelScrollMultiplier

```
const float32& GetWheelScrollMultiplier()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UScrollBox::StaticClass()
```
