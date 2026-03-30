# UCineCameraComponent

**Visibility:** public

## Inheritance

UCameraComponent → UCineCameraComponent

## Description

A specialized version of a camera component, geared toward cinematic usage.

## Members

### CAMERA

```
CINE CAMERA
```
### FilmbackPresetName

```
const FString FilmbackPresetName
```

Returns the filmback name of the camera with the current settings.

HorizontalFieldOfView

### HorizontalFieldOfView

```
const float32 HorizontalFieldOfView
```

Returns the horizonal FOV of the camera with current settings.

VerticalFieldOfView

### VerticalFieldOfView

```
const float32 VerticalFieldOfView
```

Returns the vertical FOV of the camera with current settings.

### LensPresetName

```
const FString LensPresetName
```

Returns the lens name of the camera with the current settings.

### SETTINGS

```
CURRENT CAMERA SETTINGS
```
### CurrentFocusDistance

```
float32 CurrentFocusDistance
```

Read-only. Control this value via FocusSettings.

### Filmback

```
FCameraFilmbackSettings Filmback
```

Controls the filmback of the camera.

### FocusSettings

```
FCameraFocusSettings FocusSettings
```

Controls the camera's focus.

### CurrentAperture

```
float32 CurrentAperture
```

Current aperture, in terms of f-stop (e.g. 2.8 for f/2.8)

### LensSettings

```
FCameraLensSettings LensSettings
```

Controls the camera's lens.

### CurrentFocalLength

```
float32 CurrentFocalLength
```

Current focal length of the camera (i.e. controls FoV, zoom)

---

## VARIABLES

### DefaultFilmbackPresetName

```
const FString DefaultFilmbackPresetName
```

Deprecated. See DefaultFilmbackPreset

### VARIABLES

```
STATIC VARIABLES
```

LensPresetsCopy static const TArray<FNamedLensPreset> UCineCameraComponent::LensPresetsCopy FilmbackPresetsCopy static const TArray<FNamedFilmbackPreset> UCineCameraComponent::FilmbackPresetsCopy

### CINE CAMERA

```
CINE CAMERA SetLensPresetByName void SetLensPresetByName(FString InPresetName)
```

Set the current lens settings by preset name.

### GetFilmbackPresetName

```
FString GetFilmbackPresetName()const
```

Returns the filmback name of the camera with the current settings.

### GetHorizontalFieldOfView

```
float32 GetHorizontalFieldOfView()const
```

Returns the horizonal FOV of the camera with current settings.

### GetLensPresetName

```
FString GetLensPresetName()const
```

Returns the lens name of the camera with the current settings.

### GetVerticalFieldOfView

```
float32 GetVerticalFieldOfView()const
```

Returns the vertical FOV of the camera with current settings.

### SetCurrentFocalLength

```
void SetCurrentFocalLength(float32 InFocalLength)
```

SetFilmbackPresetByName

### void SetFilmbackPresetByName

```
void SetFilmbackPresetByName(FString InPresetName)
```

Set the current preset settings by preset name.

### GetDefaultFilmbackPresetName

```
FString GetDefaultFilmbackPresetName()const
```

Returns the name of the default filmback preset.

### GetFilmbackPresetsCopy

```
static TArray<FNamedFilmbackPreset> UCineCameraComponent::GetFilmbackPresetsCopy()
```

Returns a copy of the list of available filmback presets.

### GetLensPresetsCopy

```
static TArray<FNamedLensPreset> UCineCameraComponent::GetLensPresetsCopy()
```

Returns a copy of the list of available lens presets.

---

## FUNCTIONS

### GetCurrentFocalLength

```
const float32& GetCurrentFocalLength()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UCineCameraComponent UCineCameraComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UCineCameraComponent UCineCameraComponent::GetOrCreate

```
static UCineCameraComponent UCineCameraComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UCineCameraComponent UCineCameraComponent::Create

```
static UCineCameraComponent UCineCameraComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UCineCameraComponent::StaticClass

```
static UClass UCineCameraComponent::StaticClass()
```
