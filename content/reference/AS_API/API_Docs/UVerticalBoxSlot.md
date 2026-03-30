# UVerticalBoxSlot

**Visibility:** public

## Inheritance

UPanelSlot → UVerticalBoxSlot

## Description

The Slot for the UVerticalBox, contains the widget that is flowed vertically

LAYOUT|VERTICAL BOX SLOT Padding FMargin Padding

The padding area between the slot and the content it contains.

HorizontalAlignment EHorizontalAlignment HorizontalAlignment

The alignment of the object horizontally.

VerticalAlignment EVerticalAlignment VerticalAlignment

The alignment of the object vertically.

Size FSlateChildSize Size

How much space this slot should occupy in the direction of the panel.

LAYOUT|VERTICAL BOX SLOT SetPadding void SetPadding( FMargin 	InPadding 	) SetSize void SetSize( FSlateChildSize 	InSize 	) SetVerticalAlignment void SetVerticalAlignment( EVerticalAlignment 	InVerticalAlignment 	) SetHorizontalAlignment void SetHorizontalAlignment( EHorizontalAlignment 	InHorizontalAlignment 	)

## FUNCTIONS

### GetSize

```
const FSlateChildSize& GetSize()const
```

GetPadding

### const FMargin& GetPadding

```
const FMargin& GetPadding()const GetHorizontalAlignment
```

const EHorizontalAlignment& GetHorizontalAlignment() const

### GetVerticalAlignment

```
const EVerticalAlignment& GetVerticalAlignment()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVerticalBoxSlot::StaticClass()
```
