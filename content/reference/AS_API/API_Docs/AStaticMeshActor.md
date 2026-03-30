# AStaticMeshActor

**Visibility:** public

## Inheritance

AActor → AStaticMeshActor → AInteractiveFoliageActor

## Description

StaticMeshActor is an instance of a UStaticMesh in the world.  Static meshes are geometry that do not animate or otherwise deform, and are more efficient to render than other types of geometry.  Static meshes dragged into the level from the Content Browser are automatically converted to StaticMeshActors.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Engine​/Actors​/StaticMeshActor​/ @see UStaticMesh

## ACTOR

### bStaticMeshReplicateMovement

```
bool bStaticMeshReplicateMovement
```

This static mesh should replicate movement. Automatically sets the RemoteRole and bReplicateMovement flags. Meant to be edited on placed actors (those other two properties are not)

---

## NAVIGATION

### NavigationGeometryGatheringMode

```
ENavDataGatheringMode NavigationGeometryGatheringMode
```

---

## STATICMESHACTOR

### StaticMeshComponent

```
UStaticMeshComponent StaticMeshComponent MOBILITY SetMobility void SetMobility(EComponentMobility InMobility)
```

Function to change mobility type

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AStaticMeshActor AStaticMeshActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AStaticMeshActor::StaticClass

```
static UClass AStaticMeshActor::StaticClass()
```
