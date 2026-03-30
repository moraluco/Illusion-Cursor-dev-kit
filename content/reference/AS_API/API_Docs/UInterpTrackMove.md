# UInterpTrackMove

**Visibility:** public

## Inheritance

UInterpTrack → UInterpTrackMove

## Description

Track containing data for moving an actor around over time.

## INTERPTRACKMOVE

### LinCurveTension

```
float32 LinCurveTension
```

Controls the tightness of the curve for the translation path.

### AngCurveTension

```
float32 AngCurveTension
```

Controls the tightness of the curve for the rotation path.

### RotMode

```
EInterpTrackMoveRotMode RotMode
```
### LookAtGroupName

```
FName LookAtGroupName
```

When using IMR_LookAtGroup, specifies the Group which this track should always point its actor at.

---

## FUNCTIONS

### SetbShowArrowAtKeys

```
void SetbShowArrowAtKeys(bool Value)
```

SetbDisableMovement

### void SetbDisableMovement

```
void SetbDisableMovement(bool Value)
```

SetbShowTranslationOnCurveEd

### void SetbShowTranslationOnCurveEd

```
void SetbShowTranslationOnCurveEd(bool Value)
```

SetbShowRotationOnCurveEd

### void SetbShowRotationOnCurveEd

```
void SetbShowRotationOnCurveEd(bool Value)
```

SetbHide3DTrack

### void SetbHide3DTrack

```
void SetbHide3DTrack(bool Value)
```

SetbUseQuatInterpolation

### void SetbUseQuatInterpolation

```
void SetbUseQuatInterpolation(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterpTrackMove::StaticClass()
```
