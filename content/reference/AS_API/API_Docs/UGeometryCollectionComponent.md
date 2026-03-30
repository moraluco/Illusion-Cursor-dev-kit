# UGeometryCollectionComponent

**Visibility:** public

## Inheritance

UMeshComponent → UGeometryCollectionComponent

## Description

GeometryCollectionComponent

## CHAOS

### OnChaosRemovalEvent

```
FOnChaosRemovalEvent OnChaosRemovalEvent
```
### OnChaosBreakEvent

```
FOnChaosBreakEvent OnChaosBreakEvent
```
### DesiredCacheTime

```
float32 DesiredCacheTime
```
### CachePlayback

```
bool CachePlayback
```

---

## CHAOSPHYSICS

### RestCollection

```
UGeometryCollection RestCollection
```
### ChaosSolverActor

```
AChaosSolverActor ChaosSolverActor
```

Chaos RBD Solver override. Will use the world's default solver actor if null.

### InitializationFields

```
TArray<TObjectPtr<AFieldSystemActor>> InitializationFields
```

---

## CHAOSPHYSICS \| CLUSTERING

### MaxClusterLevel

```
int MaxClusterLevel
```

Maximum level for cluster breaks.

### DamageThreshold

```
TArray<float32> DamageThreshold
```
### bUseSizeSpecificDamageThreshold

```
bool bUseSizeSpecificDamageThreshold
```

Damage threshold for clusters at different levels.

### EnableClustering

```
bool EnableClustering
```
### ClusterGroupIndex

```
int ClusterGroupIndex
```

Maximum level for cluster breaks.

---

## CHAOSPHYSICS \| COLLISIONS

### CollisionGroup

```
int CollisionGroup
```
### CollisionSampleFraction

```
float32 CollisionSampleFraction
```

Fraction of collision sample particles to keep

---

## CHAOSPHYSICS \| GENERAL

### bNotifyCollisions

```
bool bNotifyCollisions
```

If true, this component will generate collision events that other systems may subscribe to.

### bStoreVelocities

```
bool bStoreVelocities
```

If true, this component will save linear and angular velocities on its DynamicCollection.

### bShowBoneColors

```
bool bShowBoneColors
```

Display Bone Colors instead of assigned materials

### bNotifyTrailing

```
bool bNotifyTrailing
```

If true, this component will generate trailing events that other systems may subscribe to.

### bForceMotionBlur

```
bool bForceMotionBlur
```

If ForceMotionBlur is on, motion blur will always be active, even if the GeometryCollection is at rest.

### ObjectType

```
EObjectStateTypeEnum ObjectType
```

ObjectType defines how to initialize the rigid objects state, Kinematic, Sleeping, Dynamic.

### bNotifyRemovals

```
bool bNotifyRemovals
```

If true, this component will generate removal events that other systems may subscribe to.

### bNotifyBreaks

```
bool bNotifyBreaks
```

If true, this component will generate breaking events that other systems may subscribe to.

CHAOSPHYSICS|INITIAL VELOCITY

### InitialAngularVelocity

```
FVector InitialAngularVelocity
```
### InitialVelocityType

```
EInitialVelocityTypeEnum InitialVelocityType
```
### InitialLinearVelocity

```
FVector InitialLinearVelocity
```

---

## COLLISION

### OnChaosPhysicsCollision

```
FOnChaosPhysicsCollision OnChaosPhysicsCollision
```

---

## GAME \| DAMAGE

### NotifyGeometryCollectionPhysicsStateChange

```
FNotifyGeometryCollectionPhysicsStateChange__GeometryCollectionComponent NotifyGeometryCollectionPhysicsStateChange
```

---

## GAME \| LOADING

### NotifyGeometryCollectionPhysicsLoadingStateChange

```
FNotifyGeometryCollectionPhysicsLoadingStateChange__GeometryCollectionComponent NotifyGeometryCollectionPhysicsLoadingStateChange
```

---

## NETWORK

### bEnableAbandonAfterLevel

```
bool bEnableAbandonAfterLevel
```

Enables use of ReplicationAbandonClusterLevel to stop providing network updates to clients when the updated particle is of a level higher then specified.

### ReplicationAbandonClusterLevel

```
int ReplicationAbandonClusterLevel
```
### replicating

```
If replicating
```

the cluster level to stop sending corrections for geometry collection chunks.  recommended for smaller leaf levels when the size of the objects means they are no longer gameplay relevant to cut down on required bandwidth to update a collection.  @see bEnableAbandonAfterLevel

### bEnableReplication

```
bool bEnableReplication
```

Per-instance override to enable/disable replication for the geometry collection

---

## COLLISION

### PhysicsCollision

```
void PhysicsCollision(FChaosPhysicsCollisionInfo CollisionInfo)
```

---

## FIELD

### ApplyKinematicField

```
void ApplyKinematicField(float32 Radius, FVector Position)
```

SetDynamicState This function will dispatch a command to the physics thread to apply a kinematic to dynamic state change for the geo collection particles within the field.

**Parameters**

Radius
float32

Radial influence from the position

Position
FVector

The location of the command

ApplyPhysicsField
void ApplyPhysicsField(
bool 	Enabled,
EGeometryCollectionPhysicsTypeEnum 	Target,
UFieldSystemMetaData 	MetaData,
UFieldNodeBase 	Field
	)

AddPhysicsField This function will dispatch a command to the physics thread to apply a generic evaluation of a user defined transient field network. See documentation, for examples of how to recreate variations of the above generic fields using field networks

**Parameters**

Enabled
bool

Is this force enabled for evaluation.

Target
EGeometryCollectionPhysicsTypeEnum

Type of field supported by the solver.

MetaData
UFieldSystemMetaData

Meta data used to assist in evaluation

Field
UFieldNodeBase

Base evaluation node for the field network.

---

## PHYSICS

### SetNotifyRemovals

```
void SetNotifyRemovals(bool bNewNotifyRemovals)
```

Changes whether or not this component will get future removal notifications.

### SetNotifyBreaks

```
void SetNotifyBreaks(bool bNewNotifyBreaks)
```

Changes whether or not this component will get future break notifications.

---

## FUNCTIONS

### NetAbandonCluster

```
void NetAbandonCluster(int TransformIndex)
```

Notifies all clients that a server has abandoned control of a particle, clients should restore the strain values on abandoned particles and their children then fracture them before continuing

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UGeometryCollectionComponent UGeometryCollectionComponent::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UGeometryCollectionComponent UGeometryCollectionComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UGeometryCollectionComponent UGeometryCollectionComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UGeometryCollectionComponent::StaticClass()
```
