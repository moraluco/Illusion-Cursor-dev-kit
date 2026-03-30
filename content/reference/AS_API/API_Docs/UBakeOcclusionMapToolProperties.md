# UBakeOcclusionMapToolProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UBakeOcclusionMapToolProperties → OCCLUSIONOUTPUT → MaxDistance

## Description

float32 MaxDistance

Maximum distance for occlusion rays to test for intersections; a value of 0 means infinity

SpreadAngle float32 SpreadAngle

Maximum spread angle in degrees for occlusion rays; for example, 180 degrees will cover the entire hemisphere whereas 90 degrees will only cover the center of the hemisphere down to 45 degrees from the horizon.

BiasAngle float32 BiasAngle

Angle in degrees from the horizon for occlusion rays for which the contribution is attenuated to reduce faceting artifacts.

OcclusionRays int OcclusionRays

Number of occlusion rays per sample

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBakeOcclusionMapToolProperties::StaticClass()
```
