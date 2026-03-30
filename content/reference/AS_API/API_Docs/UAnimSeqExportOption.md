# UAnimSeqExportOption

**Visibility:** public

## Inheritance

UObject → UAnimSeqExportOption → EXPORT

## Description

bExportMorphTargets bool bExportMorphTargets

If enabled, export the morph targets from the animation

bExportAttributeCurves bool bExportAttributeCurves

If enabled, export the attribute curves from the animation

bExportMaterialCurves bool bExportMaterialCurves

If enabled, export the material curves from the animation

bRecordInWorldSpace bool bRecordInWorldSpace

If enabled we record in World Space otherwise we record from 0,0,0

bEvaluateAllSkeletalMeshComponents bool bEvaluateAllSkeletalMeshComponents

If true we evaluate all other skeletal mesh components under the same actor, this may be needed for example, to get physics to get baked

WarmUpFrames FFrameNumber WarmUpFrames

Number of Display Rate frames to evaluate before doing the export. It will evaluate after any Delay. This will use frames before the start frame. Use it if there is some post anim BP effects you want to run before export start time.

DelayBeforeStart FFrameNumber DelayBeforeStart

Number of Display Rate frames to delay at the same frame before doing the export. It will evalaute first, then any warm up, then the export. Use it if there is some post anim BP effects you want to ran repeatedly at the start.

bExportTransforms bool bExportTransforms

If enabled, export the transforms from the animation

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimSeqExportOption::StaticClass()
```
