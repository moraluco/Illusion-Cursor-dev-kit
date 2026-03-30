# UScaleBox

**Visibility:** public

## Inheritance

UContentWidget → UScaleBox

## Description

Allows you to place content with a desired size and have it scale to meet the constraints placed on this box's alloted area.  If you needed to have a background image scale to fill an area but not become distorted with different aspect ratios, or if you need to auto fit some text to an area, this is the control for you.

## Members

### Child

```
Single Child
```
### Ratio

```
Aspect Ratio
```

---

## STRETCHING

### StretchDirection

```
EStretchDirection StretchDirection
```

Controls in what direction content can be scaled

### UserSpecifiedScale

```
float32 UserSpecifiedScale
```

Optional scale that can be specified by the User. Used only for UserSpecified stretching.

### IgnoreInheritedScale

```
bool IgnoreInheritedScale
```

Optional bool to ignore the inherited scale. Applies inverse scaling to counteract parents before applying the local scale operation.

### Stretch

```
EStretch Stretch
```

The stretching rule to apply when content is stretched

---

## APPEARANCE

### SetStretch

```
void SetStretch(EStretch InStretch)
```

SetStretchDirection

### void SetStretchDirection

```
void SetStretchDirection(EStretchDirection InStretchDirection)
```

SetUserSpecifiedScale

### void SetUserSpecifiedScale

```
void SetUserSpecifiedScale(float32 InUserSpecifiedScale)
```

SetIgnoreInheritedScale

### void SetIgnoreInheritedScale

```
void SetIgnoreInheritedScale(bool bInIgnoreInheritedScale)
```

---

## FUNCTIONS

### GetStretch

```
const EStretch& GetStretch()const
```

GetStretchDirection

### const EStretchDirection& GetStretchDirection

```
const EStretchDirection& GetStretchDirection()const GetUserSpecifiedScale
```

const float32& GetUserSpecifiedScale() const

### GetIgnoreInheritedScale

```
const bool& GetIgnoreInheritedScale()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UScaleBox::StaticClass()
```
