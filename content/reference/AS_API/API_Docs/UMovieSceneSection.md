# UMovieSceneSection

**Visibility:** public

## Inheritance

UMovieSceneSignedObject → UMovieSceneSection → UMovieScene2DTransformSection → UMovieScene3DConstraintSection → UMovieScene3DTransformSection → UMovieSceneActorReferenceSection

## Description

and 39 other children

Base class for movie scene sections

## SECTION

### TimecodeSource

```
FMovieSceneTimecodeSource TimecodeSource
```

The timecode at which this movie scene section is based (ie. when it was recorded)

### PreRollFrames

```
int PreRollFrames
```

The amount of time to prepare this section for evaluation before it actually starts.

### PostRollFrames

```
int PostRollFrames
```

The amount of time to continue 'postrolling' this section for after evaluation has ended.

### EvalOptions

```
FMovieSceneSectionEvalOptions EvalOptions
```

---

## SEQUENCER \| SECTION

### CompletionMode

```
EMovieSceneCompletionMode CompletionMode
```

Gets this section's completion mode

---

## VARIABLES

### OverlapPriority

```
int OverlapPriority
```

This section's priority over overlapping sections

### RowIndex

```
int RowIndex
```

The row index that this section sits on

### BlendType

```
FOptionalMovieSceneBlendType BlendType SEQUENCER|SECTION SetCompletionMode void SetCompletionMode(EMovieSceneCompletionMode InCompletionMode)
```

Sets this section's completion mode

### GetCompletionMode

```
EMovieSceneCompletionMode GetCompletionMode()const
```

Gets this section's completion mode

### GetOverlapPriority

```
int GetOverlapPriority()const
```

Gets this section's priority over overlapping sections (higher wins)

### GetPostRollFrames

```
int GetPostRollFrames()const
```

GetPreRollFrames

### int GetPreRollFrames

```
int GetPreRollFrames()const GetRowIndex
```

int GetRowIndex() const

### Gets the row index for this section

```
Gets the row index for this section
```

IsActive

### bool IsActive

```
bool IsActive()const IsLocked
```

bool IsLocked() const

### SetBlendType

```
void SetBlendType(EMovieSceneBlendType InBlendType)
```

Sets this section's blend type

### GetBlendType

```
FOptionalMovieSceneBlendType GetBlendType()const
```

Gets this section's blend type

### SetIsActive

```
void SetIsActive(bool bInIsActive)
```

Whether or not this section is active.

### SetIsLocked

```
void SetIsLocked(bool bInIsLocked)
```

Whether or not this section is locked.

### SetOverlapPriority

```
void SetOverlapPriority(int NewPriority)
```

Sets this section's priority over overlapping sections (higher wins)

### SetPostRollFrames

```
void SetPostRollFrames(int InPostRollFrames)
```

Gets/sets the number of frames to continue 'postrolling' this section for after evaluation has ended.

### SetPreRollFrames

```
void SetPreRollFrames(int InPreRollFrames)
```

Gets the number of frames to prepare this section for evaluation before it actually starts.

### SetRowIndex

```
void SetRowIndex(int NewRowIndex)
```

Sets this section's new row index

---

## FUNCTIONS

### SetbIsLocked

```
void SetbIsLocked(bool Value)
```

SetbIsActive

### void SetbIsActive

```
void SetbIsActive(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneSection::StaticClass()
```
