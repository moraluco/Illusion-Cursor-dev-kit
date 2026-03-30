# UFractureMeshCutSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureMeshCutSettings → DISTRIBUTION → MinScaleFactor

## Description

float32 MinScaleFactor

Minimum scale factor to apply to cutting meshes. A random scale will be chosen between Min and Max

NumberToScatter int NumberToScatter

Number of meshes to random scatter

GridX int GridX

Number of meshes to add to grid in X

GridY int GridY

Number of meshes to add to grid in Y

GridZ int GridZ

Number of meshes to add to grid in Z

Variability float32 Variability

Magnitude of random displacement to cutting meshes

CutDistribution EMeshCutDistribution CutDistribution

How to arrange the mesh cuts in space

MaxScaleFactor float32 MaxScaleFactor

Maximum scale factor to apply to cutting meshes. A random scale will be chosen between Min and Max

bRandomOrientation bool bRandomOrientation

Whether to randomly vary the orientation of the cutting meshes

RollRange float32 RollRange

Roll will be chosen between -Range and +Range

PitchRange float32 PitchRange

Pitch will be chosen between -Range and +Range

YawRange float32 YawRange

Yaw will be chosen between -Range and +Range

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureMeshCutSettings::StaticClass()
```
