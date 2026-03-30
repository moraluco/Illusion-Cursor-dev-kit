# UMovieScene3DConstraintSection

**Visibility:** public

## Inheritance

UMovieSceneSection → UMovieScene3DConstraintSection → UMovieScene3DAttachSection → UMovieScene3DPathSection

## Description

Base class for 3D constraint section

## SECTION

### ConstraintBindingID

```
FMovieSceneObjectBindingID ConstraintBindingID
```

The constraint binding that this movie Constraint uses

---

## SEQUENCER \| SECTION

### SetConstraintBindingID

```
void SetConstraintBindingID(FMovieSceneObjectBindingID InConstraintBindingID)
```

Sets the constraint binding for this Constraint section

### GetConstraintBindingID

```
const FMovieSceneObjectBindingID& GetConstraintBindingID()const
```

Gets the constraint binding for this Constraint section

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieScene3DConstraintSection::StaticClass()
```
