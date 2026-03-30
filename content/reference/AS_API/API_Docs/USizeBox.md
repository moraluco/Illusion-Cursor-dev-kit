# USizeBox

**Visibility:** public

## Inheritance

UContentWidget → USizeBox

## Description

A widget that allows you to specify the size it reports to have and desire.  Not all widgets report a desired size that you actually desire.  Wrapping them in a SizeBox lets you have the Size Box force them to be a particular size.

## Members

### Child

```
Single Child
```
### Size

```
Fixed Size
```
### LAYOUT

```
CHILD LAYOUT
```
### HeightOverride

```
float32 HeightOverride
```

When specified, ignore the content's desired size and report the HeightOverride as the Box's desired height.

### MinDesiredWidth

```
float32 MinDesiredWidth
```

When specified, will report the MinDesiredWidth if larger than the content's desired width.

### MinDesiredHeight

```
float32 MinDesiredHeight
```

When specified, will report the MinDesiredHeight if larger than the content's desired height.

### MaxDesiredWidth

```
float32 MaxDesiredWidth
```

When specified, will report the MaxDesiredWidth if smaller than the content's desired width.

### MaxDesiredHeight

```
float32 MaxDesiredHeight
```

When specified, will report the MaxDesiredHeight if smaller than the content's desired height.

### MinAspectRatio

```
float32 MinAspectRatio
```
### MaxAspectRatio

```
float32 MaxAspectRatio
```
### WidthOverride

```
float32 WidthOverride
```

When specified, ignore the content's desired size and report the WidthOverride as the Box's desired width.

### LAYOUT|SIZE BOX

```
LAYOUT|SIZE BOX SetHeightOverride void SetHeightOverride(float32 InHeightOverride)
```

When specified, ignore the content's desired size and report the HeightOverride as the Box's desired height.

### ClearMaxAspectRatio

```
void ClearMaxAspectRatio()
```

ClearMaxDesiredHeight

### void ClearMaxDesiredHeight

```
void ClearMaxDesiredHeight()
```

ClearMaxDesiredWidth

### void ClearMaxDesiredWidth

```
void ClearMaxDesiredWidth()
```

ClearMinAspectRatio

### void ClearMinAspectRatio

```
void ClearMinAspectRatio()
```

ClearMinDesiredHeight

### void ClearMinDesiredHeight

```
void ClearMinDesiredHeight()
```

ClearMinDesiredWidth

### void ClearMinDesiredWidth

```
void ClearMinDesiredWidth()
```

ClearWidthOverride

### void ClearWidthOverride

```
void ClearWidthOverride()
```

ClearHeightOverride

### void ClearHeightOverride

```
void ClearHeightOverride()
```

SetMaxAspectRatio

### void SetMaxAspectRatio

```
void SetMaxAspectRatio(float32 InMaxAspectRatio)
```

SetMaxDesiredHeight

### void SetMaxDesiredHeight

```
void SetMaxDesiredHeight(float32 InMaxDesiredHeight)
```

When specified, will report the MaxDesiredHeight if smaller than the content's desired height.

### SetMaxDesiredWidth

```
void SetMaxDesiredWidth(float32 InMaxDesiredWidth)
```

When specified, will report the MaxDesiredWidth if smaller than the content's desired width.

### SetMinAspectRatio

```
void SetMinAspectRatio(float32 InMinAspectRatio)
```

SetMinDesiredHeight

### void SetMinDesiredHeight

```
void SetMinDesiredHeight(float32 InMinDesiredHeight)
```

When specified, will report the MinDesiredHeight if larger than the content's desired height.

### SetMinDesiredWidth

```
void SetMinDesiredWidth(float32 InMinDesiredWidth)
```

When specified, will report the MinDesiredWidth if larger than the content's desired width.

### SetWidthOverride

```
void SetWidthOverride(float32 InWidthOverride)
```

When specified, ignore the content's desired size and report the WidthOverride as the Box's desired width.

---

## FUNCTIONS

### GetWidthOverride

```
const float32& GetWidthOverride()const
```

GetHeightOverride

### const float32& GetHeightOverride

```
const float32& GetHeightOverride()const GetMinDesiredWidth
```

const float32& GetMinDesiredWidth() const

### GetMinDesiredHeight

```
const float32& GetMinDesiredHeight()const
```

GetMaxDesiredWidth

### const float32& GetMaxDesiredWidth

```
const float32& GetMaxDesiredWidth()const GetMaxDesiredHeight
```

const float32& GetMaxDesiredHeight() const

### GetMinAspectRatio

```
const float32& GetMinAspectRatio()const
```

GetMaxAspectRatio

### const float32& GetMaxAspectRatio

```
const float32& GetMaxAspectRatio()const SetbOverride_WidthOverride
```

void SetbOverride_WidthOverride(

### bool 	Value

```
bool 	Value 	)
```

SetbOverride_HeightOverride

### void SetbOverride_HeightOverride

```
void SetbOverride_HeightOverride(bool Value)
```

SetbOverride_MinDesiredWidth

### void SetbOverride_MinDesiredWidth

```
void SetbOverride_MinDesiredWidth(bool Value)
```

SetbOverride_MinDesiredHeight

### void SetbOverride_MinDesiredHeight

```
void SetbOverride_MinDesiredHeight(bool Value)
```

SetbOverride_MaxDesiredWidth

### void SetbOverride_MaxDesiredWidth

```
void SetbOverride_MaxDesiredWidth(bool Value)
```

SetbOverride_MaxDesiredHeight

### void SetbOverride_MaxDesiredHeight

```
void SetbOverride_MaxDesiredHeight(bool Value)
```

SetbOverride_MinAspectRatio

### void SetbOverride_MinAspectRatio

```
void SetbOverride_MinAspectRatio(bool Value)
```

SetbOverride_MaxAspectRatio

### void SetbOverride_MaxAspectRatio

```
void SetbOverride_MaxAspectRatio(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USizeBox::StaticClass()
```
