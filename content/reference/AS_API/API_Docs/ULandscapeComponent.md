# ULandscapeComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → ULandscapeComponent → BAKEDTEXTURES → GIBakedBaseColorTexture

## Description

UTexture2D GIBakedBaseColorTexture

Pre-baked Base Color texture for use by distance field GI

## LANDSCAPECOMPONENT

### OverrideMaterial

```
UMaterialInterface OverrideMaterial
```
### OverrideHoleMaterial

```
UMaterialInterface OverrideHoleMaterial
```
### OverrideMaterials

```
TArray<FLandscapeComponentMaterialOverride> OverrideMaterials
```
### CollisionMipLevel

```
int CollisionMipLevel
```

Heightfield mipmap used to generate collision

### SectionBaseY

```
int SectionBaseY
```

Y offset from global components grid origin (in quads)

### SimpleCollisionMipLevel

```
int SimpleCollisionMipLevel
```

Heightfield mipmap used to generate simple collision

### SectionBaseX

```
int SectionBaseX
```

X offset from global components grid origin (in quads)

### PositiveZBoundsExtension

```
float32 PositiveZBoundsExtension
```

Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the positive Z axis, positive value increases bound size

### StaticLightingResolution

```
float32 StaticLightingResolution
```

StaticLightingResolution overriding per component, default value 0 means no overriding

### ForcedLOD

```
int ForcedLOD
```

Forced LOD level to use when rendering

### LODBias

```
int LODBias
```

LOD level Bias to use when rendering

### NegativeZBoundsExtension

```
float32 NegativeZBoundsExtension
```

Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the negative Z axis, positive value increases bound size

### LightingLODBias

```
int LightingLODBias
```

LOD level Bias to use when lighting building via lightmass, -1 Means automatic LOD calculation based on ForcedLOD + LODBias

### LayerAllowList

```
TArray<TObjectPtr<ULandscapeLayerInfoObject>> LayerAllowList
```

List of layers allowed to be painted on this component

---

## LANDSCAPE \| EDITOR

### EditorGetPaintLayerWeightByNameAtLocation

```
float32 EditorGetPaintLayerWeightByNameAtLocation(FVector InLocation, const FName InPaintLayerName)
```

Gets the landscape paint layer weight value at the given position using layer name. Returns 0 in case it fails.

### EditorGetPaintLayerWeightAtLocation

```
float32 EditorGetPaintLayerWeightAtLocation(FVector InLocation, ULandscapeLayerInfoObject PaintLayer)
```

Gets the landscape paint layer weight value at the given position using LandscapeLayerInfo . Returns 0 in case it fails.

---

## LANDSCAPE \| RUNTIME \| MATERIAL

### GetMaterialInstanceDynamic

```
UMaterialInstanceDynamic GetMaterialInstanceDynamic(int InIndex)const
```

Gets the landscape material instance dynamic for this component

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static ULandscapeComponent ULandscapeComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static ULandscapeComponent ULandscapeComponent::GetOrCreate

```
static ULandscapeComponent ULandscapeComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static ULandscapeComponent ULandscapeComponent::Create

```
static ULandscapeComponent ULandscapeComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass ULandscapeComponent::StaticClass

```
static UClass ULandscapeComponent::StaticClass()
```
