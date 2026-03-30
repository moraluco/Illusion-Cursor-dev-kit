# UNiagaraGeometryCacheRendererProperties

**Visibility:** public

## Inheritance

UNiagaraRendererProperties → UNiagaraGeometryCacheRendererProperties → GEOMETRYCACHE

## Description

bIsLooping bool bIsLooping

If true, then the geometry cache keeps playing in a loop

ComponentCountLimit uint ComponentCountLimit

The max number of components that this emitter will spawn or update each frame.

RendererVisibility int RendererVisibility

If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.

bAssignComponentsOnParticleID bool bAssignComponentsOnParticleID

If true then components will not be automatically assigned to the first particle available, but try to stick to the same particle based on its unique id.  Disabling this option is faster, but a particle can get a different component each tick, which can lead to problems with for example motion blur.

GeometryCaches TArray<FNiagaraGeometryCacheReference> GeometryCaches

Reference to the geometry cache assets to use. If ArrayIndexBinding is not set, a random element is used for each particle.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraGeometryCacheRendererProperties::StaticClass()
```
