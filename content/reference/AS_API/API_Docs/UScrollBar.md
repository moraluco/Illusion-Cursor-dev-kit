# UScrollBar

**Visibility:** public

## Inheritance

UWidget → UScrollBar → BEHAVIOR

## Description

bAlwaysShowScrollbar bool bAlwaysShowScrollbar bAlwaysShowScrollbarTrack bool bAlwaysShowScrollbarTrack Orientation EOrientation Orientation Thickness FVector2D Thickness

The thickness of the scrollbar thumb

Padding FMargin Padding

The margin around the scrollbar

## STYLE

### WidgetStyle

```
FScrollBarStyle WidgetStyle
```

Style of the scrollbar

---

## SCROLLING

### SetState

```
void SetState(float32 InOffsetFraction, float32 InThumbSizeFraction)
```

Set the offset and size of the track's thumb.  Note that the maximum offset is 1.0-ThumbSizeFraction.  If the user can view 1/3 of the items in a single page, the maximum offset will be ~0.667f

**Parameters**

InOffsetFraction
float32

Offset of the thumbnail from the top as a fraction of the total available scroll space.

InThumbSizeFraction
float32

Size of thumbnail as a fraction of the total available scroll space.

STATIC FUNCTIONS
StaticClass
static UClass UScrollBar::StaticClass()
