# UParticleModuleLocationDirect

**Visibility:** public

## Inheritance

UParticleModuleLocationBase → UParticleModuleLocationDirect → LOCATION → LocationOffset

## Description

FRawDistributionVector LocationOffset

An offset to apply to the position retrieved from the Location calculation.  The offset is retrieved using the EmitterTime.  The offset will remain constant over the life of the particle.

ScaleFactor FRawDistributionVector ScaleFactor

Scales the velocity of the object at a given point in the time-line.

Direction FRawDistributionVector Direction

Currently unused.

Location FRawDistributionVector Location

The location of the particle at a give time. Retrieved using the particle RelativeTime.  IMPORTANT: the particle location is set to this value, thereby over-writing any previous module impacts.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleLocationDirect::StaticClass()
```
