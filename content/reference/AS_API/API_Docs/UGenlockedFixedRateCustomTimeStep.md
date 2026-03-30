# UGenlockedFixedRateCustomTimeStep

**Visibility:** public

## Inheritance

UGenlockedCustomTimeStep → UGenlockedFixedRateCustomTimeStep

## Description

Control the Engine TimeStep via a fixed frame rate.

Philosophy

Quantized increments but keeping up with platform time.

FApp::GetDeltaTime

Forced to a multiple of the desired FrameTime.

FApp::GetCurrentTime

Incremented in multiples of the desired FrameTime.

Corresponds to platform time minus any fractional FrameTime.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGenlockedFixedRateCustomTimeStep::StaticClass()
```
