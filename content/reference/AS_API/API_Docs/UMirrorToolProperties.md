# UMirrorToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UMirrorToolProperties → OPTIONS

## Description

bAllowBowtieVertexCreation bool bAllowBowtieVertexCreation

When welding, whether to allow bowtie vertices to be created, or to duplicate the vertex.

bCropAlongMirrorPlaneFirst bool bCropAlongMirrorPlaneFirst

Cut off everything on the back side of the mirror plane before mirroring.

bWeldVerticesOnMirrorPlane bool bWeldVerticesOnMirrorPlane

Weld vertices that lie on the mirror plane. Vertices will not be welded if doing so would give an edge more than two faces, or if they are part of a face in the plane.

PlaneTolerance float PlaneTolerance

Distance (in unscaled mesh space) to allow a point to be from the plane and still consider it "on the mirror plane".

OperationMode EMirrorOperationMode OperationMode

Mode of operation.

bShowPreview bool bShowPreview

Whether to show the preview.

## REPOSITIONOPTIONS

### bButtonsOnlyChangeOrientation

```
bool bButtonsOnlyChangeOrientation
```

If true the "Preset Mirror Directions" buttons only change the plane orientation, not location.

### CtrlClickBehavior

```
EMirrorCtrlClickBehavior CtrlClickBehavior
```

What Ctrl + clicking does to the mirror plane.

---

## TOOLOUTPUTOPTIONS

### SaveMode

```
EMirrorSaveMode SaveMode
```

How to save the result.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMirrorToolProperties::StaticClass()
```
