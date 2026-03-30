# UParticleSystem

**Visibility:** public

## Inheritance

UFXSystemAsset → UParticleSystem

## Description

A ParticleSystem is a complete particle effect that contains any number of ParticleEmitters. By allowing multiple emitters in a system, the designer can create elaborate particle effects that are held in a single system. Once created using Cascade, a ParticleSystem can then be inserted into a level or created in script.

## BOUNDS

### FixedRelativeBoundingBox

```
FBox FixedRelativeBoundingBox
```

Fixed relative bounding box for particle system.

---

## DELAY

### DelayLow

```
float32 DelayLow
```

The low end of the emitter delay if using a range.

### Delay

```
float32 Delay
```

How long this Particle system should delay when ActivateSystem is called on it.

---

## LOD

### LODDistanceCheckTime

```
float32 LODDistanceCheckTime
```

How often (in seconds) the system should perform the LOD distance check.

### LODDistances

```
TArray<float32> LODDistances
```

The array of distances for each LOD level in the system.  Used when LODMethod is set to PARTICLESYSTEMLODMETHOD_Automatic.

### Example: System with 3 LOD levels LODDistances

```
Example: System with 3 LOD levels LODDistances(0) = 0.0 LODDistances(1) = 2500.0 LODDistances(2) = 5000.0
```

In this case, when the system is [  0.0 ..  2499.9] from the camera, LOD level 0 will be used.  [2500.0 ..  4999.9] from the camera, LOD level 1 will be used.  [5000.0 .. INFINITY] from the camera, LOD level 2 will be used.

### LODMethod

```
ParticleSystemLODMethod LODMethod
```

The method of LOD level determination to utilize for this particle system PARTICLESYSTEMLODMETHOD_Automatic - Automatically set the LOD level, checking every LODDistanceCheckTime seconds.  PARTICLESYSTEMLODMETHOD_DirectSet - LOD level is directly set by the game code.  PARTICLESYSTEMLODMETHOD_ActivateAutomatic - LOD level is determined at Activation time, then left alone unless directly set by game code.

---

## MACROUV

### MacroUVRadius

```
float32 MacroUVRadius
```

World space radius that UVs generated with the ParticleMacroUV material node will tile based on.

### MacroUVPosition

```
FVector MacroUVPosition
```

Local space position that UVs generated with the ParticleMacroUV material node will be centered on.

---

## MATERIALS

### NamedMaterialSlots

```
TArray<FNamedEmitterMaterial> NamedMaterialSlots
```

Array of named material slots for use by emitters of this system.  Emitters can use these instead of their own materials by providing the name to the NamedMaterialOverrides property of their required module.  These materials can be overridden using CreateNamedDynamicMaterialInstance() on a ParticleSystemComponent.

---

## OCCLUSION

### CustomOcclusionBounds

```
FBox CustomOcclusionBounds
```

The occlusion bounds to use if OcclusionBoundsMethod is set to EPSOBM_CustomBounds

### OcclusionBoundsMethod

```
EParticleSystemOcclusionBoundsMethod OcclusionBoundsMethod
```

Which occlusion bounds method to use for this particle system.  EPSOBM_None - Don't determine occlusion for this system.  EPSOBM_ParticleBounds - Use the bounds of the component when determining occlusion.

---

## PARTICLESYSTEM

### WarmupTickRate

```
float32 WarmupTickRate
```

WarmupTickRate

the time step for each tick during warm up.  Increasing this improves performance. Decreasing, improves accuracy.  Set to 0 to use the default tick time.

### UpdateTime_FPS

```
float32 UpdateTime_FPS
```

UpdateTime_FPS

### mode

```
the frame per second to update at in FixedTime mode
```
### WarmupTime

```
float32 WarmupTime
```

WarmupTime

the time to warm-up the particle system when first rendered Warning: WarmupTime is implemented by simulating the particle system for the time requested upon activation.

### counts

```
This is extremely prone to cause hitches, especially with large particle counts
```

use with caution.

### SecondsBeforeInactive

```
float32 SecondsBeforeInactive
```

Number of seconds of emitter not being rendered that need to pass before it no longer gets ticked/ becomes inactive.

### SystemUpdateMode

```
EParticleSystemUpdateMode SystemUpdateMode
```

---

## PERFORMANCE

### InsignificanceDelay

```
float32 InsignificanceDelay
```

Time delay between all emitters becoming insignificant and the systems insignificant reaction.

### MaxSignificanceLevel

```
EParticleSignificanceLevel MaxSignificanceLevel
```

The maximum level of significance for emitters in this system. Any emitters with a higher significance will be capped at this significance level.

### InsignificantReaction

```
EParticleSystemInsignificanceReaction InsignificantReaction
```

The reaction this system takes when all emitters are insignificant.

### MinTimeBetweenTicks

```
uint MinTimeBetweenTicks
```

Minimum duration between ticks; 33=tick at max. 30FPS, 16=60FPS, 8=120FPS

---

## THUMBNAIL

### ThumbnailWarmup

```
float32 ThumbnailWarmup
```

The time to warm-up the system for the thumbnail image

### PARTICLE SYSTEM

```
PARTICLE SYSTEM ContainsEmitterType bool ContainsEmitterType(UClass TypeData)
```

Returns true if this system contains an emitter of the pasesd type.  @ param TypeData - The emitter type to check for. Must be a child class of UParticleModuleTypeDataBase

---

## FUNCTIONS

### SetbUseFixedRelativeBoundingBox

```
void SetbUseFixedRelativeBoundingBox(bool Value)
```

SetbUseRealtimeThumbnail

### void SetbUseRealtimeThumbnail

```
void SetbUseRealtimeThumbnail(bool Value)
```

SetbUseDelayRange

### void SetbUseDelayRange

```
void SetbUseDelayRange(bool Value)
```

SetbAllowManagedTicking

### void SetbAllowManagedTicking

```
void SetbAllowManagedTicking(bool Value)
```

SetbAutoDeactivate

### void SetbAutoDeactivate

```
void SetbAutoDeactivate(bool Value)
```

SetbOrientZAxisTowardCamera

### void SetbOrientZAxisTowardCamera

```
void SetbOrientZAxisTowardCamera(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleSystem::StaticClass()
```
