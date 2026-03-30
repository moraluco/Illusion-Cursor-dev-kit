# UInterchangeGenericAssetsPipeline

**Visibility:** public

## Inheritance

UInterchangePipelineBase → UInterchangeGenericAssetsPipeline

## Description

This pipeline is the generic pipeline option for all meshes type and should be call before specialized Mesh pipeline (like generic static mesh or skeletal mesh pipelines) All shared import options between mesh type should be added here.

## COMMON_CATEGORY

### bUseSourceNameForAsset

```
bool bUseSourceNameForAsset
```

If enable and there is only one asset and one source data, we will name the asset like the source data name.

---

## COMMON_MESHES_CATEGORY

### bBakeMeshes

```
bool bBakeMeshes
```

If enable, meshes will be baked with the scene instance hierarchy transform.

### VertexColorImportOption

```
EInterchangeVertexColorImportOption VertexColorImportOption
```

Specify how vertex colors should be imported

### VertexOverrideColor

```
FColor VertexOverrideColor
```

Specify override color in the case that VertexColorImportOption is set to Override

### bImportLods

```
bool bImportLods
```

If enable, meshes LODs will be imported. Note that it required the advanced bBakeMesh property to be enabled.

---

## COMMON_SKELETAL_ANIMATIONS_CATEGORY

### Skeleton

```
USkeleton Skeleton
```

Skeleton to use for imported asset. When importing a skeletal mesh, leaving this as "None" will create a new skeleton. When importing an animation this MUST be specified to import the asset.

---

## MATERIALS_CATEGORY

### bImportMaterials

```
bool bImportMaterials
```

If enable, import the material asset find in the sources.

---

## SKELETAL_MESHES_CATEGORY

### bCombineSkeletalMeshes

```
bool bCombineSkeletalMeshes
```

If enable all translated skinned mesh node will be imported has a one skeletal mesh, note that it can still create several skeletal mesh for each different skeleton root joint.

### bImportSkeletalMeshes

```
bool bImportSkeletalMeshes
```

If enable, import the animation asset find in the sources.

### bImportMorphTargets

```
bool bImportMorphTargets
```

If enable any morph target shape will be imported.

### PhysicsAsset

```
UPhysicsAsset PhysicsAsset
```

If this is set, use this specified PhysicsAsset. If its not set and bCreatePhysicsAsset is false, the importer will not generate or set any physic asset.

### bCreatePhysicsAsset

```
bool bCreatePhysicsAsset
```

If checked, create new PhysicsAsset if it doesn't have it

---

## STATIC_MESHES_CATEGORY

### bCombineStaticMeshes

```
bool bCombineStaticMeshes
```

If enable all translated static mesh node will be imported has a one static mesh.

### bImportStaticMeshes

```
bool bImportStaticMeshes
```

If enable, import the animation asset find in the sources.

---

## TEXTURES_CATEGORY

### bFlipNormalMapGreenChannel

```
bool bFlipNormalMapGreenChannel
```

If enabled, the texture's green channel will be inverted for normal maps.

### FileExtensionsToImportAsLongLatCubemap

```
TSet<FString> FileExtensionsToImportAsLongLatCubemap
```

Specify the files type that should be imported as long/lat cubemap

### bDetectNormalMapTexture

```
bool bDetectNormalMapTexture
```

If enable, after a new import a test will be run to see if the texture is a normal map If the texture is a normal map the SRG, CompressionSettings and LODGroup settings will be adjusted.

### bImportTextures

```
bool bImportTextures
```

If enable, import the material asset find in the sources.

---

## FUNCTIONS

### SetbCreatePhysicsAsset

```
void SetbCreatePhysicsAsset(bool Value)
```

GetbCreatePhysicsAsset

### bool GetbCreatePhysicsAsset

```
bool GetbCreatePhysicsAsset()const STATIC FUNCTIONS
```

StaticClass

### static UClass UInterchangeGenericAssetsPipeline::StaticClass

```
static UClass UInterchangeGenericAssetsPipeline::StaticClass()
```
