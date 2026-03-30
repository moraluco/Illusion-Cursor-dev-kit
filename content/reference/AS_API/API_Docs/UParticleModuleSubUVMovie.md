# UParticleModuleSubUVMovie

**Visibility:** public

## Inheritance

UParticleModuleSubUV → UParticleModuleSubUVMovie → FLIPBOOK → StartingFrame

## Description

int StartingFrame

The starting image index for the SubUV (1 = the first frame).  Assumes order of Left->Right, Top->Bottom If greater than the last frame, it will clamp to the last one.  If 0, then randomly selects a starting frame.

FrameRate FRawDistributionFloat FrameRate

The frame rate the SubUV images should be 'flipped' thru at.

## FUNCTIONS

### SetbUseEmitterTime

```
void SetbUseEmitterTime(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleSubUVMovie::StaticClass()
```
