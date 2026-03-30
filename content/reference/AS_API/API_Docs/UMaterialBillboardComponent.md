# UMaterialBillboardComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UMaterialBillboardComponent

## Description

A 2d material that will be rendered always facing the camera.

## SPRITE

### Elements

```
TArray<FMaterialSpriteElement> Elements
```

Current array of material billboard elements

---

## RENDERING \| COMPONENTS \| MATERIALSPRITE

### SetElements

```
void SetElements(TArray<FMaterialSpriteElement> NewElements)
```

Set all elements of this material billboard component

### AddElement

```
void AddElement(UMaterialInterface Material, UCurveFloat DistanceToOpacityCurve, bool bSizeIsInScreenSpace, float32 BaseSizeX, float32 BaseSizeY, UCurveFloat DistanceToSizeCurve)
```

Adds an element to the sprite.

---

## FUNCTIONS

### GetElements

```
const TArray<FMaterialSpriteElement>& GetElements()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UMaterialBillboardComponent UMaterialBillboardComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UMaterialBillboardComponent UMaterialBillboardComponent::GetOrCreate

```
static UMaterialBillboardComponent UMaterialBillboardComponent::GetOrCreate(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UMaterialBillboardComponent UMaterialBillboardComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UMaterialBillboardComponent::StaticClass()
```
