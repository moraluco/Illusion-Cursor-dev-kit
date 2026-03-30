# UExistingMeshMaterialProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UExistingMeshMaterialProperties

## Description

Standard material property settings for tools that visualize materials on existing meshes (e.g. to help show UVs)

## PREVIEWMATERIAL

### CheckerDensity

```
float32 CheckerDensity
```

Number of checkerboard tiles within the 0 to 1 range; only available when Checkerboard is selected as material mode

### OverrideMaterial

```
UMaterialInterface OverrideMaterial
```

Material to use instead of the original material; only available when Override is selected as material mode

### UVChannel

```
FString UVChannel
```

Which UV channel to use for visualizing the checkerboard material on the mesh; note that this does not affect the preview layout

### MaterialMode

```
ESetMeshMaterialMode MaterialMode
```

Material that will be used on the mesh

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UExistingMeshMaterialProperties::StaticClass()
```
