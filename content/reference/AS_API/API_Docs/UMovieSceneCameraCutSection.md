# UMovieSceneCameraCutSection

**Visibility:** public

## Inheritance

UMovieSceneSection → UMovieSceneCameraCutSection

## Description

Movie CameraCuts are sections on the CameraCuts track, that show what the viewer "sees"

## SECTION

### CameraBindingID

```
FMovieSceneObjectBindingID CameraBindingID
```

The camera binding that this movie CameraCut uses

### bLockPreviousCamera

```
bool bLockPreviousCamera
```

When blending, lock the previous camera (camera cut or gameplay camera).

---

## SEQUENCER \| SECTION

### SetCameraBindingID

```
void SetCameraBindingID(FMovieSceneObjectBindingID InCameraBindingID)
```

Sets the camera binding for this CameraCut section

### GetCameraBindingID

```
const FMovieSceneObjectBindingID& GetCameraBindingID()const
```

Gets the camera binding for this CameraCut section

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneCameraCutSection::StaticClass()
```
