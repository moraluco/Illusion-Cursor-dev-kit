# AWorldSettings

**Visibility:** public

## Inheritance

AInfo → AWorldSettings

## Description

Actor containing all script accessible world properties.

## AI

### bEnableAISystem

```
bool bEnableAISystem
```

if set to false AI system will not get created. Use it to disable all AI-related activity on a map

### AISystemClass

```
TSoftClassPtr<UAISystemBase> AISystemClass
```

---

## AUDIO

### DefaultReverbSettings

```
FReverbSettings DefaultReverbSettings
```

Default reverb settings used by audio volumes.

### DefaultAmbientZoneSettings

```
FInteriorSettings DefaultAmbientZoneSettings
```

Default interior settings used by audio volumes.

### DefaultBaseSoundMix

```
USoundMix DefaultBaseSoundMix
```

Default Base SoundMix.

---

## BROADPHASE

### BroadphaseSettings

```
FBroadphaseSettings BroadphaseSettings
```

---

## FOLIAGE

### InstancedFoliageGridSize

```
uint InstancedFoliageGridSize
```

Size of the grid for instanced foliage actors, only used for partitioned worlds

---

## GAMEMODE

### DefaultGameMode

```
TSubclassOf<AGameModeBase> DefaultGameMode
```

The default GameMode to use when starting this map in the game. If this value is NULL, the INI setting for default game type is used.

---

## HLODSYSTEM

### OverrideBaseMaterial

```
TSoftObjectPtr<UMaterialInterface> OverrideBaseMaterial
```

If set overrides the project-wide base material used for Proxy Materials

### HLODBakingTransform

```
FTransform HLODBakingTransform
```

Specify the transform to apply to the source meshes when building HLODs.

### HLODSetupAsset

```
TSoftClassPtr<UHierarchicalLODSetup> HLODSetupAsset
```

If set overrides the level settings and global project settings

### HierarchicalLODSetup

```
TArray<FHierarchicalSimplification> HierarchicalLODSetup
```
### Setup

```
Hierarchical LOD Setup
```

---

## LIGHTMASS

### LightmassSettings

```
FLightmassWorldInfoSettings LightmassSettings
```
### SETTINGS

```
LIGHTMASS RELATED SETTINGS
```
### PackedLightAndShadowMapTextureSize

```
int PackedLightAndShadowMapTextureSize
```

Maximum size of textures for packed light and shadow maps

---

## NAVIGATION

### NavigationDataChunkGridSize

```
uint NavigationDataChunkGridSize
```

Size of the grid for navigation data chunk actors

### NavigationDataBuilderLoadingCellSize

```
uint NavigationDataBuilderLoadingCellSize
```

Loading cell size used when building navigation data iteratively.  The actual cell size used will be rounded using the NavigationDataChunkGridSize.

---

## PHYSICS

### PhysicsCollisionHandlerClass

```
TSubclassOf<UPhysicsCollisionHandler> PhysicsCollisionHandlerClass
```

optional level specific collision handler

### bGlobalGravitySet

```
bool bGlobalGravitySet
```

If set to true we will use GlobalGravityZ instead of project setting DefaultGravityZ

### GlobalGravityZ

```
float32 GlobalGravityZ
```

optional level specific gravity override set by level designer

### DefaultPhysicsVolumeClass

```
TSubclassOf<ADefaultPhysicsVolume> DefaultPhysicsVolumeClass
```

level specific default physics volume

---

## PRECOMPUTEDVISIBILITY

### VisibilityCellSize

```
int VisibilityCellSize
```

World space size of precomputed visibility cells in x and y.  Smaller sizes produce more effective occlusion culling at the cost of increased runtime memory usage and lighting build times.

### VisibilityAggressiveness

```
EVisibilityAggressiveness VisibilityAggressiveness
```

Determines how aggressive precomputed visibility should be.  More aggressive settings cull more objects but also cause more visibility errors like popping.

---

## RENDERING

### DynamicIndirectShadowsSelfShadowingIntensity

```
float32 DynamicIndirectShadowsSelfShadowingIntensity
```

Controls the intensity of self-shadowing from capsule indirect shadows.  These types of shadows use approximate occluder representations, so reducing self-shadowing intensity can hide those artifacts.

### GlobalDistanceFieldViewDistance

```
float32 GlobalDistanceFieldViewDistance
```

Distance from the camera that the global distance field should cover.

### DefaultMaxDistanceFieldOcclusionDistance

```
float32 DefaultMaxDistanceFieldOcclusionDistance
```

Max occlusion distance used by mesh distance fields, overridden if there is a movable skylight.

---

## TICK

### MinGlobalTimeDilation

```
float32 MinGlobalTimeDilation
```

Lowest acceptable global time dilation.

### MinUndilatedFrameTime

```
float32 MinUndilatedFrameTime
```

Smallest possible frametime, not considering dilation. Equiv to 1/FastestFPS.

### MaxGlobalTimeDilation

```
float32 MaxGlobalTimeDilation
```

Highest acceptable global time dilation.

### MaxUndilatedFrameTime

```
float32 MaxUndilatedFrameTime
```

Largest possible frametime, not considering dilation. Equiv to 1/SlowestFPS.

---

## VR

### WorldToMeters

```
float32 WorldToMeters
```

scale of 1uu to 1m in real world measurements, for HMD and other physically tracked devices (e.g. 1uu = 1cm would be 100.0)

---

## WORLD

### bEnableWorldOriginRebasing

```
bool bEnableWorldOriginRebasing
```

World origin will shift to a camera position when camera goes far away from current origin

bEnableNavigationSystem

### bEnableNavigationSystem

```
const bool bEnableNavigationSystem
```
### KillZDamageType

```
TSubclassOf<UDamageType> KillZDamageType
```

The type of damage inflicted when a actor falls below KillZ

### bEnableLargeWorlds

```
bool bEnableLargeWorlds
```

If true, configures engine for large world testing. Disables CheckStillInWorld checks and octree visibility testing.  See UE_USE_UE4_WORLD_MAX for a more correct alternative. This setting will be removed once UE_LARGE_WORLD_MAX is considered stable.

### bEnableWorldBoundsChecks

```
bool bEnableWorldBoundsChecks
```

If true, enables CheckStillInWorld checks. Note: Do not set this manually if experimenting with large worlds. @see bEnableLargeWorlds

### KillZ

```
float32 KillZ
```

any actor falling below this level gets destroyed

### DefaultColorScale

```
FVector DefaultColorScale
```

Default color scale for the level

### NavigationSystemConfig

```
UNavigationSystemConfig NavigationSystemConfig
```

Holds parameters for NavigationSystem's creation. Set to Null will result in NavigationSystem instance not being created for this world. Note that if set NavigationSystemConfigOverride will be used instead.

### bEnableWorldComposition

```
bool bEnableWorldComposition
```

Enables tools for composing a tiled world.  Level has to be saved and all sub-levels removed before enabling this option.

### bUseClientSideLevelStreamingVolumes

```
bool bUseClientSideLevelStreamingVolumes
```

Enables client-side streaming volumes instead of server-side.  Expected usage scenario: server has all streaming levels always loaded, clients independently stream levels in/out based on streaming volumes.

---

## WORLDPARTITIONSETUP

### WorldPartition

```
UWorldPartition WorldPartition VARIABLES BookMarks UBookMark BookMarks FUNCTIONS GetbUseClientSideLevelStreamingVolumes bool GetbUseClientSideLevelStreamingVolumes()const
```

SetbPlaceCellsOnlyAlongCameraTracks

### void SetbPlaceCellsOnlyAlongCameraTracks

```
void SetbPlaceCellsOnlyAlongCameraTracks(bool Value)
```

GetbEnableLargeWorlds

### bool GetbEnableLargeWorlds

```
bool GetbEnableLargeWorlds()const SetbEnableLargeWorlds
```

void SetbEnableLargeWorlds(

### bool 	Value

```
bool 	Value 	)
```

GetbEnableWorldBoundsChecks

### bool GetbEnableWorldBoundsChecks

```
bool GetbEnableWorldBoundsChecks()const SetbEnableWorldBoundsChecks
```

void SetbEnableWorldBoundsChecks(

### bool 	Value

```
bool 	Value 	)
```

GetbEnableNavigationSystem

### bool GetbEnableNavigationSystem

```
bool GetbEnableNavigationSystem()const GetbEnableAISystem
```

bool GetbEnableAISystem() const

### SetbEnableAISystem

```
void SetbEnableAISystem(bool Value)
```

GetbEnableWorldComposition

### bool GetbEnableWorldComposition

```
bool GetbEnableWorldComposition()const SetbEnableWorldComposition
```

void SetbEnableWorldComposition(

### bool 	Value

```
bool 	Value 	)
```

SetbPrecomputeVisibility

### void SetbPrecomputeVisibility

```
void SetbPrecomputeVisibility(bool Value)
```

SetbUseClientSideLevelStreamingVolumes

### void SetbUseClientSideLevelStreamingVolumes

```
void SetbUseClientSideLevelStreamingVolumes(bool Value)
```

GetbEnableWorldOriginRebasing

### bool GetbEnableWorldOriginRebasing

```
bool GetbEnableWorldOriginRebasing()const SetbEnableWorldOriginRebasing
```

void SetbEnableWorldOriginRebasing(

### bool 	Value

```
bool 	Value 	)
```

GetbGlobalGravitySet

### bool GetbGlobalGravitySet

```
bool GetbGlobalGravitySet()const SetbGlobalGravitySet
```

void SetbGlobalGravitySet(

### bool 	Value

```
bool 	Value 	)
```

SetbMinimizeBSPSections

### void SetbMinimizeBSPSections

```
void SetbMinimizeBSPSections(bool Value)
```

SetbForceNoPrecomputedLighting

### void SetbForceNoPrecomputedLighting

```
void SetbForceNoPrecomputedLighting(bool Value)
```

SetbOverrideDefaultBroadphaseSettings

### void SetbOverrideDefaultBroadphaseSettings

```
void SetbOverrideDefaultBroadphaseSettings(bool Value)
```

SetbGenerateSingleClusterForLevel

### void SetbGenerateSingleClusterForLevel

```
void SetbGenerateSingleClusterForLevel(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AWorldSettings AWorldSettings::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AWorldSettings::StaticClass

```
static UClass AWorldSettings::StaticClass()
```
