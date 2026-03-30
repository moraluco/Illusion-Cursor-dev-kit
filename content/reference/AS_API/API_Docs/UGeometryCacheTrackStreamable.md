# UGeometryCacheTrackStreamable

**Visibility:** public

## Inheritance

UGeometryCacheTrack → UGeometryCacheTrackStreamable

## Description

Derived GeometryCacheTrack class, used for Transform animation.

\note FGeometryCacheTrackStreamableRenderResource keeps a reference to the track.  Be sure to keep the implementation of this class valid so it properly releases the render resoruce before making any changes to this object that may affect the render thread.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGeometryCacheTrackStreamable::StaticClass()
```
