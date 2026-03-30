# UBaseDynamicMeshComponent

**Visibility:** public

## Inheritance

UMeshComponent → UBaseDynamicMeshComponent → UDynamicMeshComponent → UOctreeDynamicMeshComponent

## Description

UBaseDynamicMeshComponent is a base interface for a UMeshComponent based on a UDynamicMesh.

## Members

### COMPONENT

```
DYNAMIC MESH COMPONENT
```
### EnableWireframeRenderPass

```
bool EnableWireframeRenderPass
```
### ViewModeOverridesEnabled

```
bool ViewModeOverridesEnabled
```
### DynamicMesh

```
const UDynamicMesh DynamicMesh
```
### EnableRaytracing

```
bool EnableRaytracing
```
### SecondaryBuffersVisibility

```
bool SecondaryBuffersVisibility ShadowsEnabled bool ShadowsEnabled DYNAMIC MESH COMPONENT|RENDERING bEnableViewModeOverrides bool bEnableViewModeOverrides
```

This flag controls whether Editor View Mode Overrides are enabled for this mesh. For example, this controls hidden-line removal on the wireframe in Wireframe View Mode, and whether the normal map will be disabled in Lighting-Only View Mode, as well as various other things.  Use SetViewModeOverridesEnabled() to control this setting in Blueprints/C++.

### bEnableRaytracing

```
bool bEnableRaytracing
```

Enable/disable Raytracing support on this Mesh, if Raytracing is currently enabled in the Project Settings.  Use SetEnableRaytracing() to configure this flag in Blueprints/C++.

### bExplicitShowWireframe

```
bool bExplicitShowWireframe
```

If true, render the Wireframe on top of the Shaded Mesh

---

## VARIABLES

### SecondaryRenderMaterial

```
UMaterialInterface SecondaryRenderMaterial DYNAMIC MESH COMPONENT SetEnableRaytracing void SetEnableRaytracing(bool bSetEnabled)
```

Enable/Disable raytracing support. This is an expensive call as it flushes the rendering queue and forces an immediate rebuild of the SceneProxy.

### ClearSecondaryRenderMaterial

```
void ClearSecondaryRenderMaterial()
```

Clear any active secondary render material

### GetDynamicMesh

```
UDynamicMesh GetDynamicMesh()
```

**Returns**

the child UDynamicMesh

GetEnableRaytracing
bool GetEnableRaytracing() const

**Returns**

true if raytracing support is currently enabled

GetEnableWireframeRenderPass
bool GetEnableWireframeRenderPass() const

**Returns**

true if wireframe rendering pass is enabled

GetOverrideRenderMaterial
UMaterialInterface GetOverrideRenderMaterial(
int 	MaterialIndex
	) const

**Returns**

active override render material for the given MaterialIndex

GetSecondaryBuffersVisibility
bool GetSecondaryBuffersVisibility() const

**Returns**

true if secondary buffers are currently set to be visible

GetSecondaryRenderMaterial
UMaterialInterface GetSecondaryRenderMaterial() const

**Returns**

active secondary render material

GetShadowsEnabled
bool GetShadowsEnabled() const
GetViewModeOverridesEnabled
bool GetViewModeOverridesEnabled() const
HasOverrideRenderMaterial
bool HasOverrideRenderMaterial(
int 	k
	) const

**Returns**

true if an override render material is currently enabled for the given MaterialIndex

ClearOverrideRenderMaterial
void ClearOverrideRenderMaterial()

Clear any active override render material

SetEnableWireframeRenderPass
void SetEnableWireframeRenderPass(
bool 	bEnable
	)

Configure whether wireframe rendering is enabled or not

SetOverrideRenderMaterial
void SetOverrideRenderMaterial(
UMaterialInterface 	Material
	)

Set an active override render material. This should replace all materials during rendering.

SetSecondaryBuffersVisibility
void SetSecondaryBuffersVisibility(
bool 	bSetVisible
	)

Show/Hide the secondary triangle buffers. Does not invalidate SceneProxy.

SetSecondaryRenderMaterial
void SetSecondaryRenderMaterial(
UMaterialInterface 	Material
	)

Set an active secondary render material.

SetShadowsEnabled
void SetShadowsEnabled(
bool 	bEnabled
	)
SetViewModeOverridesEnabled
void SetViewModeOverridesEnabled(
bool 	bEnabled
	)
STATIC FUNCTIONS
Get
static UBaseDynamicMeshComponent UBaseDynamicMeshComponent::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UBaseDynamicMeshComponent UBaseDynamicMeshComponent::GetOrCreate(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
Create
static UBaseDynamicMeshComponent UBaseDynamicMeshComponent::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UBaseDynamicMeshComponent::StaticClass()
