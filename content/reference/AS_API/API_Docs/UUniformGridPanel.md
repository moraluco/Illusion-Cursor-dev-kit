# UUniformGridPanel

**Visibility:** public

## Inheritance

UPanelWidget → UUniformGridPanel

## Description

A panel that evenly divides up available space between all of its children.

## Members

### LAYOUT

```
CHILD LAYOUT
```
### MinDesiredSlotWidth

```
float32 MinDesiredSlotWidth
```

The minimum desired width of the slots

### MinDesiredSlotHeight

```
float32 MinDesiredSlotHeight
```

The minimum desired height of the slots

### SlotPadding

```
FMargin SlotPadding
```

Padding given to each slot

### CHILD LAYOUT

```
CHILD LAYOUT SetMinDesiredSlotHeight void SetMinDesiredSlotHeight(float32 InMinDesiredSlotHeight)
```

SetMinDesiredSlotWidth

### void SetMinDesiredSlotWidth

```
void SetMinDesiredSlotWidth(float32 InMinDesiredSlotWidth)
```

SetSlotPadding

### void SetSlotPadding

```
void SetSlotPadding(FMargin InSlotPadding)
```

---

## WIDGET

### AddChildToUniformGrid

```
UUniformGridSlot AddChildToUniformGrid(UWidget Content, int InRow = 0, int InColumn = 0)
```

---

## FUNCTIONS

### GetMinDesiredSlotWidth

```
const float32& GetMinDesiredSlotWidth()const
```

GetMinDesiredSlotHeight

### const float32& GetMinDesiredSlotHeight

```
const float32& GetMinDesiredSlotHeight()const GetSlotPadding
```

const FMargin& GetSlotPadding() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UUniformGridPanel::StaticClass()
```
