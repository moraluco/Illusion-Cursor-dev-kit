# UStaticMeshComponent

**Visibility:** public

## Inheritance

UMeshComponent → UStaticMeshComponent → UControlPointMeshComponent → UGizmoHandleMeshComponent → UInstancedStaticMeshComponent → UInteractiveFoliageComponent

## Description

and 3 other children

StaticMeshComponent is used to create an instance of a UStaticMesh.  A static mesh is a piece of geometry that consists of a static set of polygons.

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Engine​/Content​/Types​/StaticMeshes​/ @see UStaticMesh

## LIGHTING

### bReverseCulling

```
bool bReverseCulling
```

Controls whether the static mesh component's backface culling should be reversed

### bSortTriangles

```
bool bSortTriangles
```

Enable dynamic sort mesh's triangles to remove ordering issue when rendered with a translucent material

### OverriddenLightMapRes

```
int OverriddenLightMapRes
```

Light map resolution to use on this component, used if bOverrideLightMapRes is true and there is a valid StaticMesh.

### DistanceFieldIndirectShadowMinVisibility

```
float32 DistanceFieldIndirectShadowMinVisibility
```

Controls how dark the dynamic indirect shadow can be.

### DistanceFieldSelfShadowBias

```
float32 DistanceFieldSelfShadowBias
```

Useful for reducing self shadowing from distance field methods when using world position offset to animate the mesh's vertices.

### LightmassSettings

```
FLightmassPrimitiveSettings LightmassSettings
```

The Lightmass settings for this object.

### bOverrideLightMapRes

```
bool bOverrideLightMapRes
```

Whether to override the lightmap resolution defined in the static mesh.

### bOverrideDistanceFieldSelfShadowBias

```
bool bOverrideDistanceFieldSelfShadowBias
```

Whether to override the DistanceFieldSelfShadowBias setting of the static mesh asset with the DistanceFieldSelfShadowBias of this component.

### bCastDistanceFieldIndirectShadow

```
bool bCastDistanceFieldIndirectShadow
```

Whether to use the mesh distance field representation (when present) for shadowing indirect lighting (from lightmaps or skylight) on Movable components.  This works like capsule shadows on skeletal meshes, except using the mesh distance field so no physics asset is required.  The StaticMesh must have 'Generate Mesh Distance Field' enabled, or the project must have 'Generate Mesh Distance Fields' enabled for this feature to work.

---

## LOD

### bOverrideMinLOD

```
bool bOverrideMinLOD
```

Whether to override the MinLOD setting of the static mesh asset with the MinLOD of this component.

### MinLOD

```
int MinLOD
```

Specifies the smallest LOD that will be used for this component.  This is ignored if ForcedLodModel is enabled.

### ForcedLodModel

```
int ForcedLodModel
```

If 0, auto-select LOD level. if >0, force to (ForcedLodModel-1).

---

## RAYTRACING

### bEvaluateWorldPositionOffset

```
bool bEvaluateWorldPositionOffset
```

---

## RENDERING

### WireframeColorOverride

```
FColor WireframeColorOverride
```

Wireframe color to use if bOverrideWireframeColor is true

### bDisallowMeshPaintPerInstance

```
bool bDisallowMeshPaintPerInstance
```

If true, mesh painting is disallowed on this instance. Set if vertex colors are overridden in a construction script.

### bOverrideWireframeColor

```
bool bOverrideWireframeColor
```

If true, WireframeColorOverride will be used. If false, color is determined based on mobility and physics simulation settings

---

## STATICMESH

### StaticMesh

```
UStaticMesh StaticMesh
```

---

## TEXTURESTREAMING

### StreamingDistanceMultiplier

```
float32 StreamingDistanceMultiplier
```

Allows adjusting the desired resolution of streaming textures that uses UV 0.  1.0 is the default, whereas a higher value increases the streamed-in resolution.

### bIgnoreInstanceForTextureStreaming

```
bool bIgnoreInstanceForTextureStreaming
```

Ignore this instance of this static mesh when calculating streaming information.  This can be useful when doing things like applying character textures to static geometry, to avoid them using distance-based streaming.

---

## COMPONENTS \| STATICMESH

### SetStaticMesh

```
bool SetStaticMesh(UStaticMesh NewMesh)
```

Change the StaticMesh used by this instance.

### GetLocalBounds

```
void GetLocalBounds(FVector& Min, FVector& Max)const
```

### Get Local bounds

```
Get Local bounds
```

---

## RAYTRACING

### SetEvaluateWorldPositionOffsetInRayTracing

```
void SetEvaluateWorldPositionOffsetInRayTracing(bool NewValue)
```

---

## RENDERING \| LIGHTING

### SetReverseCulling

```
void SetReverseCulling(bool ReverseCulling)
```

Set forced reverse culling

### SetDistanceFieldSelfShadowBias

```
void SetDistanceFieldSelfShadowBias(float32 NewValue)
```

Sets the component's DistanceFieldSelfShadowBias.  bOverrideDistanceFieldSelfShadowBias must be enabled for this to have an effect.

---

## RENDERING \| LOD

### SetForcedLodModel

```
void SetForcedLodModel(int NewForcedLodModel)
```

---

## FUNCTIONS

### GetStaticMesh

```
UStaticMesh GetStaticMesh()const
```

GetForcedLodModel

### const int& GetForcedLodModel

```
const int& GetForcedLodModel()const GetbEvaluateWorldPositionOffset
```

bool GetbEvaluateWorldPositionOffset() const

### SetbEvaluateWorldPositionOffset

```
void SetbEvaluateWorldPositionOffset(bool Value)
```

GetbOverrideWireframeColor

### bool GetbOverrideWireframeColor

```
bool GetbOverrideWireframeColor()const SetbOverrideWireframeColor
```

void SetbOverrideWireframeColor(

### bool 	Value

```
bool 	Value 	)
```

GetbOverrideMinLOD

### bool GetbOverrideMinLOD

```
bool GetbOverrideMinLOD()const SetbOverrideMinLOD
```

void SetbOverrideMinLOD(

### bool 	Value

```
bool 	Value 	)
```

GetbDisallowMeshPaintPerInstance

### bool GetbDisallowMeshPaintPerInstance

```
bool GetbDisallowMeshPaintPerInstance()const SetbDisallowMeshPaintPerInstance
```

void SetbDisallowMeshPaintPerInstance(

### bool 	Value

```
bool 	Value 	)
```

GetbIgnoreInstanceForTextureStreaming

### bool GetbIgnoreInstanceForTextureStreaming

```
bool GetbIgnoreInstanceForTextureStreaming()const SetbIgnoreInstanceForTextureStreaming
```

void SetbIgnoreInstanceForTextureStreaming(

### bool 	Value

```
bool 	Value 	)
```

GetbOverrideLightMapRes

### bool GetbOverrideLightMapRes

```
bool GetbOverrideLightMapRes()const SetbOverrideLightMapRes
```

void SetbOverrideLightMapRes(

### bool 	Value

```
bool 	Value 	)
```

GetbCastDistanceFieldIndirectShadow

### bool GetbCastDistanceFieldIndirectShadow

```
bool GetbCastDistanceFieldIndirectShadow()const SetbCastDistanceFieldIndirectShadow
```

void SetbCastDistanceFieldIndirectShadow(

### bool 	Value

```
bool 	Value 	)
```

GetbOverrideDistanceFieldSelfShadowBias

### bool GetbOverrideDistanceFieldSelfShadowBias

```
bool GetbOverrideDistanceFieldSelfShadowBias()const SetbOverrideDistanceFieldSelfShadowBias
```

void SetbOverrideDistanceFieldSelfShadowBias(

### bool 	Value

```
bool 	Value 	)
```

SetbUseDefaultCollision

### void SetbUseDefaultCollision

```
void SetbUseDefaultCollision(bool Value)
```

GetbSortTriangles

### bool GetbSortTriangles

```
bool GetbSortTriangles()const SetbSortTriangles
```

void SetbSortTriangles(

### bool 	Value

```
bool 	Value 	)
```

GetbReverseCulling

### bool GetbReverseCulling

```
bool GetbReverseCulling()const SetbReverseCulling
```

void SetbReverseCulling(

### bool 	Value

```
bool 	Value 	)
```

GetDistanceFieldSelfShadowBias

### const float32& GetDistanceFieldSelfShadowBias

```
const float32& GetDistanceFieldSelfShadowBias()const STATIC FUNCTIONS
```

Get

### static UStaticMeshComponent UStaticMeshComponent::Get

```
static UStaticMeshComponent UStaticMeshComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UStaticMeshComponent UStaticMeshComponent::GetOrCreate

```
static UStaticMeshComponent UStaticMeshComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UStaticMeshComponent UStaticMeshComponent::Create

```
static UStaticMeshComponent UStaticMeshComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UStaticMeshComponent::StaticClass

```
static UClass UStaticMeshComponent::StaticClass()
```
