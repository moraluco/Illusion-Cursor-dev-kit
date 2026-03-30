# UParticleModuleTrailSource

**Visibility:** public

## Inheritance

UParticleModuleTrailBase → UParticleModuleTrailSource → SOURCE → SourceName

## Description

FName SourceName The name of the source

either the emitter or Actor.

SourceStrength FRawDistributionFloat SourceStrength

The strength of the tangent from the source point for each Trail.

SourceOffsetCount int SourceOffsetCount

SourceOffsetCount The number of source offsets that can be expected to be found on the instance.  These must be named TrailSourceOffset#

SourceOffsetDefaults TArray<FVector> SourceOffsetDefaults

Default offsets from the source(s).  If there are < SourceOffsetCount slots, the grabbing of values will simply wrap.

SelectionMethod EParticleSourceSelectionMethod SelectionMethod

Particle selection method, when using the SourceMethod of Particle.

SourceMethod ETrail2SourceMethod SourceMethod

The source method for the trail.

## FUNCTIONS

### SetbInheritRotation

```
void SetbInheritRotation(bool Value)
```

SetbLockSourceStength

### void SetbLockSourceStength

```
void SetbLockSourceStength(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleTrailSource::StaticClass()
```
