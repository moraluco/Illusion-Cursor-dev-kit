# UMovieSceneCVarSection

**Visibility:** public

## Inheritance

UMovieSceneSection → UMovieSceneCVarSection

## Description

A CVar section is responsible for applying a user-supplied value to the specified cvar, and then restoring the previous value after the section ends.

## Members

### VARIABLES

```
CONSOLE VARIABLES
```
### ConsoleVariables

```
FMovieSceneCVarOverrides ConsoleVariables
```

The name of the console variable and the value, separated by ' ' or '=', ie: "foo.bar=1" or "foo.bar 1".

---

## CVARS

### String

```
const FString String CVARS SetFromString void SetFromString(FString InString)
```

GetString

### FString GetString

```
FString GetString()const STATIC FUNCTIONS
```

StaticClass

### static UClass UMovieSceneCVarSection::StaticClass

```
static UClass UMovieSceneCVarSection::StaticClass()
```
