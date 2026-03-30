# UMovieSceneSubSection

**Visibility:** public

## Inheritance

UMovieSceneSection → UMovieSceneSubSection → UMovieSceneCinematicShotSection → UTemplateSequenceSection → UTestMovieSceneSubSection

## Description

Implements a section in sub-sequence tracks.

## GENERAL

**Parameters**

FMovieSceneSectionParameters Parameters

---

## NETWORKING

### NetworkMask

```
uint8 NetworkMask
```

---

## SEQUENCE

### SubSequence

```
UMovieSceneSequence SubSequence
```

Movie scene being played by this section

---

## SEQUENCER \| SECTION

### Sequence

```
UMovieSceneSequence Sequence
```

Get the sequence that is assigned to this section.

---

## SEQUENCER \| SECTION

### SetSequence

```
void SetSequence(UMovieSceneSequence Sequence)
```

Sets the sequence played by this section.

**Parameters**

Sequence
UMovieSceneSequence

The sequence to play.

GetSequence
UMovieSceneSequence GetSequence() const

Get the sequence that is assigned to this section.

**Returns**

The sequence.

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneSubSection::StaticClass()
