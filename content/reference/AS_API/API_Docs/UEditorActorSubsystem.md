# UEditorActorSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → UEditorActorSubsystem

## Description

UEditorActorUtilitiesSubsystem Subsystem for exposing actor related utilities to scripts,

EDITOR SCRIPTING | LEVEL UTILITY OnDuplicateActorsBegin FOnEditCutActorsBegin OnDuplicateActorsBegin OnEditCutActorsEnd FOnEditCutActorsEnd OnEditCutActorsEnd OnEditCopyActorsBegin FOnEditCopyActorsBegin OnEditCopyActorsBegin OnEditCopyActorsEnd FOnEditCopyActorsEnd OnEditCopyActorsEnd OnEditPasteActorsBegin FOnEditPasteActorsBegin OnEditPasteActorsBegin OnEditPasteActorsEnd FOnEditPasteActorsEnd OnEditPasteActorsEnd OnEditCutActorsBegin FOnEditCutActorsBegin OnEditCutActorsBegin OnDuplicateActorsEnd FOnDuplicateActorsEnd OnDuplicateActorsEnd OnDeleteActorsBegin FOnDeleteActorsBegin OnDeleteActorsBegin OnDeleteActorsEnd FOnDeleteActorsEnd OnDeleteActorsEnd AllLevelActors const TArray<AActor> AllLevelActors

Find all loaded Actors in the world editor. Exclude actor that are pending kill, in PIE, PreviewEditor,

AllLevelActorsComponents const TArray<UActorComponent> AllLevelActorsComponents

Find all loaded ActorComponent own by an actor in the world editor. Exclude actor that are pending kill, in PIE, PreviewEditor,

SelectedLevelActors TArray<AActor> SelectedLevelActors

Find all loaded Actors that are selected in the world editor. Exclude actor that are pending kill, in PIE, PreviewEditor,

## DEVELOPMENT \| EDITOR

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

SetActorSelectionState
void SetActorSelectionState(
AActor 	Actor,
bool 	bShouldBeSelected
	)

Set the selection state for the selected actor

ClearActorSelectionSet
void ClearActorSelectionSet()

Remove all actors from the selection set

SelectNothing
void SelectNothing()

Selects nothing in the editor (another way to clear the selection)

EDITOR SCRIPTING | DATAPREP
ConvertActors
TArray<AActor> ConvertActors(
TArray<AActor> 	Actors,
TSubclassOf<AActor> 	ActorClass,
FString 	StaticMeshPackagePath
	)

Replace in the level all Actors provided with a new actor of type ActorClass. Destroy all Actors provided.

**Parameters**

Actors
TArray<AActor>

List of Actors to replace.

ActorClass
TSubclassOf<AActor>

Class/Blueprint of the new actor that will be spawn.

StaticMeshPackagePath
FString

If the list contains Brushes and it is requested to change them to StaticMesh, StaticMeshPackagePath is the package path to where the StaticMesh will be created. ie. /Game/MyFolder/

EDITOR SCRIPTING | LEVEL UTILITY
GetAllLevelActorsComponents
TArray<UActorComponent> GetAllLevelActorsComponents()

Find all loaded ActorComponent own by an actor in the world editor. Exclude actor that are pending kill, in PIE, PreviewEditor, ...

**Returns**

List of found ActorComponent

DuplicateActors
TArray<AActor> DuplicateActors(
TArray<AActor> 	ActorsToDuplicate,
UWorld 	ToWorld	 = 	nullptr,
FVector 	Offset	 = 	FVector ( )
	)

Duplicate actors from the world editor.

**Parameters**

ActorsToDuplicate
TArray<AActor>

Actors to duplicate.

ToWorld
UWorld

World to place the duplicated actors in. *

Offset
FVector

Translation to offset duplicated actors by.

**Returns**

The duplicated actors, or empty if it didn't succeed

DuplicateSelectedActors
void DuplicateSelectedActors(
UWorld 	InWorld
	)

Duplicate all the selected actors in the given world

**Parameters**

InWorld
UWorld

The world the actors are selected in.

DestroyActors
bool DestroyActors(
TArray<AActor> 	ActorsToDestroy
	)

Destroy the actors from the world editor. Notify the Editor that the actor got destroyed.

**Parameters**

ActorsToDestroy
TArray<AActor>

Actors to destroy.

**Returns**

True if the operation succeeds.

DeleteSelectedActors
void DeleteSelectedActors(
UWorld 	InWorld
	)

Delete all the selected actors in the given world

**Parameters**

InWorld
UWorld

The world the actors are selected in.

DuplicateActor
AActor DuplicateActor(
AActor 	ActorToDuplicate,
UWorld 	ToWorld	 = 	nullptr,
FVector 	Offset	 = 	FVector ( )
	)

Duplicate an actor from the world editor.

**Parameters**

ActorToDuplicate
AActor

Actor to duplicate.

ToWorld
UWorld

World to place the duplicated actor in.

Offset
FVector

Translation to offset duplicated actor by.

**Returns**

The duplicated actor, or none if it didn't succeed

GetSelectedLevelActors
TArray<AActor> GetSelectedLevelActors()

Find all loaded Actors that are selected in the world editor. Exclude actor that are pending kill, in PIE, PreviewEditor, ...

**Returns**

List of found Actors

DestroyActor
bool DestroyActor(
AActor 	ActorToDestroy
	)

Destroy the actor from the world editor. Notify the Editor that the actor got destroyed.

**Parameters**

ActorToDestroy
AActor

Actor to destroy.

**Returns**

True if the operation succeeds.

SelectAll
void SelectAll(
UWorld 	InWorld
	)

Select all actors and BSP models in the given world, except those which are hidden

**Parameters**

InWorld
UWorld

The world the actors are to be selected in.

SelectAllChildren
void SelectAllChildren(
bool 	bRecurseChildren
	)

Select all children actors of the current selection.

**Parameters**

bRecurseChildren
bool

True to recurse through all descendants of the children

GetAllLevelActors
TArray<AActor> GetAllLevelActors()

Find all loaded Actors in the world editor. Exclude actor that are pending kill, in PIE, PreviewEditor, ...

**Returns**

List of found Actors

InvertSelection
void InvertSelection(
UWorld 	InWorld
	)

Invert the selection in the given world

**Parameters**

InWorld
UWorld

The world the selection is in.

SetActorTransform
bool SetActorTransform(
AActor 	InActor,
FTransform 	InWorldTransform
	)

Sets the world transform of the given actor, if possible.

**Returns**

false if the world transform could not be set.

SetComponentTransform
bool SetComponentTransform(
USceneComponent 	InSceneComponent,
FTransform 	InWorldTransform
	)

Sets the world transform of the given component, if possible.

**Returns**

false if the world transform could not be set.

SetSelectedLevelActors
void SetSelectedLevelActors(
TArray<AActor> 	ActorsToSelect
	)

Clear the current world editor selection and select the provided actors. Exclude actor that are pending kill, in PIE, PreviewEditor, ...

**Parameters**

ActorsToSelect
TArray<AActor>

Actor that should be selected in the world editor.

SpawnActorFromClass
AActor SpawnActorFromClass(
TSubclassOf<AActor> 	ActorClass,
FVector 	Location,
FRotator 	Rotation	 = 	FRotator ( ),
bool 	bTransient	 = 	false
	)

Create an actor and place it in the world editor. Can be created from a Blueprint or a Class.  The actor will be created in the current level and will be selected.

**Parameters**

ActorClass
TSubclassOf<AActor>

Asset to attempt to use for an actor to place.

Location
FVector

Location of the new actor.

**Returns**

The created actor.

SpawnActorFromObject
AActor SpawnActorFromObject(
UObject 	ObjectToUse,
FVector 	Location,
FRotator 	Rotation	 = 	FRotator ( ),
bool 	bTransient	 = 	false
	)

Create an actor and place it in the world editor. The Actor can be created from a Factory, Archetype, Blueprint, Class or an Asset.  The actor will be created in the current level and will be selected.

**Parameters**

ObjectToUse
UObject

Asset to attempt to use for an actor to place.

Location
FVector

Location of the new actor.

**Returns**

The created actor.

STATIC FUNCTIONS
Get
static UEditorActorSubsystem UEditorActorSubsystem::Get()
StaticClass
static UClass UEditorActorSubsystem::StaticClass()
