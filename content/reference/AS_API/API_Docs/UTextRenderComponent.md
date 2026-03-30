# UTextRenderComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UTextRenderComponent

## Description

Renders text in the world with given font. Contains usual font related attributes such as Scale, Alignment, Color etc.

## RENDERING

### bAlwaysRenderAsText

```
bool bAlwaysRenderAsText
```

Allows text to draw unmodified when using debug visualization modes.

---

## RENDERING \| COMPONENTS \| TEXTRENDER

### TextWorldSize

```
const FVector TextWorldSize
```

Get world space size of text

### TextLocalSize

```
const FVector TextLocalSize
```

Get local size of text

---

## TEXT

### Font

```
UFont Font
```
### font

```
Text font
```
### HorizontalAlignment

```
EHorizTextAligment HorizontalAlignment
```

Horizontal text alignment

### TextMaterial

```
UMaterialInterface TextMaterial
```
### material

```
Text material
```
### Text

```
FText Text
```

Text content, can be multi line using <br> as line separator

### VerticalAlignment

```
EVerticalTextAligment VerticalAlignment
```

Vertical text alignment

### XScale

```
float32 XScale
```

Horizontal scale, default is 1.0

### YScale

```
float32 YScale
```

Vertical scale, default is 1.0

### WorldSize

```
float32 WorldSize
```

Vertical size of the fonts largest character in world units. Transform, XScale and YScale will affect final size.

### HorizSpacingAdjust

```
float32 HorizSpacingAdjust
```

Horizontal adjustment per character, default is 0.0

### VertSpacingAdjust

```
float32 VertSpacingAdjust
```

Vertical adjustment per character, default is 0.0

### TextRenderColor

```
FColor TextRenderColor
```

Color of the text, can be accessed as vertex color

---

## RENDERING \| COMPONENTS \| TEXTRENDER

### SetTextRenderColor

```
void SetTextRenderColor(FColor Value)
```

Change the text render color and signal the primitives to be rebuilt

### GetTextWorldSize

```
FVector GetTextWorldSize()const
```

Get world space size of text

### SetText

```
void SetText(FText Value)
```

Change the text value and signal the primitives to be rebuilt

### SetFont

```
void SetFont(UFont Value)
```

Change the font and signal the primitives to be rebuilt

### SetHorizontalAlignment

```
void SetHorizontalAlignment(EHorizTextAligment Value)
```

Change the horizontal alignment and signal the primitives to be rebuilt

### SetHorizSpacingAdjust

```
void SetHorizSpacingAdjust(float32 Value)
```

Change the text horizontal spacing adjustment and signal the primitives to be rebuilt

### SetTextMaterial

```
void SetTextMaterial(UMaterialInterface Material)
```

Change the text material and signal the primitives to be rebuilt

### GetTextLocalSize

```
FVector GetTextLocalSize()const
```

Get local size of text

### SetVerticalAlignment

```
void SetVerticalAlignment(EVerticalTextAligment Value)
```

Change the vertical alignment and signal the primitives to be rebuilt

### SetVertSpacingAdjust

```
void SetVertSpacingAdjust(float32 Value)
```

Change the text vertical spacing adjustment and signal the primitives to be rebuilt

### SetWorldSize

```
void SetWorldSize(float32 Value)
```

Change the world size of the text and signal the primitives to be rebuilt

### SetXScale

```
void SetXScale(float32 Value)
```

Change the text X scale and signal the primitives to be rebuilt

### SetYScale

```
void SetYScale(float32 Value)
```

Change the text Y scale and signal the primitives to be rebuilt

---

## FUNCTIONS

### GetTextMaterial

```
UMaterialInterface GetTextMaterial()const
```

GetText

### const FText& GetText

```
const FText& GetText()const GetFont
```

UFont GetFont() const

### GetHorizontalAlignment

```
const EHorizTextAligment& GetHorizontalAlignment()const
```

GetVerticalAlignment

### const EVerticalTextAligment& GetVerticalAlignment

```
const EVerticalTextAligment& GetVerticalAlignment()const GetTextRenderColor
```

const FColor& GetTextRenderColor() const

### GetXScale

```
const float32& GetXScale()const
```

GetYScale

### const float32& GetYScale

```
const float32& GetYScale()const GetWorldSize
```

const float32& GetWorldSize() const

### GetHorizSpacingAdjust

```
const float32& GetHorizSpacingAdjust()const
```

GetVertSpacingAdjust

### const float32& GetVertSpacingAdjust

```
const float32& GetVertSpacingAdjust()const GetbAlwaysRenderAsText
```

bool GetbAlwaysRenderAsText() const

### SetbAlwaysRenderAsText

```
void SetbAlwaysRenderAsText(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UTextRenderComponent UTextRenderComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UTextRenderComponent UTextRenderComponent::GetOrCreate

```
static UTextRenderComponent UTextRenderComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UTextRenderComponent UTextRenderComponent::Create

```
static UTextRenderComponent UTextRenderComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UTextRenderComponent::StaticClass

```
static UClass UTextRenderComponent::StaticClass()
```
