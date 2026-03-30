# ADEPRECATED_PlacedEditorUtilityBase

**Visibility:** public

## Inheritance

AActor → ADEPRECATED_PlacedEditorUtilityBase → CONFIG → HelpText

## Description

FString HelpText

## DEVELOPMENT \| EDITOR

### SelectionSet

```
const TArray<AActor> SelectionSet
```

Returns the current selection set in the editor.  Note that for non-editor builds, this will return an empty array

---

## DEVELOPMENT \| EDITOR

### SelectNothing

```
void SelectNothing()
```

Selects nothing in the editor (another way to clear the selection)

### GetActorReference

```
AActor GetActorReference(FString PathToActor)
```

Attempts to find the actor specified by PathToActor in the current editor world

**Parameters**

PathToActor
FString

The path to the actor (e.g. PersistentLevel.PlayerStart)

**Returns**

A reference to the actor, or none if it wasn't found

GetLevelViewportCameraInfo
bool GetLevelViewportCameraInfo(
FVector& 	CameraLocation,
FRotator& 	CameraRotation
	)

Gets information about the camera position for the primary level editor viewport.  In non-editor builds, these will be zeroed

**Parameters**

CameraLocation
FVector&

(out) Current location of the level editing viewport camera, or zero if none found

CameraRotation
FRotator&

(out) Current rotation of the level editing viewport camera, or zero if none found

**Returns**

Whether or not we were able to get a camera for a level editing viewport

GetSelectionSet
TArray<AActor> GetSelectionSet()

Returns the current selection set in the editor.  Note that for non-editor builds, this will return an empty array

ClearActorSelectionSet
void ClearActorSelectionSet()

Remove all actors from the selection set

SetActorSelectionState
void SetActorSelectionState(
AActor 	Actor,
bool 	bShouldBeSelected
	)

Set the selection state for the selected actor

SetLevelViewportCameraInfo
void SetLevelViewportCameraInfo(
FVector 	CameraLocation,
FRotator 	CameraRotation
	)

Sets information about the camera position for the primary level editor viewport.

**Parameters**

CameraLocation
FVector

Location the camera will be moved to.

CameraRotation
FRotator

Rotation the camera will be set to.

STATIC FUNCTIONS
Spawn
static ADEPRECATED_PlacedEditorUtilityBase ADEPRECATED_PlacedEditorUtilityBase::Spawn(

FVector 	Location	 = 	FVector :: ZeroVector,
FRotator 	Rotation	 = 	FRotator :: ZeroRotator,
FName 	Name	 = 	NAME_None,
ULevel 	Level	 = 	nullptr

)
StaticClass
static UClass ADEPRECATED_PlacedEditorUtilityBase::StaticClass()
