# UPaperGroupedSpriteComponent

**Visibility:** public

## Inheritance

UMeshComponent → UPaperGroupedSpriteComponent

## Description

A component that handles rendering and collision for many instances of one or more UPaperSprite assets.

### See also

- UPrimitiveComponent, UPaperSprite

## COMPONENTS \| SPRITE

InstanceCount

### InstanceCount

```
const int InstanceCount
```

Get the number of instances in this component

---

## INSTANCES

### PerInstanceSpriteData

```
TArray<FSpriteInstanceData> PerInstanceSpriteData
```

Array of instances

---

## COMPONENTS \| SPRITE

### UpdateInstanceColor

```
bool UpdateInstanceColor(int InstanceIndex, FLinearColor NewInstanceColor, bool bMarkRenderStateDirty = true)
```

Update the color for the instance specified. Returns True on success.

### ClearInstances

```
void ClearInstances()
```

Clear all instances being rendered by this component

### GetInstanceCount

```
int GetInstanceCount()const
```

Get the number of instances in this component

### GetInstanceTransform

```
bool GetInstanceTransform(int InstanceIndex, FTransform& OutInstanceTransform, bool bWorldSpace = false)const
```

Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set.  Returns True on success.

### RemoveInstance

```
bool RemoveInstance(int InstanceIndex)
```

Remove the instance specified. Returns True on success.

### SortInstancesAlongAxis

```
void SortInstancesAlongAxis(FVector WorldSpaceSortAxis)
```

Sort all instances by their world space position along the specified axis

### AddInstance

```
int AddInstance(
```

FTransform 	Transform,

### UPaperSprite 	Sprite,

```
UPaperSprite Sprite, bool bWorldSpace = false, FLinearColor Color = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000)
```

)

Add an instance to this component. Transform can be given either in the local space of this component or world space.

### UpdateInstanceTransform

```
bool UpdateInstanceTransform(int InstanceIndex, FTransform NewInstanceTransform, bool bWorldSpace = false, bool bMarkRenderStateDirty = true, bool bTeleport = false)
```

Update the transform for the instance specified. Instance is given in local space of this component unless bWorldSpace is set.  Returns True on success.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPaperGroupedSpriteComponent UPaperGroupedSpriteComponent::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UPaperGroupedSpriteComponent UPaperGroupedSpriteComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UPaperGroupedSpriteComponent UPaperGroupedSpriteComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UPaperGroupedSpriteComponent::StaticClass()
```
