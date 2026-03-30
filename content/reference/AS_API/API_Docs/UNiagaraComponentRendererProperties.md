# UNiagaraComponentRendererProperties

**Visibility:** public

## Inheritance

UNiagaraRendererProperties → UNiagaraComponentRendererProperties

## Description

COMPONENT PROPERTIES TemplateComponent USceneComponent TemplateComponent

The object template used to create new components at runtime.

## Members

### RENDERING

```
COMPONENT RENDERING
```
### bAssignComponentsOnParticleID

```
bool bAssignComponentsOnParticleID
```

If true then components will not be automatically assigned to the first particle available, but try to stick to the same particle based on its unique id.  Disabling this option is faster, but a particle can get a different component each tick, which can lead to problems with for example motion blur.

### bOnlyCreateComponentsOnParticleSpawn

```
bool bOnlyCreateComponentsOnParticleSpawn
```

If true then new components can only be created on newly spawned particles. If a particle is not able to create a component on it's first frame (e.g. because the component limit was reached) then it will be blocked from spawning a component on subsequent frames.

### bOnlyActivateNewlyAquiredComponents

```
bool bOnlyActivateNewlyAquiredComponents
```

If true then components will only be activated when newly acquired. e.g. on particle spawn or when the particle enables/disables the component.  If false, components will be always kept active while they are used by an enabled particle.  This can be useful for component types that can internally activate and deactivate during their lifetimes while still being used by an enabled particle.  For example NiagaraComponents that deactivate/reactivate according to scalability settings.  This setting is only valid when bAssignComponentsOnParticleID is true.

### bVisualizeComponents

```
bool bVisualizeComponents
```

If true then the editor visualization is enabled for the component; has no effect in-game.

### RendererVisibility

```
int RendererVisibility
```

If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.

### ComponentCountLimit

```
uint ComponentCountLimit
```

The max number of components that this emitter will spawn or update each frame.

### ComponentType

```
TSubclassOf<USceneComponent> ComponentType
```

The scene component class to instantiate

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraComponentRendererProperties::StaticClass()
```
