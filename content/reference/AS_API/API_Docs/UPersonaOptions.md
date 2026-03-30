# UPersonaOptions

**Visibility:** public

## Inheritance

UObject → UPersonaOptions

## Description

ASSET BROWSER NumFolderFiltersInAssetBrowser uint NumFolderFiltersInAssetBrowser

The number of folder filters to allow at any one time in the animation tool's asset browser

## Members

### MONTAGES

```
COMPOSITES AND MONTAGES
```
### BranchingPointTimingNodeColor

```
FLinearColor BranchingPointTimingNodeColor
```
### SectionTimingNodeColor

```
FLinearColor SectionTimingNodeColor NotifyTimingNodeColor FLinearColor NotifyTimingNodeColor MESH bAllowMeshSectionSelection bool bAllowMeshSectionSelection
```

Whether or not Skeletal Mesh Section selection should be enabled by default for the Animation Editor(s)

PREVIEW SCENE|ADDITIONALMESH

### bAllowPreviewMeshCollectionsToUseCustomAnimBP

```
bool bAllowPreviewMeshCollectionsToUseCustomAnimBP
```
### bAllowPreviewMeshCollectionsToSelectFromDifferentSkeletons

```
bool bAllowPreviewMeshCollectionsToSelectFromDifferentSkeletons
```
### TREE

```
SKELETON TREE
```
### bHideParentsWhenFiltering

```
bool bHideParentsWhenFiltering
```

Whether to hide parent items when filtering or to display them grayed out

### bExpandTreeOnSelection

```
bool bExpandTreeOnSelection
```

Whether to focus and expand an item's tree recursively based on selection

### bUseInlineSocketEditor

```
bool bUseInlineSocketEditor
```

Whether to use a socket editor that is created in-line inside the skeleton tree, or whether to use the separate details panel

### bFlattenSkeletonHierarchyWhenFiltering

```
bool bFlattenSkeletonHierarchyWhenFiltering
```

Whether to keep the hierarchy or flatten it when searching for bones, sockets etc.

---

## VIEWPORT

### DefaultBoneDrawSelection

```
uint DefaultBoneDrawSelection
```

Index used to determine which Bone Draw Mode should be used by default for the Animation Editor(s)

### DefaultLocalAxesSelection

```
uint DefaultLocalAxesSelection
```

Index used to determine which ViewMode should be used by default for the Animation Editor(s)

### ShowMeshStats

```
int ShowMeshStats
```

Currently Stats can have None, Basic and Detailed. Please refer to EDisplayInfoMode.

---

## FUNCTIONS

### SetbAlwaysOpenAnimationAssetsInNewTab

```
void SetbAlwaysOpenAnimationAssetsInNewTab(bool Value)
```

SetbShowGrid

### void SetbShowGrid

```
void SetbShowGrid(bool Value)
```

SetbHighlightOrigin

### void SetbHighlightOrigin

```
void SetbHighlightOrigin(bool Value)
```

SetbMuteAudio

### void SetbMuteAudio

```
void SetbMuteAudio(bool Value)
```

SetbUseAudioAttenuation

### void SetbUseAudioAttenuation

```
void SetbUseAudioAttenuation(bool Value)
```

SetbAutoAlignFloorToMesh

### void SetbAutoAlignFloorToMesh

```
void SetbAutoAlignFloorToMesh(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPersonaOptions::StaticClass()
```
