# UGridPanel

**Visibility:** public

## Inheritance

UPanelWidget → UGridPanel

## Description

A table-like panel that retains the width of every column throughout the table.

## Members

### Children

```
Many Children
```
### RULES

```
FILL RULES
```
### RowFill

```
const TArray<float32> RowFill
```

The row fill rules

### ColumnFill

```
const TArray<float32> ColumnFill
```

The column fill rules

---

## WIDGET

### SetColumnFill

```
void SetColumnFill(int ColumnIndex, float32 Coefficient)
```

SetRowFill

### void SetRowFill

```
void SetRowFill(int ColumnIndex, float32 Coefficient)
```

AddChildToGrid

### UGridSlot AddChildToGrid

```
UGridSlot AddChildToGrid(UWidget Content, int InRow = 0, int InColumn = 0)
```

---

## FUNCTIONS

### GetRowFill

```
const TArray<float32>& GetRowFill()const
```

GetColumnFill

### const TArray<float32>& GetColumnFill

```
const TArray<float32>& GetColumnFill()const STATIC FUNCTIONS
```

StaticClass

### static UClass UGridPanel::StaticClass

```
static UClass UGridPanel::StaticClass()
```
