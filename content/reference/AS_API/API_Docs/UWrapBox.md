# UWrapBox

**Visibility:** public

## Inheritance

UPanelWidget → UWrapBox

## Description

Arranges widgets left-to-right or top-to-bottom dependently of the orientation.  When the widgets exceed the wrapSize it will place widgets on the next line.

## Members

### Children

```
Many Children
```

Flows

Wraps

### LAYOUT

```
CONTENT LAYOUT
```
### bExplicitWrapSize

```
bool bExplicitWrapSize
```

Use explicit wrap size whenever possible. It greatly simplifies layout calculations and reduces likelihood of "wiggling UI"

### Orientation

```
EOrientation Orientation
```

Determines if the Wrap Box should arranges the widgets left-to-right or top-to-bottom

### InnerSlotPadding

```
FVector2D InnerSlotPadding
```

The inner slot padding goes between slots sharing borders

### HorizontalAlignment

```
EHorizontalAlignment HorizontalAlignment
```

The alignment of each line of wrapped content.

### WrapSize

```
float32 WrapSize
```

When this size is exceeded, elements will start appearing on the next line.

### CONTENT LAYOUT

```
CONTENT LAYOUT SetHorizontalAlignment void SetHorizontalAlignment(EHorizontalAlignment InHorizontalAlignment)
```

SetInnerSlotPadding

### void SetInnerSlotPadding

```
void SetInnerSlotPadding(FVector2D InPadding)
```

Sets the inner slot padding goes between slots sharing borders

---

## PANEL

### AddChildToWrapBox

```
UWrapBoxSlot AddChildToWrapBox(UWidget Content)
```

---

## FUNCTIONS

### GetHorizontalAlignment

```
const EHorizontalAlignment& GetHorizontalAlignment()const
```

GetInnerSlotPadding

### const FVector2D& GetInnerSlotPadding

```
const FVector2D& GetInnerSlotPadding()const STATIC FUNCTIONS
```

StaticClass

### static UClass UWrapBox::StaticClass

```
static UClass UWrapBox::StaticClass()
```
