# UMoviePlayerSettings

**Visibility:** public

## Inheritance

UObject → UMoviePlayerSettings

## Description

Implements the settings for the Windows target platform.

## MOVIES

### bMoviesAreSkippable

```
bool bMoviesAreSkippable
```

If enabled, Startup movies can be skipped by the user when a mouse button is pressed.

### StartupMovies

```
TArray<FString> StartupMovies
```

Movies to play on startup. Note that these must be in your game's Game/Content/Movies directory.

### bWaitForMoviesToComplete

```
bool bWaitForMoviesToComplete
```

If enabled, The game waits for startup movies to complete even if loading has finished.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMoviePlayerSettings::StaticClass()
```
