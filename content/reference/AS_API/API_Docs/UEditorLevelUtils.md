# UEditorLevelUtils

**Visibility:** public

## Inheritance

UObject → UEditorLevelUtils

## Description

EDITOR SCRIPTING | LEVEL CREATION MoveActorsToLevel static int UEditorLevelUtils::MoveActorsToLevel( TArray<AActor> 	ActorsToMove, ULevelStreaming 	DestStreamingLevel, bool 	bWarnAboutReferences	 = 	true, bool 	bWarnAboutRenaming	 = 	true 	)

Moves the specified list of actors to the specified streaming level. The new actors will be selected

Parameters ActorsToMove TArray<AActor>

List of actors to move

DestStreamingLevel ULevelStreaming

The destination streaming level of the current world to move the actors to

bWarnAboutReferences bool

Whether or not to show a modal warning about referenced actors that may no longer function after being moved

Returns

The number of actors that were successfully moved to the new level

CreateNewStreamingLevel static ULevelStreaming UEditorLevelUtils::CreateNewStreamingLevel(

TSubclassOf<ULevelStreaming> 	LevelStreamingClass, FString 	NewLevelPath	 = 	"", bool 	bMoveSelectedActorsIntoNewLevel	 = 	false

)

Creates a new streaming level in the current world

Parameters LevelStreamingClass TSubclassOf<ULevelStreaming>

The streaming class type instead to use for the level.

NewLevelPath FString

Optional path to the level package path format ("e.g /Game/MyLevel").  If empty, the user will be prompted during the save process.

bMoveSelectedActorsIntoNewLevel bool

If true, move any selected actors into the new level.

Returns

Returns the newly created level, or NULL on failure

AddLevelToWorld static ULevelStreaming UEditorLevelUtils::AddLevelToWorld(

UWorld 	World, FString 	LevelPackageName, TSubclassOf<ULevelStreaming> 	LevelStreamingClass

)

Adds the named level package to the world.  Does nothing if the level already exists in the world.

Parameters LevelPackageName FString

The package name ("e.g /Game/MyLevel") of the level package to add.

LevelStreamingClass TSubclassOf<ULevelStreaming>

The streaming class type to use for the level.

Returns

The new level, or NULL if the level couldn't added.

AddLevelToWorldWithTransform static ULevelStreaming UEditorLevelUtils::AddLevelToWorldWithTransform(

UWorld 	World, FString 	LevelPackageName, TSubclassOf<ULevelStreaming> 	LevelStreamingClass, FTransform 	LevelTransform

)

Adds the named level package to the world at the given position.  Does nothing if the level already exists in the world.

Parameters LevelPackageName FString

The package name ("e.g /Game/MyLevel") of the level package to add.

LevelStreamingClass TSubclassOf<ULevelStreaming>

The streaming class type to use for the level.

LevelTransform FTransform

The origin of the new level in the world.

Returns

The new level, or NULL if the level couldn't added.

MakeLevelCurrent static void UEditorLevelUtils::MakeLevelCurrent( ULevelStreaming 	InStreamingLevel 	)

Makes the specified streaming level the current level for editing.  The current level is where actors are spawned to when calling SpawnActor

Returns

true  If a level was removed.

MoveSelectedActorsToLevel static int UEditorLevelUtils::MoveSelectedActorsToLevel( ULevelStreaming 	DestLevel, bool 	bWarnAboutReferences	 = 	true 	)

Moves the currently selected actors to the specified streaming level. The new actors will be selected

Parameters bWarnAboutReferences bool

Whether or not to show a modal warning about referenced actors that may no longer function after being moved

Returns

The number of actors that were successfully moved to the new level

EDITOR SCRIPTING | LEVEL UTILITY SetLevelsVisibility static void UEditorLevelUtils::SetLevelsVisibility(

TArray<ULevel> 	Levels, TArray<bool> 	bShouldBeVisible, bool 	bForceLayersVisible, ELevelVisibilityDirtyMode 	ModifyMode	 = 	ELevelVisibilityDirtyMode :: ModifyOnChange

)

Sets a level's visibility in the editor. More efficient than SetLevelsVisibility when changing the visibility of multiple levels simultaneously.

Parameters Levels TArray<ULevel>

The levels to modify.

bShouldBeVisible TArray<bool>

The level's new visibility state for each level.

bForceLayersVisible bool

If true and the level is visible, force the level's layers to be visible.

ModifyMode ELevelVisibilityDirtyMode

ELevelVisibilityDirtyMode mode value.

SetLevelVisibility static void UEditorLevelUtils::SetLevelVisibility(

ULevel 	Level, bool 	bShouldBeVisible, bool 	bForceLayersVisible, ELevelVisibilityDirtyMode 	ModifyMode	 = 	ELevelVisibilityDirtyMode :: ModifyOnChange

)

Sets a level's visibility in the editor. Less efficient than SetLevelsVisibility when changing the visibility of multiple levels simultaneously.

Parameters Level ULevel

The level to modify.

bShouldBeVisible bool

The level's new visibility state.

bForceLayersVisible bool

If true and the level is visible, force the level's layers to be visible.

ModifyMode ELevelVisibilityDirtyMode

ELevelVisibilityDirtyMode mode value.

GetLevels static const TArray<ULevel> UEditorLevelUtils::GetLevels( UWorld 	World 	)

Returns all levels for a world.

Parameters World UWorld

World containing levels

Returns

Set of all levels

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorLevelUtils::StaticClass()
```
