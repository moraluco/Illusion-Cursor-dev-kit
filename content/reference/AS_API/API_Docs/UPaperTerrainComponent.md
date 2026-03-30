# UPaperTerrainComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UPaperTerrainComponent

## Description

The terrain visualization component for an associated spline component.  This takes a 2D terrain material and instances sprite geometry along the spline path.

## COLLISION

### SpriteCollisionDomain

```
ESpriteCollisionMode SpriteCollisionDomain
```

Collision domain (no collision, 2D (experimental), or 3D)

### CollisionThickness

```
float32 CollisionThickness
```

The extrusion thickness of collision geometry when using a 3D collision domain

---

## SPRITE

### RandomSeed

```
int RandomSeed
```

Random seed used for choosing which spline meshes to use.

### TerrainMaterial

```
UPaperTerrainMaterial TerrainMaterial
```

The terrain material to apply to this component (set of rules for which sprites are used on different surfaces or the interior)

### ReparamStepsPerSegment

```
int ReparamStepsPerSegment
```

Number of steps per spline segment to place in the reparameterization table

### bFilledSpline

```
bool bFilledSpline
```
### bClosedSpline

```
bool bClosedSpline
```
### SegmentOverlapAmount

```
float32 SegmentOverlapAmount
```

The overlap amount between segments

### TerrainColor

```
FLinearColor TerrainColor
```

The color of the terrain (passed to the sprite material as a vertex color)

---

## SPRITE

### SetTerrainColor

```
void SetTerrainColor(FLinearColor NewColor)
```

Set color of the terrain

---

## FUNCTIONS

### GetTerrainColor

```
const FLinearColor& GetTerrainColor()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPaperTerrainComponent UPaperTerrainComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPaperTerrainComponent UPaperTerrainComponent::GetOrCreate

```
static UPaperTerrainComponent UPaperTerrainComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPaperTerrainComponent UPaperTerrainComponent::Create

```
static UPaperTerrainComponent UPaperTerrainComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPaperTerrainComponent::StaticClass

```
static UClass UPaperTerrainComponent::StaticClass()
```
