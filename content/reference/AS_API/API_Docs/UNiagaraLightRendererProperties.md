# UNiagaraLightRendererProperties

**Visibility:** public

## Inheritance

UNiagaraRendererProperties → UNiagaraLightRendererProperties

## Description

LIGHT RENDERING DefaultExponent float32 DefaultExponent

The exponent to use for all lights if no exponent binding was found

ColorAdd FVector ColorAdd

A static color shift applied to each rendered light

RendererVisibility int RendererVisibility

If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.

RadiusScale float32 RadiusScale

A factor used to scale each particle light radius

## FUNCTIONS

### SetbAffectsTranslucency

```
void SetbAffectsTranslucency(bool Value)
```

SetbAlphaScalesBrightness

### void SetbAlphaScalesBrightness

```
void SetbAlphaScalesBrightness(bool Value)
```

SetbUseInverseSquaredFalloff

### void SetbUseInverseSquaredFalloff

```
void SetbUseInverseSquaredFalloff(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraLightRendererProperties::StaticClass()
```
