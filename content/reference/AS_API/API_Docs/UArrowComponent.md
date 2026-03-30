# UArrowComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UArrowComponent

## Description

A simple arrow rendered using lines. Useful for indicating which way an object is facing.

## ARROWCOMPONENT

### ArrowLength

```
float32 ArrowLength
```

Total length of drawn arrow including head

### ScreenSize

```
float32 ScreenSize
```

The size on screen to limit this arrow to (in screen space)

### bUseInEditorScaling

```
bool bUseInEditorScaling
```

Whether to use in-editor arrow scaling (i.e. to be affected by the global arrow scale)

### ArrowColor

```
FColor ArrowColor
```

Color to draw arrow

### bIsScreenSizeScaled

```
bool bIsScreenSizeScaled
```

Set to limit the screen size of this arrow

### bTreatAsASprite

```
bool bTreatAsASprite
```

If true, don't show the arrow when EngineShowFlags.BillboardSprites is disabled.

### ArrowSize

```
float32 ArrowSize
```

Relative size to scale drawn arrow by

---

## COMPONENTS \| ARROW

### SetArrowColor

```
void SetArrowColor(FLinearColor NewColor)
```

Updates the arrow's colour, and tells it to refresh

---

## FUNCTIONS

### GetbIsScreenSizeScaled

```
bool GetbIsScreenSizeScaled()const
```

SetbIsScreenSizeScaled

### void SetbIsScreenSizeScaled

```
void SetbIsScreenSizeScaled(bool Value)
```

GetbTreatAsASprite

### bool GetbTreatAsASprite

```
bool GetbTreatAsASprite()const GetArrowColor
```

const FColor& GetArrowColor() const

### SetbTreatAsASprite

```
void SetbTreatAsASprite(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UArrowComponent UArrowComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UArrowComponent UArrowComponent::GetOrCreate

```
static UArrowComponent UArrowComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UArrowComponent UArrowComponent::Create

```
static UArrowComponent UArrowComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UArrowComponent::StaticClass

```
static UClass UArrowComponent::StaticClass()
```
