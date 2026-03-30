# UWrapBoxSlot

**Visibility:** public

## Inheritance

UPanelSlot → UWrapBoxSlot

## Description

The Slot for the UWrapBox, contains the widget that is flowed vertically

LAYOUT|WRAP BOX SLOT bForceNewLine bool bForceNewLine

Should this slot start on a new line?

Padding FMargin Padding

The padding area between the slot and the content it contains.

FillSpanWhenLessThan float32 FillSpanWhenLessThan

If the total available space in the wrap panel drops below this threshold, this slot will attempt to fill an entire line.  NOTE: A value of 0, denotes no filling will occur.

HorizontalAlignment EHorizontalAlignment HorizontalAlignment

The alignment of the object horizontally.

VerticalAlignment EVerticalAlignment VerticalAlignment

The alignment of the object vertically.

bFillEmptySpace bool bFillEmptySpace

Should this slot fill the remaining space on the line?

LAYOUT|WRAP BOX SLOT SetVerticalAlignment void SetVerticalAlignment( EVerticalAlignment 	InVerticalAlignment 	) SetFillSpanWhenLessThan void SetFillSpanWhenLessThan( float32 	InFillSpanWhenLessThan 	) SetHorizontalAlignment void SetHorizontalAlignment( EHorizontalAlignment 	InHorizontalAlignment 	) SetNewLine void SetNewLine( bool 	InForceNewLine 	) SetPadding void SetPadding( FMargin 	InPadding 	) SetFillEmptySpace void SetFillEmptySpace( bool 	InbFillEmptySpace 	)

## FUNCTIONS

### GetFillSpanWhenLessThan

```
const float32& GetFillSpanWhenLessThan()const
```

GetHorizontalAlignment

### const EHorizontalAlignment& GetHorizontalAlignment

```
const EHorizontalAlignment& GetHorizontalAlignment()const GetVerticalAlignment
```

const EVerticalAlignment& GetVerticalAlignment() const

### GetPadding

```
const FMargin& GetPadding()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UWrapBoxSlot::StaticClass()
```
