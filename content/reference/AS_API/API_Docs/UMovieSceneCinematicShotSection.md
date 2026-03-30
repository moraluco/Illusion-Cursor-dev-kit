# UMovieSceneCinematicShotSection

**Visibility:** public

## Inheritance

UMovieSceneSubSection → UMovieSceneCinematicShotSection

## Description

Implements a cinematic shot section.

## VARIABLES

### ShotDisplayName

```
FString ShotDisplayName
```

The Shot's display name

---

## SEQUENCER \| SECTION

### SetShotDisplayName

```
void SetShotDisplayName(FString InShotDisplayName)
```

Set the shot display name

### GetShotDisplayName

```
FString GetShotDisplayName()const
```

**Returns**

The shot display name. if empty, returns the sequence's name

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneCinematicShotSection::StaticClass()
