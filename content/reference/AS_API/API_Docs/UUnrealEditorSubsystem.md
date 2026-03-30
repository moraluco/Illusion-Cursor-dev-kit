# UUnrealEditorSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → UUnrealEditorSubsystem

## Description

UUnrealEditorSubsystem Subsystem for exposing editor functionality to scripts

EDITOR SCRIPTING | LEVEL UTILITY GameWorld const UWorld GameWorld EditorWorld const UWorld EditorWorld

Find the World in the world editor. It can then be used as WorldContext by other libraries like GameplayStatics.

## DEVELOPMENT \| EDITOR

### GetLevelViewportCameraInfo

```
bool GetLevelViewportCameraInfo(FVector& CameraLocation, FRotator& CameraRotation)
```

Gets information about the camera position for the primary level editor viewport.  In non-editor builds, these will be zeroed In the UnrealEd module instead of Level Editor as it uses FLevelEditorViewportClient which is in this module

**Parameters**

CameraLocation
FVector&

(out) Current location of the level editing viewport camera, or zero if none found

CameraRotation
FRotator&

(out) Current rotation of the level editing viewport camera, or zero if none found

**Returns**

Whether or not we were able to get a camera for a level editing viewport

SetLevelViewportCameraInfo
void SetLevelViewportCameraInfo(
FVector 	CameraLocation,
FRotator 	CameraRotation
	)

Sets information about the camera position for the primary level editor viewport.  In the UnrealEd module instead of Level Editor as it uses FLevelEditorViewportClient which is in this module

**Parameters**

CameraLocation
FVector

Location the camera will be moved to.

CameraRotation
FRotator

Rotation the camera will be set to.

EDITOR SCRIPTING | LEVEL UTILITY
GetGameWorld
UWorld GetGameWorld()
GetEditorWorld
UWorld GetEditorWorld()

Find the World in the world editor. It can then be used as WorldContext by other libraries like GameplayStatics.

**Returns**

The World used by the world editor.

STATIC FUNCTIONS
Get
static UUnrealEditorSubsystem UUnrealEditorSubsystem::Get()
StaticClass
static UClass UUnrealEditorSubsystem::StaticClass()
