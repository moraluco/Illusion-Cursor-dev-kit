# UEngineCustomTimeStep

**Visibility:** public

## Inheritance

UObject → UEngineCustomTimeStep → UFixedFrameRateCustomTimeStep

## Description

A CustomTimeStep control the Engine Framerate/Timestep.  This will update the FApp::CurrentTime/FApp::DeltaTime.  This is useful when you want the engine to be synchronized with an external clock (genlock).

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEngineCustomTimeStep::StaticClass()
```
