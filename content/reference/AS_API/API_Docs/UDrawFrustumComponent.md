# UDrawFrustumComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UDrawFrustumComponent

## Description

Utility component for drawing a view frustum. Origin is at the component location, frustum points down position X axis.

## DRAWFRUSTUMCOMPONENT

### FrustumColor

```
FColor FrustumColor
```

Color to draw the wireframe frustum.

### FrustumAngle

```
float32 FrustumAngle
```

Angle of longest dimension of view shape.  If the angle is 0 then an orthographic projection is used

### FrustumAspectRatio

```
float32 FrustumAspectRatio
```

Ratio of horizontal size over vertical size.

### FrustumStartDist

```
float32 FrustumStartDist
```

Distance from origin to start drawing the frustum.

### FrustumEndDist

```
float32 FrustumEndDist
```

Distance from origin to stop drawing the frustum.

### Texture

```
UTexture Texture
```

optional texture to show on the near plane

### bFrustumEnabled

```
bool bFrustumEnabled
```

Enable or disable frustum visualization for this camera

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UDrawFrustumComponent UDrawFrustumComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UDrawFrustumComponent UDrawFrustumComponent::GetOrCreate

```
static UDrawFrustumComponent UDrawFrustumComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UDrawFrustumComponent UDrawFrustumComponent::Create

```
static UDrawFrustumComponent UDrawFrustumComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UDrawFrustumComponent::StaticClass

```
static UClass UDrawFrustumComponent::StaticClass()
```
