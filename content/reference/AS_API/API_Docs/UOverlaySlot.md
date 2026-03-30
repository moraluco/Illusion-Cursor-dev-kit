# UOverlaySlot

**Visibility:** public

## Inheritance

UPanelSlot → UOverlaySlot

## Description

Slot for the UOverlay panel.  Allows content to be hover above other content.

LAYOUT|OVERLAY SLOT HorizontalAlignment EHorizontalAlignment HorizontalAlignment

The alignment of the object horizontally.

VerticalAlignment EVerticalAlignment VerticalAlignment

The alignment of the object vertically.

Padding FMargin Padding

The padding area between the slot and the content it contains.

LAYOUT|OVERLAY SLOT SetPadding void SetPadding( FMargin 	InPadding 	) SetVerticalAlignment void SetVerticalAlignment( EVerticalAlignment 	InVerticalAlignment 	) SetHorizontalAlignment void SetHorizontalAlignment( EHorizontalAlignment 	InHorizontalAlignment 	)

## FUNCTIONS

### GetHorizontalAlignment

```
const EHorizontalAlignment& GetHorizontalAlignment()const
```

GetVerticalAlignment

### const EVerticalAlignment& GetVerticalAlignment

```
const EVerticalAlignment& GetVerticalAlignment()const GetPadding
```

const FMargin& GetPadding() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UOverlaySlot::StaticClass()
```
