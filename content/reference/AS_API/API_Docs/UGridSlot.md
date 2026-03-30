# UGridSlot

**Visibility:** public

## Inheritance

UPanelSlot → UGridSlot

## Description

A slot for UGridPanel, these slots all share the same size as the largest slot in the grid.

LAYOUT|GRID SLOT RowSpan int RowSpan HorizontalAlignment EHorizontalAlignment HorizontalAlignment

The alignment of the object horizontally.

VerticalAlignment EVerticalAlignment VerticalAlignment

The alignment of the object vertically.

Row int Row

The row index of the cell this slot is in

Padding FMargin Padding

The padding area between the slot and the content it contains.

Column int Column

The column index of the cell this slot is in

ColumnSpan int ColumnSpan Layer int Layer

Positive values offset this cell to be hit-tested and drawn on top of others. Default is 0; i.e. no offset.

Nudge FVector2D Nudge

Offset this slot's content by some amount; positive values offset to lower right

LAYOUT|BORDER SLOT SetPadding void SetPadding( FMargin 	InPadding 	) LAYOUT|GRID SLOT SetHorizontalAlignment void SetHorizontalAlignment( EHorizontalAlignment 	InHorizontalAlignment 	) SetLayer void SetLayer( int 	InLayer 	)

Sets positive values offset this cell to be hit-tested and drawn on top of others.

SetColumn void SetColumn( int 	InColumn 	)

Sets the column index of the slot, this determines what cell the slot is in the panel

SetColumnSpan void SetColumnSpan( int 	InColumnSpan 	)

How many columns this slot spans over

SetNudge void SetNudge( FVector2D 	InNudge 	)

Sets the offset for this slot's content by some amount; positive values offset to lower right

SetRow void SetRow( int 	InRow 	)

Sets the row index of the slot, this determines what cell the slot is in the panel

SetRowSpan void SetRowSpan( int 	InRowSpan 	)

How many rows this this slot spans over

SetVerticalAlignment void SetVerticalAlignment( EVerticalAlignment 	InVerticalAlignment 	)

## FUNCTIONS

### GetPadding

```
const FMargin& GetPadding()const
```

GetHorizontalAlignment

### const EHorizontalAlignment& GetHorizontalAlignment

```
const EHorizontalAlignment& GetHorizontalAlignment()const GetVerticalAlignment
```

const EVerticalAlignment& GetVerticalAlignment() const

### GetRow

```
const int& GetRow()const
```

GetRowSpan

### const int& GetRowSpan

```
const int& GetRowSpan()const GetColumn
```

const int& GetColumn() const

### GetColumnSpan

```
const int& GetColumnSpan()const
```

GetLayer

### const int& GetLayer

```
const int& GetLayer()const GetNudge
```

const FVector2D& GetNudge() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGridSlot::StaticClass()
```
