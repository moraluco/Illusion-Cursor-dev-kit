# UFbxExportOption

**Visibility:** public

## Inheritance

UObject → UFbxExportOption → ANIMATION

## Description

bExportLocalTime bool bExportLocalTime

If enabled, export sequencer animation in its local time, relative to its master sequence.

MapSkeletalMotionToRoot bool MapSkeletalMotionToRoot

If enable, Map skeletal actor motion to the root bone of the skeleton.

bExportPreviewMesh bool bExportPreviewMesh

If enable, the preview mesh link to the exported animations will be also exported.

## EXPORTER

### bForceFrontXAxis

```
bool bForceFrontXAxis
```

If enabled, export with X axis as the front axis instead of default -Y

### FbxExportCompatibility

```
EFbxExportCompatibility FbxExportCompatibility
```

This will set the fbx sdk compatibility when exporting to fbx file. The default value is 2013

### bASCII

```
bool bASCII
```

If enabled, save as ascii instead of binary

---

## MESH

### VertexColor

```
bool VertexColor
```

If enabled, export vertex color

### LevelOfDetail

```
bool LevelOfDetail
```

If enabled, export the level of detail

---

## SKELETALMESH

### bExportMorphTargets

```
bool bExportMorphTargets
```

If enabled, export the morph targets

---

## STATICMESH

### Collision

```
bool Collision
```

If enabled, export collision

---

## FUNCTIONS

### SetCollision

```
void SetCollision(bool Value)
```

SetbASCII

### void SetbASCII

```
void SetbASCII(bool Value)
```

GetbForceFrontXAxis

### bool GetbForceFrontXAxis

```
bool GetbForceFrontXAxis()const SetbForceFrontXAxis
```

void SetbForceFrontXAxis(

### bool 	Value

```
bool 	Value 	)
```

GetVertexColor

### bool GetVertexColor

```
bool GetVertexColor()const SetVertexColor
```

void SetVertexColor(

### bool 	Value

```
bool 	Value 	)
```

GetLevelOfDetail

### bool GetLevelOfDetail

```
bool GetLevelOfDetail()const SetLevelOfDetail
```

void SetLevelOfDetail(

### bool 	Value

```
bool 	Value 	)
```

GetCollision

### bool GetCollision

```
bool GetCollision()const GetbASCII
```

bool GetbASCII() const

### GetbExportMorphTargets

```
bool GetbExportMorphTargets()const
```

SetbExportMorphTargets

### void SetbExportMorphTargets

```
void SetbExportMorphTargets(bool Value)
```

GetbExportPreviewMesh

### bool GetbExportPreviewMesh

```
bool GetbExportPreviewMesh()const SetbExportPreviewMesh
```

void SetbExportPreviewMesh(

### bool 	Value

```
bool 	Value 	)
```

GetMapSkeletalMotionToRoot

### bool GetMapSkeletalMotionToRoot

```
bool GetMapSkeletalMotionToRoot()const SetMapSkeletalMotionToRoot
```

void SetMapSkeletalMotionToRoot(

### bool 	Value

```
bool 	Value 	)
```

GetbExportLocalTime

### bool GetbExportLocalTime

```
bool GetbExportLocalTime()const SetbExportLocalTime
```

void SetbExportLocalTime(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFbxExportOption::StaticClass()
```
