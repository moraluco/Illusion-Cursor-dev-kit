# UParticleModuleRequired

**Visibility:** public

## Inheritance

UParticleModule → UParticleModuleRequired → DELAY → EmitterDelayLow

## Description

float32 EmitterDelayLow

The low end of the emitter delay if using a range.

EmitterDelay float32 EmitterDelay

Indicates the time (in seconds) that this emitter should be delayed in the particle system.

## DURATION

### EmitterDuration

```
float32 EmitterDuration
```

How long, in seconds, the emitter will run before looping.

### EmitterDurationLow

```
float32 EmitterDurationLow
```

The low end of the emitter duration if using a range.

### EmitterLoops

```
int EmitterLoops
```

The number of times to loop the emitter.  0 indicates loop continuously

---

## EMITTER

### SortMode

```
EParticleSortMode SortMode
```

The sorting mode to use for this emitter.  PSORTMODE_None  - No sorting required.  PSORTMODE_ViewProjDepth  - Sort by view projected depth of the particle.  PSORTMODE_DistanceToView  - Sort by distance of particle to view in world space.  PSORTMODE_Age_OldestFirst  - Sort by age, oldest drawn first.  PSORTMODE_Age_NewestFirst  - Sort by age, newest drawn first.

### Material

```
UMaterialInterface Material
```

The material to utilize for the emitter at this LOD level.

### EmitterOrigin

```
FVector EmitterOrigin
```
### MinFacingCameraBlendDistance

```
float32 MinFacingCameraBlendDistance
```

The distance at which PSA_FacingCameraDistanceBlend  is fully PSA_Square

### ScreenAlignment

```
EParticleScreenAlignment ScreenAlignment
```

The screen alignment to utilize for the emitter at this LOD level.  One of the following: PSA_FacingCameraPosition - Faces the camera position, but is not dependent on the camera rotation.  This method produces more stable particles under camera rotation.  PSA_Square  - Uniform scale (via SizeX) facing the camera PSA_Rectangle  - Non-uniform scale (via SizeX and SizeY) facing the camera PSA_Velocity  - Orient the particle towards both the camera and the direction the particle is moving. Non-uniform scaling is allowed.  PSA_TypeSpecific  - Use the alignment method indicated in the type data module.  PSA_FacingCameraDistanceBlend - Blends between PSA_FacingCameraPosition and PSA_Square over specified distance.

### EmitterRotation

```
FRotator EmitterRotation
```
### MaxFacingCameraBlendDistance

```
float32 MaxFacingCameraBlendDistance
```

The distance at which PSA_FacingCameraDistanceBlend  is fully PSA_FacingCameraPosition

---

## MACROUV

### MacroUVPosition

```
FVector MacroUVPosition
```

Local space position that UVs generated with the ParticleMacroUV material node will be centered on.

### MacroUVRadius

```
float32 MacroUVRadius
```

World space radius that UVs generated with the ParticleMacroUV material node will tile based on.

---

## MATERIALS

### NamedMaterialOverrides

```
TArray<FName> NamedMaterialOverrides
```

Named material overrides for this emitter.  Overrides this emitter's material(s) with those in the correspondingly named slot(s) of the owning system.

---

## NORMALS

### NormalsSphereCenter

```
FVector NormalsSphereCenter
```

When EmitterNormalsMode is ENM_Spherical, particle normals are created to face away from NormalsSphereCenter.  NormalsSphereCenter is in local space.

### NormalsCylinderDirection

```
FVector NormalsCylinderDirection
```

When EmitterNormalsMode is ENM_Cylindrical, particle normals are created to face away from the cylinder going through NormalsSphereCenter in the direction NormalsCylinderDirection.  NormalsCylinderDirection is in local space.

### EmitterNormalsMode

```
EEmitterNormalsMode EmitterNormalsMode
```

Normal generation mode for this emitter LOD.

---

## PARTICLECUTOUT

### BoundingMode

```
ESubUVBoundingVertexCount BoundingMode
```

More bounding vertices results in reduced overdraw, but adds more triangle overhead.  The eight vertex mode is best used when the SubUV texture has a lot of space to cut out that is not captured by the four vertex version, and when the particles using the texture will be few and large.

### OpacitySourceMode

```
EOpacitySourceMode OpacitySourceMode
```
### AlphaThreshold

```
float32 AlphaThreshold
```

Alpha channel values larger than the threshold are considered occupied and will be contained in the bounding geometry.  Raising this threshold slightly can reduce overdraw in particles using this animation asset.

### CutoutTexture

```
UTexture2D CutoutTexture
```

Texture to generate bounding geometry from.

---

## RENDERING

### MaxDrawCount

```
int MaxDrawCount
```

The maximum number of particles to DRAW for this emitter.  If set to 0, it will use whatever number are present.

### UVFlippingMode

```
EParticleUVFlipMode UVFlippingMode
```

Controls UV Flipping for this emitter.

---

## SUBUV

### InterpolationMethod

```
EParticleSubUVInterpMethod InterpolationMethod
```

The interpolation method to used for the SubUV image selection.  One of the following: PSUVIM_None  - Do not apply SubUV modules to this emitter.  PSUVIM_Linear  - Smoothly transition between sub-images in the given order, with no blending between the current and the next PSUVIM_Linear_Blend  - Smoothly transition between sub-images in the given order, blending between the current and the next PSUVIM_Random  - Pick the next image at random, with no blending between the current and the next PSUVIM_Random_Blend  - Pick the next image at random, blending between the current and the next

### RandomImageChanges

```
int RandomImageChanges
```

The number of times to change a random image over the life of the particle.

### SubImages_Horizontal

```
int SubImages_Horizontal
```

The number of sub-images horizontally in the texture

### SubImages_Vertical

```
int SubImages_Vertical
```

The number of sub-images vertically in the texture

---

## FUNCTIONS

### SetbDelayFirstLoopOnly

```
void SetbDelayFirstLoopOnly(bool Value)
```

SetbKillOnDeactivate

### void SetbKillOnDeactivate

```
void SetbKillOnDeactivate(bool Value)
```

SetbKillOnCompleted

### void SetbKillOnCompleted

```
void SetbKillOnCompleted(bool Value)
```

SetbUseLegacyEmitterTime

### void SetbUseLegacyEmitterTime

```
void SetbUseLegacyEmitterTime(bool Value)
```

SetbRemoveHMDRoll

### void SetbRemoveHMDRoll

```
void SetbRemoveHMDRoll(bool Value)
```

SetbSupportLargeWorldCoordinates

### void SetbSupportLargeWorldCoordinates

```
void SetbSupportLargeWorldCoordinates(bool Value)
```

SetbEmitterDurationUseRange

### void SetbEmitterDurationUseRange

```
void SetbEmitterDurationUseRange(bool Value)
```

SetbUseLocalSpace

### void SetbUseLocalSpace

```
void SetbUseLocalSpace(bool Value)
```

SetbScaleUV

### void SetbScaleUV

```
void SetbScaleUV(bool Value)
```

SetbEmitterDelayUseRange

### void SetbEmitterDelayUseRange

```
void SetbEmitterDelayUseRange(bool Value)
```

SetbOverrideSystemMacroUV

### void SetbOverrideSystemMacroUV

```
void SetbOverrideSystemMacroUV(bool Value)
```

SetbUseMaxDrawCount

### void SetbUseMaxDrawCount

```
void SetbUseMaxDrawCount(bool Value)
```

SetbOrbitModuleAffectsVelocityAlignment

### void SetbOrbitModuleAffectsVelocityAlignment

```
void SetbOrbitModuleAffectsVelocityAlignment(bool Value)
```

SetbDurationRecalcEachLoop

### void SetbDurationRecalcEachLoop

```
void SetbDurationRecalcEachLoop(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleRequired::StaticClass()
```
