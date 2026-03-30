# UFbxSceneImportOptions

**Visibility:** public

## Inheritance

UObject → UFbxSceneImportOptions

## Description

Fbx_AddToBlueprint UMETA(DisplayName = "Add to an existing Blueprint asset"),

## IMPORTOPTIONS

### HierarchyType

```
EFBXSceneOptionsCreateHierarchyType HierarchyType
```

Choose if you want to generate the scene hierarchy with normal level actors, one actor with multiple components, or one blueprint asset with multiple components.

---

## MESHES

### bBakePivotInVertex

```
bool bBakePivotInVertex
```

Experimental

### If this option is true the inverse node pivot will be apply to the mesh vertices. The pivot from the DCC will then be the origin of the mesh. This option only work with static meshes.

```
If this option is true the inverse node pivot will be apply to the mesh vertices. The pivot from the DCC will then be the origin of the mesh. This option only work with static meshes.
```

---

## FUNCTIONS

### SetbImportAsDynamic

```
void SetbImportAsDynamic(bool Value)
```

SetbForceFrontXAxis

### void SetbForceFrontXAxis

```
void SetbForceFrontXAxis(bool Value)
```

SetbImportStaticMeshLODs

### void SetbImportStaticMeshLODs

```
void SetbImportStaticMeshLODs(bool Value)
```

SetbImportSkeletalMeshLODs

### void SetbImportSkeletalMeshLODs

```
void SetbImportSkeletalMeshLODs(bool Value)
```

SetbInvertNormalMaps

### void SetbInvertNormalMaps

```
void SetbInvertNormalMaps(bool Value)
```

SetbCreateContentFolderHierarchy

### void SetbCreateContentFolderHierarchy

```
void SetbCreateContentFolderHierarchy(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFbxSceneImportOptions::StaticClass()
```
