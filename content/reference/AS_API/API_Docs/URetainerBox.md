# URetainerBox

**Visibility:** public

## Inheritance

UContentWidget → URetainerBox

## Description

The Retainer Box renders children widgets to a render target first before later rendering that render target to the screen.  This allows both frequency and phase to be controlled so that the UI can actually render less often than the frequency of the main game render.  It also has the side benefit of allow materials to be applied to the render target after drawing the widgets to apply a simple post process.

## Members

### Child

```
Single Child
```

Caching / Performance

---

## EFFECT

### EffectMaterial

```
UMaterialInstanceDynamic EffectMaterial
```

The effect to optionally apply to the render target.  We will set the texture sampler based on the name set in the @TextureParameter property.

### If you want to adjust transparency of the final image, make sure you set Blend Mode to AlphaComposite

```
If you want to adjust transparency of the final image, make sure you set Blend Mode to AlphaComposite(Pre-Multiplied Alpha)and make sure to multiply the alpha you're apply across the surface to the color and the alpha of the render target, otherwise you won't see the expected color.
```

TextureParameter

### TextureParameter

```
FName TextureParameter
```

The texture sampler parameter of the @EffectMaterial, that we'll set to the render target.

### RULES

```
RENDER RULES
```
### Phase

```
int Phase
```

The Phase this widget will draw on.

If the Phase is 0, and the PhaseCount is 1, the widget will be drawn fresh every frame.  If the Phase were 0, and the PhaseCount were 2, this retainer would draw a fresh frame every other frame.  So in a 60Hz game, the UI would render at 30Hz.

### PhaseCount

```
int PhaseCount
```

The PhaseCount controls how many phases are possible know what to modulus the current frame count by to determine if this is the current frame to draw the widget on.

If the Phase is 0, and the PhaseCount is 1, the widget will be drawn fresh every frame.  If the Phase were 0, and the PhaseCount were 2, this retainer would draw a fresh frame every other frame.  So in a 60Hz game, the UI would render at 30Hz.

### RenderOnPhase

```
bool RenderOnPhase
```

Should this widget redraw the contents it has every time the phase occurs.

### RenderOnInvalidation

```
bool RenderOnInvalidation
```

Should this widget redraw the contents it has every time it receives an invalidation request from it's children, similar to the invalidation panel.

### bRetainRender

```
bool bRetainRender RETAINER RequestRender void RequestRender()
```

Requests the retainer redrawn the contents it has.

### SetRenderingPhase

```
void SetRenderingPhase(int RenderPhase, int TotalPhases)
```

Requests the retainer redrawn the contents it has.

### SetRetainRendering

```
void SetRetainRendering(bool bInRetainRendering)
```

Set the flag for if we retain the render or pass-through

---

## RETAINER \| EFFECT

### SetEffectMaterial

```
void SetEffectMaterial(UMaterialInterface EffectMaterial)
```

Set a new effect material to the retainer widget.

### SetTextureParameter

```
void SetTextureParameter(FName TextureParameter)
```

Sets the name of the texture parameter to set the render target to on the material.

### GetEffectMaterial

```
UMaterialInstanceDynamic GetEffectMaterial()const
```

Get the current dynamic effect material applied to the retainer box.

---

## FUNCTIONS

### GetTextureParameter

```
const FName& GetTextureParameter()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URetainerBox::StaticClass()
```
