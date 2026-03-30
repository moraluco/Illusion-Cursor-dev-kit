# UMovieSceneFolderExtensions

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UMovieSceneFolderExtensions

## Description

Function library containing methods that should be hoisted onto UMovieSceneFolders for scripting

## SEQUENCER \| SEQUENCE

### GetFolderName

```
static FName UMovieSceneFolderExtensions::GetFolderName(UMovieSceneFolder Folder)
```

Get the given folder's display name

**Parameters**

Folder
UMovieSceneFolder

The folder to use

**Returns**

The target folder's name

AddChildMasterTrack
static bool UMovieSceneFolderExtensions::AddChildMasterTrack(
UMovieSceneFolder 	Folder,
UMovieSceneTrack 	InMasterTrack
	)

Add a master track to this folder

**Parameters**

Folder
UMovieSceneFolder

The folder to add a child master track to

InMasterTrack
UMovieSceneTrack

The master track to add to the folder

**Returns**

True if the addition is successful

AddChildObjectBinding
static bool UMovieSceneFolderExtensions::AddChildObjectBinding(

UMovieSceneFolder 	Folder,
FSequencerBindingProxy 	InObjectBinding

)

Add a guid for an object binding to this folder

**Parameters**

Folder
UMovieSceneFolder

The folder to add a child object to

InObjectBinding
FSequencerBindingProxy

The binding to add to the folder

**Returns**

True if the addition is successful

GetChildFolders
static TArray<UMovieSceneFolder> UMovieSceneFolderExtensions::GetChildFolders(

UMovieSceneFolder 	Folder

)

Get the child folders of a given folder

**Parameters**

Folder
UMovieSceneFolder

The folder to get the child folders of

**Returns**

The child folders associated with the given folder

GetChildMasterTracks
static TArray<UMovieSceneTrack> UMovieSceneFolderExtensions::GetChildMasterTracks(

UMovieSceneFolder 	Folder

)

Get the master tracks contained by this folder

**Parameters**

Folder
UMovieSceneFolder

The folder to get the master tracks of

**Returns**

The master tracks under the given folder

GetChildObjectBindings
static TArray<FSequencerBindingProxy> UMovieSceneFolderExtensions::GetChildObjectBindings(

UMovieSceneFolder 	Folder

)

Get the object bindings contained by this folder

**Parameters**

Folder
UMovieSceneFolder

The folder to get the bindings of

**Returns**

The object bindings under the given folder

GetFolderColor
static FColor UMovieSceneFolderExtensions::GetFolderColor(
UMovieSceneFolder 	Folder
	)

Get the display color of the given folder

**Parameters**

Folder
UMovieSceneFolder

The folder to get the display color of

**Returns**

The display color of the given folder

AddChildFolder
static bool UMovieSceneFolderExtensions::AddChildFolder(
UMovieSceneFolder 	TargetFolder,
UMovieSceneFolder 	FolderToAdd
	)

Add a child folder to the target folder

**Parameters**

TargetFolder
UMovieSceneFolder

The folder to add a child folder to

FolderToAdd
UMovieSceneFolder

The child folder to be added

**Returns**

True if the addition is successful

RemoveChildFolder
static bool UMovieSceneFolderExtensions::RemoveChildFolder(
UMovieSceneFolder 	TargetFolder,
UMovieSceneFolder 	FolderToRemove
	)

Remove a child folder from the given folder

**Parameters**

TargetFolder
UMovieSceneFolder

The folder from which to remove a child folder

FolderToRemove
UMovieSceneFolder

The child folder to be removed

**Returns**

True if the removal succeeds

RemoveChildMasterTrack
static bool UMovieSceneFolderExtensions::RemoveChildMasterTrack(
UMovieSceneFolder 	Folder,
UMovieSceneTrack 	InMasterTrack
	)

Remove a master track from the given folder

**Parameters**

Folder
UMovieSceneFolder

The folder from which to remove a track

InMasterTrack
UMovieSceneTrack

The track to remove

**Returns**

True if the removal succeeds

RemoveChildObjectBinding
static bool UMovieSceneFolderExtensions::RemoveChildObjectBinding(

	UMovieSceneFolder 	Folder,
const 	FSequencerBindingProxy 	InObjectBinding

)

Remove an object binding from the given folder

**Parameters**

Folder
UMovieSceneFolder

The folder from which to remove an object binding

InObjectBinding
const FSequencerBindingProxy

The object binding to remove

**Returns**

True if the operation succeeds

SetFolderColor
static bool UMovieSceneFolderExtensions::SetFolderColor(
UMovieSceneFolder 	Folder,
FColor 	InFolderColor
	)

Set the display color of the given folder

**Parameters**

Folder
UMovieSceneFolder

The folder to set the display color of

InFolderColor
FColor

The new display color for the folder

**Returns**

True if the folder's display color is set successfully

SetFolderName
static bool UMovieSceneFolderExtensions::SetFolderName(
UMovieSceneFolder 	Folder,
FName 	InFolderName
	)

Set the name of the given folder

**Parameters**

Folder
UMovieSceneFolder

The folder to set the name of

InFolderName
FName

The new name for the folder

**Returns**

True if the setting of the folder name succeeds

STATIC FUNCTIONS
StaticClass
static UClass UMovieSceneFolderExtensions::StaticClass()
