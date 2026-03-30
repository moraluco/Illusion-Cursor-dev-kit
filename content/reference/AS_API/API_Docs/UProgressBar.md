# UProgressBar

**Visibility:** public

## Inheritance

UWidget → UProgressBar

## Description

The progress bar widget is a simple bar that fills up that can be restyled to fit any number of uses.

## Members

### Children

```
No Children
```

---

## APPEARANCE

### FillColorAndOpacity

```
FLinearColor FillColorAndOpacity
```

Fill Color and Opacity

---

## PROGRESS

### BarFillStyle

```
EProgressBarFillStyle BarFillStyle
```

Defines the visual style of the progress bar fill

### mask

```
scale or mask
```
### bIsMarquee

```
bool bIsMarquee
```
### BorderPadding

```
FVector2D BorderPadding
```
### Percent

```
float32 Percent
```

Used to determine the fill position of the progress bar ranging 0..1

### BarFillType

```
EProgressBarFillType BarFillType
```

Defines the direction in which the progress bar fills

---

## STYLE

### WidgetStyle

```
FProgressBarStyle WidgetStyle
```

The progress bar style

---

## PROGRESS

### SetIsMarquee

```
void SetIsMarquee(bool InbIsMarquee)
```

Sets the progress bar to show as a marquee.

### SetPercent

```
void SetPercent(float32 InPercent)
```

Sets the current value of the ProgressBar.

### SetFillColorAndOpacity

```
void SetFillColorAndOpacity(FLinearColor InColor)
```

Sets the fill color of the progress bar.

---

## FUNCTIONS

### GetFillColorAndOpacity

```
const FLinearColor& GetFillColorAndOpacity()const
```

GetPercent

### const float32& GetPercent

```
const float32& GetPercent()const STATIC FUNCTIONS
```

StaticClass

### static UClass UProgressBar::StaticClass

```
static UClass UProgressBar::StaticClass()
```
