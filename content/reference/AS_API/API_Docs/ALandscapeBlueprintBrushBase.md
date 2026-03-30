# ALandscapeBlueprintBrushBase

**Visibility:** public

## Inheritance

AActor → ALandscapeBlueprintBrushBase → ALandscapeBlueprintBrush → SETTINGS → AffectWeightmap

## Description

bool AffectWeightmap AffectedWeightmapLayers TArray<FName> AffectedWeightmapLayers AffectHeightmap bool AffectHeightmap

## LANDSCAPE

### RequestLandscapeUpdate

```
void RequestLandscapeUpdate()
```

---

## FUNCTIONS

### Render

```
UTextureRenderTarget2D Render(bool InIsHeightmap, UTextureRenderTarget2D InCombinedResult, FName InWeightmapLayerName)
```

Initialize

### void Initialize

```
void Initialize(FTransform InLandscapeTransform, FIntPoint InLandscapeSize, FIntPoint InLandscapeRenderTargetSize)
```

GetBlueprintRenderDependencies

### void GetBlueprintRenderDependencies

```
void GetBlueprintRenderDependencies(TArray<UObject>& OutStreamableAssets)
```

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static ALandscapeBlueprintBrushBase ALandscapeBlueprintBrushBase::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass ALandscapeBlueprintBrushBase::StaticClass()
```
