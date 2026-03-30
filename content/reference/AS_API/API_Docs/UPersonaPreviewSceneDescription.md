# UPersonaPreviewSceneDescription

**Visibility:** public

## Inheritance

UObject → UPersonaPreviewSceneDescription

## Description

ADDITIONAL MESHES AdditionalMeshes TSoftObjectPtr<UDataAsset> AdditionalMeshes

## ANIMATION

### PreviewController

```
TSubclassOf<UPersonaPreviewSceneController> PreviewController
```

The method by which the preview is animated

### BLUEPRINT

```
ANIMATION BLUEPRINT
```
### ApplicationMethod

```
EPreviewAnimationBlueprintApplicationMethod ApplicationMethod
```

The method by which a preview animation blueprint is applied, either as an overlay layer, or as a linked instance

### LinkedAnimGraphTag

```
FName LinkedAnimGraphTag
```

The tag to use when applying a preview animation blueprint via LinkAnimGraphByTag

### PreviewAnimationBlueprint

```
TSoftObjectPtr<UAnimBlueprint> PreviewAnimationBlueprint
```

The preview anim blueprint to use

---

## MESH

### PreviewMesh

```
TSoftObjectPtr<USkeletalMesh> PreviewMesh
```

The preview mesh to use

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPersonaPreviewSceneDescription::StaticClass()
```
