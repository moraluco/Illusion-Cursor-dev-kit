# UUniformGridSlot

**Visibility:** public

## Inheritance

UPanelSlot → UUniformGridSlot

## Description

A slot for UUniformGridPanel, these slots all share the same size as the largest slot in the grid.

LAYOUT|UNIFORM GRID SLOT VerticalAlignment EVerticalAlignment VerticalAlignment

The alignment of the object vertically.

Row int Row

The row index of the cell this slot is in

Column int Column

The column index of the cell this slot is in

HorizontalAlignment EHorizontalAlignment HorizontalAlignment

The alignment of the object horizontally.

LAYOUT|UNIFORM GRID SLOT SetHorizontalAlignment void SetHorizontalAlignment( EHorizontalAlignment 	InHorizontalAlignment 	) SetRow void SetRow( int 	InRow 	)

Sets the row index of the slot, this determines what cell the slot is in the panel

SetVerticalAlignment void SetVerticalAlignment( EVerticalAlignment 	InVerticalAlignment 	) SetColumn void SetColumn( int 	InColumn 	)

Sets the column index of the slot, this determines what cell the slot is in the panel

## FUNCTIONS

### GetHorizontalAlignment

```
const EHorizontalAlignment& GetHorizontalAlignment()const
```

GetVerticalAlignment

### const EVerticalAlignment& GetVerticalAlignment

```
const EVerticalAlignment& GetVerticalAlignment()const GetRow
```

const int& GetRow() const

### GetColumn

```
const int& GetColumn()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UUniformGridSlot::StaticClass()
```
