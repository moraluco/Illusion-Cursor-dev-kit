# UNiagaraDataInterfaceChaosDestruction

**Visibility:** public

## Inheritance

UNiagaraDataInterface → UNiagaraDataInterfaceChaosDestruction

## Description

Data Interface allowing sampling of Chaos Destruction data.

## Members

### SETTINGS

```
COLLISION DATA SETTINGS
```
### DoSpatialHash

```
bool DoSpatialHash
```
### SETTINGS

```
DATA SETTINGS
```
### ChaosBreakingMaterialSet

```
TSet<TObjectPtr<UPhysicalMaterial>> ChaosBreakingMaterialSet
```
### comment

```
TODO: Explanatory comment
```
### bApplyMaterialsFilter

```
bool bApplyMaterialsFilter
```
### Filter

```
Materials Filter
```
### bGetExternalBreakingData

```
bool bGetExternalBreakingData
```
### comment

```
TODO: Explanatory comment
```
### SETTINGS

```
DEBUG SETTINGS
```
### DebugType

```
EDebugTypeEnum DebugType
```

Debug visualization method

---

## SOLVER

### ChaosSolverActorSet

```
TSet<TObjectPtr<AChaosSolverActor>> ChaosSolverActorSet
```
### Solver

```
Chaos Solver
```
### DATA

```
SOLVER DATA
```
### MaxNumberOfDataEntriesToSpawn

```
int MaxNumberOfDataEntriesToSpawn
```

Maximum number of collision/breaking/trailing entry used for spawning particles every time data from the physics solver gets processed

### DataSourceType

```
EDataSourceTypeEnum DataSourceType
```
### DataProcessFrequency

```
int DataProcessFrequency
```

Number of times the RBD collision data gets processed every second

### SETTINGS

```
SPATIALHASH SETTINGS
```
### MaxDataPerCell

```
int MaxDataPerCell
```
### SpatialHashVolumeCellSize

```
FVector SpatialHashVolumeCellSize
```

SpatialHash volume resolution

### SpatialHashVolumeMax

```
FVector SpatialHashVolumeMax
```

SpatialHash volume max

### SpatialHashVolumeMin

```
FVector SpatialHashVolumeMin
```

SpatialHash volume min

### SETTINGS

```
SPAWN POSITION SETTINGS
```
### RandomPositionMagnitudeMinMax

```
FVector2D RandomPositionMagnitudeMinMax
```

Random displacement value for the particle spawn position

### SETTINGS

```
SPAWN SETTINGS
```
### DoSpawn

```
bool DoSpawn
```

Turn on/off particle spawning

### SpawnMultiplierMinMax

```
FVector2D SpawnMultiplierMinMax
```

For every collision random number of particles will be spawned in the range of [SpawnMultiplierMin, SpawnMultiplierMax]

### SpawnChance

```
float32 SpawnChance
```

For every collision random number of particles will be spawned in the range of [SpawnMultiplierMin, SpawnMultiplierMax]

### MaxLatency

```
float32 MaxLatency
```

SPAWN SETTINGS - SORTING SOLVER DATA

### DataSortingType

```
EDataSortTypeEnum DataSortingType
```

Sorting method to sort the collision data

SPAWN SETTINGS - THRESHOLDS TO SPAWN

### LocationZToSpawn

```
ELocationZToSpawnEnum LocationZToSpawn
```

How to use LocationZ to filter

### LocationXToSpawnMinMax

```
FVector2D LocationXToSpawnMinMax
```

Min/Max LocationX to spawn particles

### LocationFilteringMode

```
ELocationFilteringModeEnum LocationFilteringMode
```
### Mode

```
Location Filtering Mode
```
### LocationYToSpawnMinMax

```
FVector2D LocationYToSpawnMinMax
```

Min/Max LocationY to spawn particles

### SolverTimeToSpawnMinMax

```
FVector2D SolverTimeToSpawnMinMax
```

Min/Max solver time mass to spawn particles

### SurfaceTypeToSpawn

```
int SurfaceTypeToSpawn
```

SurfaceType to spawn particles

### LocationYToSpawn

```
ELocationYToSpawnEnum LocationYToSpawn
```

How to use LocationY to filter

### VolumeToSpawnMinMax

```
FVector2D VolumeToSpawnMinMax
```

Min/Max volume to spawn particles

### ExtentMaxToSpawnMinMax

```
FVector2D ExtentMaxToSpawnMinMax
```

Min/Max ExtentMax to spawn particles

### ExtentMinToSpawnMinMax

```
FVector2D ExtentMinToSpawnMinMax
```

Min/Max ExtentMin to spawn particles

### MassToSpawnMinMax

```
FVector2D MassToSpawnMinMax
```

Min/Max mass to spawn particles

### SpeedToSpawnMinMax

```
FVector2D SpeedToSpawnMinMax
```

Min/Max speed to spawn particles

### ImpulseToSpawnMinMax

```
FVector2D ImpulseToSpawnMinMax
```

Min/Max collision accumulated impulse to spawn particles

### LocationXToSpawn

```
ELocationXToSpawnEnum LocationXToSpawn
```

How to use LocationX to filter

### LocationZToSpawnMinMax

```
FVector2D LocationZToSpawnMinMax
```

Min/Max LocationX to spawn particles

SPAWN SETTINGS - TRAILING - THRESHOLDS TO SPAWN

### TrailMinSpeedToSpawn

```
float32 TrailMinSpeedToSpawn
```

Min Linear Speed to generate trailing particles

### SETTINGS

```
VELOCITY SETTINGS
```
### FinalVelocityMagnitudeMinMax

```
FVector2D FinalVelocityMagnitudeMinMax
```

Clamp particles velocity

### VelocityOffsetMin

```
FVector VelocityOffsetMin
```

Min Offset value added to spawned particles velocity

### VelocityOffsetMax

```
FVector VelocityOffsetMax
```

Max Offset value added to spawned particles velocity

### RandomVelocityMagnitudeMinMax

```
FVector2D RandomVelocityMagnitudeMinMax
```

Every particles will be spawned with random velocity with magnitude in the range of [RandomVelocityMagnitudeMin, RandomVelocityMagnitudeMax]

VELOCITY SETTINGS - COLLISION NORMAL BASED VELOCITY MODEL

### SpreadAngleMax

```
float32 SpreadAngleMax
```

VELOCITY SETTINGS - INHERITED VELOCITY

### InheritedVelocityMultiplier

```
float32 InheritedVelocityMultiplier
```

How much of the collision velocity gets inherited

### VELOCITY SETTINGS - RANDOM GENERATION

```
VELOCITY SETTINGS - RANDOM GENERATION RandomVelocityGenerationType ERandomVelocityGenerationTypeEnum RandomVelocityGenerationType
```

The method used to create the random velocities for the newly spawned particles

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceChaosDestruction::StaticClass()
```
