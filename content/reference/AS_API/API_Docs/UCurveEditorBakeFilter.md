# UCurveEditorBakeFilter

**Visibility:** public

## Inheritance

UCurveEditorFilterBase → UCurveEditorBakeFilter → SETTINGS → BakeIntervalInFrames

## Description

FFrameNumber BakeIntervalInFrames

The interval (in display rate frames) between baked keys. Only used if bUseFrameBake is true.

BakeIntervalInSeconds float32 BakeIntervalInSeconds

The interval (in seconds) between baked keys. Only used if bUseSnapRateForInterval is false.

bUseFrameBake bool bUseFrameBake

If true we will use frame interval to bake, else will use seconds interval

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCurveEditorBakeFilter::StaticClass()
```
