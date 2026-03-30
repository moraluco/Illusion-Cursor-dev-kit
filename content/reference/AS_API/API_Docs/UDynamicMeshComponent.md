# UDynamicMeshComponent

**Visibility:** public

## Inheritance

UBaseDynamicMeshComponent → UDynamicMeshComponent

## Description

UDynamicMeshComponent is a mesh component similar to UProceduralMeshComponent, except it bases the renderable geometry off an internal UDynamicMesh instance (which encapsulates a FDynamicMesh3).

There is extensive support for partial updates to render buffers, customizing colors, internally decomposing the mesh into separate chunks for more efficient render updates, and support for attaching a 'Postprocessor' to generate a render mesh on-the-fly See comment sections below for details.

DYNAMIC MESH COMPONENT|COLLISION bEnableComplexCollision bool bEnableComplexCollision

If true, current mesh will be used as Complex Collision source mesh.  This is independent of the CollisionType setting, ie, even if Complex collision is enabled, if this is false, then the Complex Collision mesh will be empty

bDeferCollisionUpdates bool bDeferCollisionUpdates

If true, updates to the mesh will not result in immediate collision regeneration. Useful when the mesh will be modified multiple times before collision is needed.

CollisionType ECollisionTraceFlag CollisionType

Type of Collision Geometry to use for this Mesh

## VARIABLES

### TangentsType

```
EDynamicMeshComponentTangentsMode TangentsType
```

How should Tangents be calculated/handled

### DYNAMIC MESH COMPONENT

```
DYNAMIC MESH COMPONENT SetTangentsType void SetTangentsType(EDynamicMeshComponentTangentsMode NewTangentsType)
```

EnableComplexAsSimpleCollision

### void EnableComplexAsSimpleCollision

```
void EnableComplexAsSimpleCollision()
```

calls SetComplexAsSimpleCollisionEnabled(true, true)

### GetTangentsType

```
EDynamicMeshComponentTangentsMode GetTangentsType()const
```

SetComplexAsSimpleCollisionEnabled

### void SetComplexAsSimpleCollisionEnabled

```
void SetComplexAsSimpleCollisionEnabled(bool bEnabled, bool bImmediateUpdate = true)
```

If bEnabled=true, sets bEnableComplexCollision=true and CollisionType=CTF_UseComplexAsSimple If bEnabled=true, sets bEnableComplexCollision=false and CollisionType=CTF_UseDefault

**Parameters**

bImmediateUpdate
bool

if true, UpdateCollision(true) is called

SetDeferredCollisionUpdatesEnabled
void SetDeferredCollisionUpdatesEnabled(
bool 	bEnabled,
bool 	bImmediateUpdate	 = 	true
	)

Set value of bDeferCollisionUpdates, when enabled, collision is not automatically recomputed each time the mesh changes.

**Parameters**

bImmediateUpdate
bool

if true, UpdateCollision(true) is called if bEnabled=false, ie to force a collision rebuild

SetDynamicMesh
void SetDynamicMesh(
UDynamicMesh 	NewMesh
	)

Set the child UDynamicMesh. This can be used to 'share' a UDynamicMesh between Component instances.  @warning Currently this is somewhat risky, it is on the caller/clients to make sure that the actual mesh is not being simultaneously modified on multiple threads

ConfigureMaterialSet
void ConfigureMaterialSet(
TArray<UMaterialInterface> 	NewMaterialSet
	)

Set new list of Materials for the Mesh. Dynamic Mesh Component does not have Slot Names, so the size of the Material Set should be the same as the number of different Material IDs on the mesh MaterialID attribute

UpdateCollision
void UpdateCollision(
bool 	bOnlyIfPending	 = 	true
	)

Force an update of the Collision/Physics data for this Component.

**Parameters**

bOnlyIfPending
bool

only update if a collision update is pending, ie the underlying DynamicMesh changed and bDeferCollisionUpdates is enabled

ValidateMaterialSlots
bool ValidateMaterialSlots(
bool 	bCreateIfMissing	 = 	true,
bool 	bDeleteExtraSlots	 = 	true
	)

Compute the maximum MaterialID on the DynamicMesh, and ensure that Material Slots match.  Pass both arguments as false to just do a check.

**Parameters**

bCreateIfMissing
bool

if true, add extra (empty) Material Slots to match max MaterialID

bDeleteExtraSlots
bool

if true, extra Material Slots beyond max MaterialID are removed

**Returns**

true if at the end of this function, Material Slot Count == Max MaterialID

STATIC FUNCTIONS
Get
static UDynamicMeshComponent UDynamicMeshComponent::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UDynamicMeshComponent UDynamicMeshComponent::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UDynamicMeshComponent UDynamicMeshComponent::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UDynamicMeshComponent::StaticClass()
