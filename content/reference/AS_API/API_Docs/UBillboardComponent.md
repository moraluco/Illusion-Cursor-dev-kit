# UBillboardComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UBillboardComponent

## Description

A 2d texture that will be rendered always facing the camera.

## SPRITE

---

## VL

### VL

```
float32 VL
```
### U

```
float32 U
```

---

## UL

### float32 UL

```
float32 UL V float32 V ScreenSize float32 ScreenSize bUseInEditorScaling bool bUseInEditorScaling
```

Whether to use in-editor arrow scaling (i.e. to be affected by the global arrow scale)

### Sprite

```
UTexture2D Sprite
```
### bIsScreenSizeScaled

```
bool bIsScreenSizeScaled
```
### OpacityMaskRefVal

```
float32 OpacityMaskRefVal
```

The billboard is not rendered where texture opacity < OpacityMaskRefVal

---

## RENDERING \| COMPONENTS \| SPRITE

### SetSprite

```
void SetSprite(UTexture2D NewSprite)
```

Change the sprite texture used by this component

### SetSpriteAndUV

```
void SetSpriteAndUV(UTexture2D NewSprite, int NewU, int NewUL, int NewV, int NewVL)
```

Change the sprite texture and the UV's used by this component

### SetUV

```
void SetUV(int NewU, int NewUL, int NewV, int NewVL)
```

Change the sprite's UVs

### SetOpacityMaskRefVal

```
void SetOpacityMaskRefVal(float32 RefVal)
```

Changed the opacity masked used by this component

---

## FUNCTIONS

### GetbIsScreenSizeScaled

```
bool GetbIsScreenSizeScaled()const
```

GetSprite

### UTexture2D GetSprite

```
UTexture2D GetSprite()const SetbIsScreenSizeScaled
```

void SetbIsScreenSizeScaled(

### bool 	Value

```
bool 	Value 	)
```

GetOpacityMaskRefVal

### const float32& GetOpacityMaskRefVal

```
const float32& GetOpacityMaskRefVal()const STATIC FUNCTIONS
```

Get

### static UBillboardComponent UBillboardComponent::Get

```
static UBillboardComponent UBillboardComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UBillboardComponent UBillboardComponent::GetOrCreate

```
static UBillboardComponent UBillboardComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UBillboardComponent UBillboardComponent::Create

```
static UBillboardComponent UBillboardComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UBillboardComponent::StaticClass

```
static UClass UBillboardComponent::StaticClass()
```
