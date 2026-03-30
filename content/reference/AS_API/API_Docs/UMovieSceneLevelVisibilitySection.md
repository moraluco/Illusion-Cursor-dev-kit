# UMovieSceneLevelVisibilitySection

**Visibility:** public

## Inheritance

UMovieSceneSection → UMovieSceneLevelVisibilitySection

## Description

A section for use with the movie scene level visibility track, which controls streamed level visibility.

## LEVELVISIBILITY

### Visibility

```
ELevelVisibility Visibility
```

Whether or not the levels in this section should be visible or hidden.

### LevelNames

```
TArray<FName> LevelNames
```

The short names of the levels who's visibility is controlled by this section.

---

## SEQUENCER \| SECTION

### GetVisibility

```
ELevelVisibility GetVisibility()const
```

SetLevelNames

### void SetLevelNames

```
void SetLevelNames(TArray<FName> InLevelNames)
```

SetVisibility

### void SetVisibility

```
void SetVisibility(ELevelVisibility InVisibility)
```

GetLevelNames

### const TArray<FName>& GetLevelNames

```
const TArray<FName>& GetLevelNames()const STATIC FUNCTIONS
```

StaticClass

### static UClass UMovieSceneLevelVisibilitySection::StaticClass

```
static UClass UMovieSceneLevelVisibilitySection::StaticClass()
```
