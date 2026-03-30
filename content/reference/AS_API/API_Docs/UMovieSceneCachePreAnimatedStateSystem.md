# UMovieSceneCachePreAnimatedStateSystem

**Visibility:** public

## Inheritance

UMovieSceneEntityInstantiatorSystem → UMovieSceneCachePreAnimatedStateSystem

## Description

System that becomes relevant if there are any entites tagged RestoreState, or UMovieSceneEntitySystemLinker::ShouldCaptureGlobalState is true.  When run this system will iterate the instantiation phase in order, and call IMovieScenePreAnimatedStateSystemInterface::Save(Global)PreAnimatedState on any systems that implement the necessary interface

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneCachePreAnimatedStateSystem::StaticClass()
```
