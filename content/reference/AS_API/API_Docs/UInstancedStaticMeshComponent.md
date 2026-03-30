# UInstancedStaticMeshComponent

**Visibility:** public

## Inheritance

UStaticMeshComponent → UInstancedStaticMeshComponent → UHierarchicalInstancedStaticMeshComponent

## Description

A component that efficiently renders multiple instances of the same StaticMesh.

## COMPONENTS \| INSTANCEDSTATICMESH

InstanceCount

### InstanceCount

```
const int InstanceCount
```

Get the number of instances in this component.

---

## CULLING

### InstanceStartCullDistance

```
int InstanceStartCullDistance
```

Distance from camera at which each instance begins to fade out.

### InstanceEndCullDistance

```
int InstanceEndCullDistance
```

Distance from camera at which each instance completely fades out.

---

## INSTANCEDSTATICMESHCOMPONENT

### InstancingRandomSeed

```
int InstancingRandomSeed
```

Value used to seed the random number stream that generates random numbers for each of this mesh's instances.  The random number is stored in a buffer accessible to materials through the PerInstanceRandom expression. If this is set to zero (default), it will be populated automatically by the editor.

---

## INSTANCES

### PerInstanceSMCustomData

```
TArray<float32> PerInstanceSMCustomData
```

Array of custom data for instances. This will contains NumCustomDataFloats*InstanceCount entries. The entries are represented sequantially, in instance order. Can be read in a material and manipulated through Blueprints.  Example: If NumCustomDataFloats is 1, then each entry will belong to an instance. Custom data 0 will belong to Instance 0. Custom data 1 will belong to Instance 1 etc.  Example: If NumCustomDataFloats is 2, then each pair of sequential entries belong to an instance. Custom data 0 and 1 will belong to Instance 0. Custom data 2 and 3 will belong to Instance 2 etc.

### NumCustomDataFloats

```
int NumCustomDataFloats
```

Defines the number of floats that will be available per instance for custom data

### PerInstanceSMData

```
TArray<FInstancedStaticMeshInstanceData> PerInstanceSMData
```

Array of instances, bulk serialized.

---

## COMPONENTS \| INSTANCEDSTATICMESH

### IsValidInstance

```
bool IsValidInstance(int InstanceIndex)const
```

Does the given index map to a valid instance in this component?

### AddInstances

```
TArray<int> AddInstances(TArray<FTransform> InstanceTransforms, bool bShouldReturnIndices, bool bWorldSpace = false)
```

Add multiple instances to this component. Transform is given in local space of this component unless bWorldSpace is set.

### BatchUpdateInstancesTransform

```
bool BatchUpdateInstancesTransform(int StartInstanceIndex, int NumInstances, FTransform NewInstancesTransform, bool bWorldSpace = false, bool bMarkRenderStateDirty = false, bool bTeleport = false)
```

Update the transform for a number of instances.

**Parameters**

StartInstanceIndex
int

The starting index of the instances to update

NumInstances
int

The number of instances to update

NewInstancesTransform
FTransform

The new transform

bWorldSpace
bool

If true, the new transform is interpreted as a World Space transform, otherwise it is interpreted as Local Space

bMarkRenderStateDirty
bool

If true, the change should be visible immediately. If you are updating many instances you should only set this to true for the last instance.

bTeleport
bool

Whether or not the instances physics should be moved normally, or teleported (moved instantly, ignoring velocity).

**Returns**

True on success.

BatchUpdateInstancesTransforms
bool BatchUpdateInstancesTransforms(
int 	StartInstanceIndex,
TArray<FTransform> 	NewInstancesTransforms,
bool 	bWorldSpace	 = 	false,
bool 	bMarkRenderStateDirty	 = 	false,
bool 	bTeleport	 = 	false
	)

Update the transform for an array of instances.

**Parameters**

StartInstanceIndex
int

The starting index of the instances to update

NewInstancesTransforms
TArray<FTransform>

The new transforms

bWorldSpace
bool

If true, the new transforms are interpreted as a World Space transform, otherwise it is interpreted as Local Space

bMarkRenderStateDirty
bool

If true, the change should be visible immediately. If you are updating many instances you should only set this to true for the last instance.

bTeleport
bool

Whether or not the instances physics should be moved normally, or teleported (moved instantly, ignoring velocity).

**Returns**

True on success.

ClearInstances
void ClearInstances()

Clear all instances being rendered by this component.

GetInstanceCount
int GetInstanceCount() const

Get the number of instances in this component.

GetInstancesOverlappingBox
TArray<int> GetInstancesOverlappingBox(
FBox 	Box,
bool 	bBoxInWorldSpace	 = 	true
	) const

Returns the instances with instance bounds overlapping the specified box. The return value is an array of instance indices.

GetInstancesOverlappingSphere
TArray<int> GetInstancesOverlappingSphere(
FVector 	Center,
float32 	Radius,
bool 	bSphereInWorldSpace	 = 	true
	) const

Returns the instances with instance bounds overlapping the specified sphere. The return value is an array of instance indices.

GetInstanceTransform
bool GetInstanceTransform(
int 	InstanceIndex,
FTransform& 	OutInstanceTransform,
bool 	bWorldSpace	 = 	false
	) const

Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set.  Returns True on success.

AddInstance
int AddInstance(
FTransform 	InstanceTransform,
bool 	bWorldSpace	 = 	false
	)

Add an instance to this component. Transform is given in local space of this component unless bWorldSpace is set.

RemoveInstance
bool RemoveInstance(
int 	InstanceIndex
	)

Remove the instance specified. Returns True on success.

RemoveInstances
bool RemoveInstances(
TArray<int> 	InstancesToRemove
	)

Remove the instances specified. Returns True on success.

SetCullDistances
void SetCullDistances(
int 	StartCullDistance,
int 	EndCullDistance
	)

Sets the fading start and culling end distances for this component.

SetCustomDataValue
bool SetCustomDataValue(
int 	InstanceIndex,
int 	CustomDataIndex,
float32 	CustomDataValue,
bool 	bMarkRenderStateDirty	 = 	false
	)

Update custom data for specific instance

UpdateInstanceTransform
bool UpdateInstanceTransform(
int 	InstanceIndex,
FTransform 	NewInstanceTransform,
bool 	bWorldSpace	 = 	false,
bool 	bMarkRenderStateDirty	 = 	false,
bool 	bTeleport	 = 	false
	)

Update the transform for the instance specified.

**Parameters**

InstanceIndex
int

The index of the instance to update

NewInstanceTransform
FTransform

The new transform

bWorldSpace
bool

If true, the new transform is interpreted as a World Space transform, otherwise it is interpreted as Local Space

bMarkRenderStateDirty
bool

If true, the change should be visible immediately. If you are updating many instances you should only set this to true for the last instance.

bTeleport
bool

Whether or not the instance's physics should be moved normally, or teleported (moved instantly, ignoring velocity).

**Returns**

True on success.

STATIC FUNCTIONS
Get
static UInstancedStaticMeshComponent UInstancedStaticMeshComponent::Get(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
GetOrCreate
static UInstancedStaticMeshComponent UInstancedStaticMeshComponent::GetOrCreate(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
Create
static UInstancedStaticMeshComponent UInstancedStaticMeshComponent::Create(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
StaticClass
static UClass UInstancedStaticMeshComponent::StaticClass()
