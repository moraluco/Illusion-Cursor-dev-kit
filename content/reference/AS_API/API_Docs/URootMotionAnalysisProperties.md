# URootMotionAnalysisProperties

**Visibility:** public

## Inheritance

UAnalysisProperties → URootMotionAnalysisProperties → ANALYSISPROPERTIES → BoneSocket

## Description

FBoneSocketTarget BoneSocket

The bone or socket used for analysis

Space EAnalysisSpace Space

The space in which to perform the analysis. Fixed will use the analysis bone/socket at the first frame of the analysis time range. Changing will use the analysis bone/socket at the relevant frame during the analysis, but calculate velocities assuming that frame isn't moving. Moving will do the same but velocities as well as positions/rotations will be relative to this moving frame.

SpaceBoneSocket FBoneSocketTarget SpaceBoneSocket

Bone or socket that defines the analysis space (when it isn't World)

CharacterFacingAxis EAnalysisLinearAxis CharacterFacingAxis

World or bone/socket axis that specifies the character's facing direction

CharacterUpAxis EAnalysisLinearAxis CharacterUpAxis

World or bone/socket axis that specifies the character's up direction

StartTimeFraction float32 StartTimeFraction

Fraction through each animation at which analysis starts

EndTimeFraction float32 EndTimeFraction

Fraction through each animation at which analysis ends

FunctionAxis EAnalysisRootMotionAxis FunctionAxis

Axis for the analysis function

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URootMotionAnalysisProperties::StaticClass()
```
