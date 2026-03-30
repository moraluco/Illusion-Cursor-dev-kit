# UParticleModuleTypeDataBeam2

**Visibility:** public

## Inheritance

UParticleModuleTypeDataBase → UParticleModuleTypeDataBeam2 → BEAM → InterpolationPoints

## Description

int InterpolationPoints

Indicates whether the beam should be interpolated.  <= 0 --> no

0 --> yes (and is equal to the number of interpolation steps that should be taken. TextureTile int TextureTile

The number of times to tile the texture along each beam.  Overridden by TextureTilingDistance if it is > 0.0.  1st UV set only. 2nd UV set does not Tile.

TextureTileDistance float32 TextureTileDistance

The distance per texture tile.  1st UV set only. 2nd UV set does not Tile.

Sheets int Sheets

The number of sheets to render

MaxBeamCount int MaxBeamCount

The number of live beams

Speed float32 Speed

The speed at which the beam should move from source to target when firing up.  '0' indicates instantaneous

BeamMethod EBeam2Method BeamMethod

The method with which to form the beam(s). Must be one of the following: PEB2M_Distance  - Use the distance property to emit a beam along the X-axis of the emitter.  PEB2M_Target  - Emit a beam from the source to the supplied target.  PEB2M_Branch  - Currently unimplemented.

UpVectorStepSize int UpVectorStepSize

The approach to use for determining the Up vector(s) for the beam.

0 indicates that the Up FVector should be calculated at EVERY point in the beam.  1 indicates a single Up FVector should be determined at the start of the beam and used at every point.  N indicates an Up FVector should be calculated every N points of the beam and interpolated between them.  [NOTE: This mode is currently unsupported.]

## BRANCHING

### BranchParentName

```
FName BranchParentName
```

The name of the emitter to branch from (if mode is PEB2M_Branch) MUST BE IN THE SAME PARTICLE SYSTEM!

---

## DISTANCE

### Distance

```
FRawDistributionFloat Distance
```

The distance along the X-axis to stretch the beam Distance is only used if BeamMethod is PEB2M_Distance

---

## TAPER

### TaperFactor

```
FRawDistributionFloat TaperFactor
```

Tapering factor, 0 = source of beam, 1 = target

### TaperScale

```
FRawDistributionFloat TaperScale
```

Tapering scaling This is intended to be either a constant, uniform or a ParticleParam.  If a curve is used, 0/1 mapping of source/target... which could be integrated into the taper factor itself, and therefore makes no sense.

### TaperMethod

```
EBeamTaperMethod TaperMethod
```
### mode

```
Tapering mode
```

one of the following:

PEBTM_None

### applied

```
No tapering is applied
```

PEBTM_Full

Taper the beam relative to source-->target, regardless of current beam length

### PEBTM_Partial

```
PEBTM_Partial
```

Taper the beam relative to source-->location, 0=source,1=endpoint

---

## FUNCTIONS

### SetRenderGeometry

```
void SetRenderGeometry(bool Value)
```

SetRenderDirectLine

### void SetRenderDirectLine

```
void SetRenderDirectLine(bool Value)
```

SetRenderLines

### void SetRenderLines

```
void SetRenderLines(bool Value)
```

SetRenderTessellation

### void SetRenderTessellation

```
void SetRenderTessellation(bool Value)
```

SetbAlwaysOn

### void SetbAlwaysOn

```
void SetbAlwaysOn(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleTypeDataBeam2::StaticClass()
```
