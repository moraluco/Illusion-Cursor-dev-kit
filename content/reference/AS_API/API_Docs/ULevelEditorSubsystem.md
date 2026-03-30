# ULevelEditorSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → ULevelEditorSubsystem

## Description

ULevelEditorSubsystem Subsystem for exposing Level Editor related functionality to scripts

EDITOR SCRIPTING | LEVEL UTILITY CurrentLevel const ULevel CurrentLevel

Get the current level used by the world editor.

SelectionSet const UTypedElementSelectionSet SelectionSet

Get the level Editor typed element selection set for the current world

ViewportConfigKeys const TArray<FName> ViewportConfigKeys ActiveViewportConfigKey const FName ActiveViewportConfigKey EDITOR SCRIPTING | LEVEL UTILITY IsInPlayInEditor bool IsInPlayInEditor() const EditorInvalidateViewports void EditorInvalidateViewports() EditorPlaySimulate void EditorPlaySimulate() EditorRequestEndPlay void EditorRequestEndPlay() EditorSetGameView void EditorSetGameView( bool 	bGameView, FName 	ViewportConfigKey	 = 	NAME_None 	) EjectPilotLevelActor void EjectPilotLevelActor( FName 	ViewportConfigKey	 = 	NAME_None 	) GetActiveViewportConfigKey FName GetActiveViewportConfigKey() GetAllowsCinematicControl bool GetAllowsCinematicControl( FName 	ViewportConfigKey	 = 	NAME_None 	) GetCurrentLevel ULevel GetCurrentLevel()

Get the current level used by the world editor.

Returns

The current level

GetSelectionSet UTypedElementSelectionSet GetSelectionSet()

Get the level Editor typed element selection set for the current world

GetViewportConfigKeys TArray<FName> GetViewportConfigKeys() EditorGetGameView bool EditorGetGameView( FName 	ViewportConfigKey	 = 	NAME_None 	) LoadLevel bool LoadLevel( FString 	AssetPath 	)

Close the current Persistent Level (without saving it). Loads the specified level.

Parameters AssetPath FString

Asset Path of the level to be loaded. ie. /Game/MyFolder/MyAsset

Returns

True if the operation succeeds.

NewLevel bool NewLevel( FString 	AssetPath 	)

Close the current Persistent Level (without saving it). Create a new blank Level and save it. Load the new created level.

Parameters AssetPath FString

Asset Path of where the level will be saved. ie. /Game/MyFolder/MyAsset

Returns

True if the operation succeeds.

NewLevelFromTemplate bool NewLevelFromTemplate( FString 	AssetPath, FString 	TemplateAssetPath 	)

Close the current Persistent Level (without saving it). Create a new Level base on another level and save it. Load the new created level.

Parameters AssetPath FString

Asset Path of where the level will be saved. ie. /Game/MyFolder/MyAsset

TemplateAssetPath FString

Level to be used as Template. ie. /Game/MyFolder/MyAsset

Returns

True if the operation succeeds.

PilotLevelActor void PilotLevelActor( AActor 	ActorToPilot, FName 	ViewportConfigKey	 = 	NAME_None 	) SaveAllDirtyLevels bool SaveAllDirtyLevels()

Saves all Level currently loaded by the World Editor.

Returns

True if the operation succeeds.

SaveCurrentLevel bool SaveCurrentLevel()

Saves the specified Level. Must already be saved at lease once to have a valid path.

Returns

True if the operation succeeds.

SetAllowsCinematicControl void SetAllowsCinematicControl( bool 	bAllow, FName 	ViewportConfigKey	 = 	NAME_None 	) SetCurrentLevelByName bool SetCurrentLevelByName( FName 	LevelName 	)

Set the current level used by the world editor.  If more than one level shares the same name, the first one encounter of that level name will be used.

Parameters LevelName FName

The name of the Level the actor belongs to (same name as in the ContentBrowser).

Returns

True if the operation succeeds.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static ULevelEditorSubsystem ULevelEditorSubsystem::Get()
```

StaticClass

### static UClass ULevelEditorSubsystem::StaticClass

```
static UClass ULevelEditorSubsystem::StaticClass()
```
