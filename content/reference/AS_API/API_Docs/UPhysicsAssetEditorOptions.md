# UPhysicsAssetEditorOptions

**Visibility:** public

## Inheritance

UObject → UPhysicsAssetEditorOptions → ANIM → PhysicsBlend

## Description

float32 PhysicsBlend

Lets you manually control the physics/animation

bUpdateJointsFromAnimation bool bUpdateJointsFromAnimation

Lets you manually control the physics/animation

PhysicsUpdateMode EPhysicsTransformUpdateMode PhysicsUpdateMode

Determines whether simulation of root body updates component transform

PokePauseTime float32 PokePauseTime

Time between poking ragdoll and starting to blend back.

PokeBlendTime float32 PokeBlendTime

Time taken to blend from physics to animation.

## CLOTHING

### bResetClothWhenSimulating

```
bool bResetClothWhenSimulating
```

When set, cloth will reset each time simulation is toggled

---

## MOUSESPRING

### HandleLinearStiffness

```
float32 HandleLinearStiffness
```

Linear stiffness of mouse spring forces

### HandleAngularDamping

```
float32 HandleAngularDamping
```

Angular damping of mouse spring forces

### HandleLinearDamping

```
float32 HandleLinearDamping
```

Linear damping of mouse spring forces

### InterpolationSpeed

```
float32 InterpolationSpeed
```

How quickly we interpolate the physics target transform for mouse spring forces

### HandleAngularStiffness

```
float32 HandleAngularStiffness
```

Angular stiffness of mouse spring forces

---

## POKING

### PokeStrength

```
float32 PokeStrength
```

Strength of the impulse used when poking with left mouse button

### InteractionDistance

```
float32 InteractionDistance
```

Raycast distance when poking or grabbing

---

## SIMULATION

### bUseGravityOverride

```
bool bUseGravityOverride
```

Toggle gravity override vs gravity scale

### GravScale

```
float32 GravScale
```

Scale factor for the gravity used in the simulation

### GravityOverrideZ

```
float32 GravityOverrideZ
```

Gravity override used in the simulation

### MaxFPS

```
int MaxFPS
```

Max FPS for simulation in PhysicsAssetEditor. This is helpful for targeting the same FPS as your game. -1 means disabled

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPhysicsAssetEditorOptions::StaticClass()
```
