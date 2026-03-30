# UGroomComponent

**Visibility:** public

## Inheritance

UMeshComponent → UGroomComponent → GROOM

## Description

bUseCards bool bUseCards

Force the groom to use cards/meshes geometry instead of strands.

BindingAsset UGroomBindingAsset BindingAsset

Optional binding asset for binding a groom onto a skeletal mesh. If the binding asset is not provided the projection is done at runtime, which implies a large GPU cost at startup time.

AttachmentName FString AttachmentName

Optional socket name, where the groom component should be attached at, when parented with a skeletal mesh

GroomGroupsDesc TArray<FHairGroupDesc> GroomGroupsDesc

Groom's groups info.

GroomAsset UGroomAsset GroomAsset

## Members

### asset

```
Groom asset
```

IsHairLengthScaleEnabled const bool IsHairLengthScaleEnabled

---

## GROOMCACHE

### bManualTick

```
bool bManualTick
```
### GroomCache

```
UGroomCache GroomCache
```
### bRunning

```
bool bRunning
```
### bLooping

```
bool bLooping
```

---

## SIMULATION

### PhysicsAsset

```
UPhysicsAsset PhysicsAsset
```

Physics asset to be used for hair simulation

### SimulationSettings

```
FHairSimulationSettings SimulationSettings
```

Groom's simulation settings

---

## GROOM

### SetHairLengthScaleEnable

```
void SetHairLengthScaleEnable(bool bEnable)
```

GetIsHairLengthScaleEnabled

### bool GetIsHairLengthScaleEnabled

```
bool GetIsHairLengthScaleEnabled()
```

SetGroomAsset

### void SetGroomAsset

```
void SetGroomAsset(UGroomAsset Asset)
```

Accessor function for changing Groom asset from blueprint/sequencer

### SetBindingAsset

```
void SetBindingAsset(UGroomBindingAsset InBinding)
```

Accessor function for changing Groom binding asset from blueprint/sequencer

### SetHairLengthScale

```
void SetHairLengthScale(float32 Scale)
```

Accessor function for changing hair length scale from blueprint/sequencer

---

## SIMULATION

### SetEnableSimulation

```
void SetEnableSimulation(bool bInEnableSimulation)
```

Accessor function for changing the enable simulation flag from blueprint/sequencer

### ResetSimulation

```
void ResetSimulation()
```

Reset the simulation, if enabled

### SetPhysicsAsset

```
void SetPhysicsAsset(UPhysicsAsset InPhysicsAsset)
```

Accessor function for changing Groom physics asset from blueprint/sequencer

### AddCollisionComponent

```
void AddCollisionComponent(USkeletalMeshComponent SkeletalMeshComponent)
```

Add a skeletal mesh to the collision components

### ResetCollisionComponents

```
void ResetCollisionComponents()
```

Reset the collision components

---

## FUNCTIONS

### GetBindingAsset

```
UGroomBindingAsset GetBindingAsset()const
```

GetPhysicsAsset

### UPhysicsAsset GetPhysicsAsset

```
UPhysicsAsset GetPhysicsAsset()const GetGroomAsset
```

UGroomAsset GetGroomAsset() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UGroomComponent UGroomComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UGroomComponent UGroomComponent::GetOrCreate

```
static UGroomComponent UGroomComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UGroomComponent UGroomComponent::Create

```
static UGroomComponent UGroomComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UGroomComponent::StaticClass

```
static UClass UGroomComponent::StaticClass()
```
