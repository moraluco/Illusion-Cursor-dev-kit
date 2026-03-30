# UPaperTileLayer

**Visibility:** public

## Inheritance

UObject → UPaperTileLayer

## Description

This class represents a single layer in a tile map.  All layers in the map must have the size dimensions.

## SPRITE

### LayerColor

```
FLinearColor LayerColor
```

The color of this layer (multiplied with the tile map color and passed to the material as a vertex color)

### LayerWidth

```
int LayerWidth
```

Width of the layer (in tiles)

### LayerHeight

```
int LayerHeight
```

Height of the layer (in tiles)

### CollisionThicknessOverride

```
float32 CollisionThicknessOverride
```

The override thickness of the collision for this layer (when bOverrideCollisionThickness is set)

### CollisionOffsetOverride

```
float32 CollisionOffsetOverride
```

The override offset of the collision for this layer (when bOverrideCollisionOffset is set) Note: This is measured in Unreal Units (cm) from the center of the tile map component, not from the previous layer.

### LayerName

```
FText LayerName
```

Name of the layer

### bHiddenInGame

```
bool bHiddenInGame
```

Should this layer be hidden in the game?

### bLayerCollides

```
bool bLayerCollides
```

Should this layer generate collision?  Note: This only has an effect if the owning tile map has collision enabled

### bOverrideCollisionThickness

```
bool bOverrideCollisionThickness
```

Should this layer use a custom thickness for generated collision instead of the thickness setting in the tile map?

### bOverrideCollisionOffset

```
bool bOverrideCollisionOffset
```

Should this layer use a custom offset for generated collision instead of the layer drawing offset?

---

## FUNCTIONS

### GetbOverrideCollisionThickness

```
bool GetbOverrideCollisionThickness()const
```

GetbHiddenInGame

### bool GetbHiddenInGame

```
bool GetbHiddenInGame()const SetbHiddenInGame
```

void SetbHiddenInGame(

### bool 	Value

```
bool 	Value 	)
```

GetbLayerCollides

### bool GetbLayerCollides

```
bool GetbLayerCollides()const SetbLayerCollides
```

void SetbLayerCollides(

### bool 	Value

```
bool 	Value 	)
```

SetbHiddenInEditor

### void SetbHiddenInEditor

```
void SetbHiddenInEditor(bool Value)
```

SetbOverrideCollisionThickness

### void SetbOverrideCollisionThickness

```
void SetbOverrideCollisionThickness(bool Value)
```

GetbOverrideCollisionOffset

### bool GetbOverrideCollisionOffset

```
bool GetbOverrideCollisionOffset()const SetbOverrideCollisionOffset
```

void SetbOverrideCollisionOffset(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPaperTileLayer::StaticClass()
```
