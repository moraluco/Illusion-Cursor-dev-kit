# Niagara

## Inheritance

Niagara → NIAGARA → SetSkeletalMeshDataInterfaceSamplingRegions

## Description

static void Niagara::SetSkeletalMeshDataInterfaceSamplingRegions(

UNiagaraComponent 	NiagaraSystem, FString 	OverrideName, TArray<FName> 	SamplingRegions

)

Sets the SamplingRegion to use on the skeletal mesh data interface, this is destructive as it modifies the data interface.

GetNiagaraParameterCollection static UNiagaraParameterCollectionInstance Niagara::GetNiagaraParameterCollection(

### UNiagaraParameterCollection 	Collection

```
UNiagaraParameterCollection 	Collection
```

)

### This is gonna be totally reworked UFUNCTION

```
This is gonna be totally reworked UFUNCTION(BlueprintCallable, Category = Niagara, meta = (Keywords = "niagara System", UnsafeDuringActorConstruction = "true"))static void SetUpdateScriptConstant(UNiagaraComponent* Component, FName EmitterName, FName ConstantName, FVector Value);
```

OverrideSystemUserVariableSkeletalMeshComponent

### static void Niagara::OverrideSystemUserVariableSkeletalMeshComponent

```
static void Niagara::OverrideSystemUserVariableSkeletalMeshComponent(
```

UNiagaraComponent 	NiagaraSystem,

## Members

### FString 	OverrideName,

```
USkeletalMeshComponent 	SkeletalMeshComponent
```

)

### Sets a Niagara StaticMesh parameter by name, overriding locally if necessary.

```
Sets a Niagara StaticMesh parameter by name, overriding locally if necessary.
```

OverrideSystemUserVariableStaticMesh

### static void Niagara::OverrideSystemUserVariableStaticMesh

```
static void Niagara::OverrideSystemUserVariableStaticMesh(UNiagaraComponent NiagaraSystem, FString OverrideName, UStaticMesh StaticMesh)
```

OverrideSystemUserVariableStaticMeshComponent

### static void Niagara::OverrideSystemUserVariableStaticMeshComponent

```
static void Niagara::OverrideSystemUserVariableStaticMeshComponent(
```

UNiagaraComponent 	NiagaraSystem,

### FString 	OverrideName,

```
UStaticMeshComponent 	StaticMeshComponent
```

)

### Sets a Niagara StaticMesh parameter by name, overriding locally if necessary.

```
Sets a Niagara StaticMesh parameter by name, overriding locally if necessary.
```

ReleaseNiagaraGPURayTracedCollisionGroup

### static void Niagara::ReleaseNiagaraGPURayTracedCollisionGroup

```
static void Niagara::ReleaseNiagaraGPURayTracedCollisionGroup(int CollisionGroup)
```

Releases a collision group back to the system for use by ohers.

### SetActorNiagaraGPURayTracedCollisionGroup

```
static void Niagara::SetActorNiagaraGPURayTracedCollisionGroup(AActor Actor, int CollisionGroup)
```

Sets the Niagara GPU ray traced collision group for all primitive components on the given actor.

### SetComponentNiagaraGPURayTracedCollisionGroup

```
static void Niagara::SetComponentNiagaraGPURayTracedCollisionGroup(
```

UPrimitiveComponent 	Primitive,

### int 	CollisionGroup

```
int 	CollisionGroup
```

)

### Sets the Niagara GPU ray traced collision group for the give primitive component.

```
Sets the Niagara GPU ray traced collision group for the give primitive component.
```

AcquireNiagaraGPURayTracedCollisionGroup

### static int Niagara::AcquireNiagaraGPURayTracedCollisionGroup

```
static int Niagara::AcquireNiagaraGPURayTracedCollisionGroup()
```

Returns a free collision group for use in HWRT collision group filtering. Returns -1 on failure.

### SetTexture2DArrayObject

```
static void Niagara::SetTexture2DArrayObject(UNiagaraComponent NiagaraSystem, FString OverrideName, UTexture2DArray Texture)
```

Overrides the 2D Array Texture for a Niagara 2D Array Texture Data Interface User Parameter.

### SetTextureObject

```
static void Niagara::SetTextureObject(UNiagaraComponent NiagaraSystem, FString OverrideName, UTexture Texture)
```

Overrides the Texture Object for a Niagara Texture Data Interface User Parameter.

### SetVolumeTextureObject

```
static void Niagara::SetVolumeTextureObject(UNiagaraComponent NiagaraSystem, FString OverrideName, UVolumeTexture Texture)
```

Overrides the Volume Texture for a Niagara Volume Texture Data Interface User Parameter.

### SpawnSystemAtLocation

```
static UNiagaraComponent Niagara::SpawnSystemAtLocation(
```

UNiagaraSystem 	SystemTemplate,

### FVector 	Location,

```
FVector Location, FRotator Rotation = FRotator(),
```

FVector 	Scale	 = 	FVector ( 1.000000 , 1.000000 , 1.000000 ),

bool 	bAutoDestroy	 = 	true,

bool 	bAutoActivate	 = 	true,

ENCPoolMethod 	PoolingMethod	 = 	ENCPoolMethod :: None,

bool 	bPreCullCheck	 = 	true

)

Spawns a Niagara System at the specified world location/rotation

**Returns**

The spawned UNiagaraComponent

SpawnSystemAtLocationWithParams
static UNiagaraComponent Niagara::SpawnSystemAtLocationWithParams(

FFXSystemSpawnParameters& 	SpawnParams

)
SpawnSystemAttached
static UNiagaraComponent Niagara::SpawnSystemAttached(

UNiagaraSystem 	SystemTemplate,
USceneComponent 	AttachToComponent,
FName 	AttachPointName,
FVector 	Location,
FRotator 	Rotation,
EAttachLocation 	LocationType,
bool 	bAutoDestroy,
bool 	bAutoActivate	 = 	true,
ENCPoolMethod 	PoolingMethod	 = 	ENCPoolMethod :: None,
bool 	bPreCullCheck	 = 	true

)
SpawnSystemAttachedWithParams
static UNiagaraComponent Niagara::SpawnSystemAttachedWithParams(

FFXSystemSpawnParameters& 	SpawnParams

)
