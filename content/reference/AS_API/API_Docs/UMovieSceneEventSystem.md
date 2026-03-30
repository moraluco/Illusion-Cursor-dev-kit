# UMovieSceneEventSystem

**Visibility:** public

## Inheritance

UMovieSceneEntitySystem → UMovieSceneEventSystem → UMovieScenePostEvalEventSystem → UMovieScenePostSpawnEventSystem → UMovieScenePreSpawnEventSystem

## Description

Systems that triggers events based on one-shot FMovieSceneEventComponent components Works by iterating all pending instances of TMovieSceneComponentID<FMovieSceneEventComponent> and triggering inline.  Does not dispatch any async tasks

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneEventSystem::StaticClass()
```
