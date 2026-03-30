# UMovieSceneToolsProjectSettings

**Visibility:** public

## Inheritance

UObject → UMovieSceneToolsProjectSettings

## Description

Settings for the level sequences

## SHOTS

### ShotNumDigits

```
uint ShotNumDigits
```

The number of digits for the shot number.

### ShotIncrement

```
uint ShotIncrement
```

The default shot increment.

### ShotDirectory

```
FString ShotDirectory
```

The default directory for the shots.

### ShotPrefix

```
FString ShotPrefix
```

The default prefix for shot names.

### FirstShotNumber

```
uint FirstShotNumber
```

The first shot number.

### SubSequenceSeparator

```
FString SubSequenceSeparator
```

A single character separator between the take number and the sub sequence name.

### TakeNumDigits

```
uint TakeNumDigits
```

The number of digits for the take number.

### FirstTakeNumber

```
uint FirstTakeNumber
```

The first take number.

### TakeSeparator

```
FString TakeSeparator
```

A single character separator between the shot number and the take number.

---

## TIMELINE

### DefaultDuration

```
float32 DefaultDuration
```

The default duration for new level sequences in seconds.

### DefaultStartTime

```
float32 DefaultStartTime
```

The default start time for new level sequences, in seconds.

---

## TRACKSETTINGS

### FbxSettings

```
TArray<FMovieSceneToolsFbxSettings> FbxSettings
```

Mapping between fbx property name and property track path

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneToolsProjectSettings::StaticClass()
```
