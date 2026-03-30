# UCanvasPanelSlot

**Visibility:** public

## Inheritance

UPanelSlot → UCanvasPanelSlot

## Description

LAYOUT|CANVAS SLOT Layout FAnchorData Layout

Gets the layout data of the slot

bAutoSize bool bAutoSize

When AutoSize is true we use the widget's desired size

Alignment FVector2D Alignment

Gets the alignment on the slot

Anchors FAnchors Anchors

Gets the anchors on the slot

AutoSize bool AutoSize

Gets if the slot to be auto-sized

LayoutData FAnchorData LayoutData

The anchoring information for the slot

Offsets FMargin Offsets

Gets the offset data of the slot, which could be position and size, or margins depending on the anchor points

Position FVector2D Position

Gets the position of the slot

Size FVector2D Size

Gets the size of the slot

ZOrder int ZOrder

The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).

LAYOUT|CANVAS SLOT SetAlignment void SetAlignment( FVector2D 	InAlignment 	)

Sets the alignment on the slot

GetAnchors FAnchors GetAnchors() const

Gets the anchors on the slot

GetAutoSize bool GetAutoSize() const

Gets if the slot to be auto-sized

GetLayout FAnchorData GetLayout() const

Gets the layout data of the slot

GetOffsets FMargin GetOffsets() const

Gets the offset data of the slot, which could be position and size, or margins depending on the anchor points

GetPosition FVector2D GetPosition() const

Gets the position of the slot

GetSize FVector2D GetSize() const

Gets the size of the slot

GetZOrder int GetZOrder() const

Gets the z-order on the slot

GetAlignment FVector2D GetAlignment() const

Gets the alignment on the slot

SetAnchors void SetAnchors( FAnchors 	InAnchors 	)

Sets the anchors on the slot

SetAutoSize void SetAutoSize( bool 	InbAutoSize 	)

Sets if the slot to be auto-sized

SetLayout void SetLayout( FAnchorData 	InLayoutData 	)

Sets the layout data of the slot

SetOffsets void SetOffsets( FMargin 	InOffset 	)

Sets the offset data of the slot, which could be position and size, or margins depending on the anchor points

SetPosition void SetPosition( FVector2D 	InPosition 	)

Sets the position of the slot

SetSize void SetSize( FVector2D 	InSize 	)

Sets the size of the slot

SetZOrder void SetZOrder( int 	InZOrder 	)

Sets the z-order on the slot

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCanvasPanelSlot::StaticClass()
```
