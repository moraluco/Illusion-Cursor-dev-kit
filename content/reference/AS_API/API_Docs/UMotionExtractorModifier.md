# UMotionExtractorModifier

**Visibility:** public

## Inheritance

UAnimationModifier → UMotionExtractorModifier

## Description

Extracts motion from a bone in the animation and bakes it into a curve

## SETTINGS

### MathOperation

```
EMotionExtractor_MathOperation MathOperation
```

Optional math operation to apply on the extracted value before add it to the generated curve

### MotionType

```
EMotionExtractor_MotionType MotionType
```

Type of motion to extract

### Axis

```
EMotionExtractor_Axis Axis
```

Axis to get the value from

### bComponentSpace

```
bool bComponentSpace
```

Whether to extract the bone pose in component space or local space

### bAbsoluteValue

```
bool bAbsoluteValue
```

Whether to convert the final value to absolute (positive)

### BoneName

```
FName BoneName
```

Bone we are going to generate the curve from

### Modifier

```
float32 Modifier
```

Right operand for the math operation selected

### SampleRate

```
int SampleRate
```

Rate used to sample the animation

### bUseCustomCurveName

```
bool bUseCustomCurveName
```

Whether we want to specify a custom name for the curve. If false, the name of the curve will be auto generated based on the data we are going to extract

### CustomCurveName

```
FName CustomCurveName
```

Custom name for the curve we are going to generate.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMotionExtractorModifier::StaticClass()
```
