# UDEPRECATED_GlobalEditorUtilityBase

**Visibility:** public

## Inheritance

UObject → UDEPRECATED_GlobalEditorUtilityBase → CONFIG → HelpText

## Description

FString HelpText

## DEVELOPMENT \| EDITOR

### SelectionSet

```
const TArray<AActor> SelectionSet
```
### SelectedAssets

```
const TArray<UObject> SelectedAssets
```

Gets the set of currently selected assets

### EditorUserSettings

```
const UEditorPerProjectUserSettings EditorUserSettings
```

---

## SETTINGS

### bAutoRunDefaultAction

```
bool bAutoRunDefaultAction
```

Should this blueprint automatically run OnDefaultActionClicked, or should it open up a details panel to edit properties and/or offer multiple buttons

---

## VARIABLES

### OnEachSelectedAsset

```
FForEachAssetIteratorSignature OnEachSelectedAsset
```

The method called for each selected asset when ForEachSelectedAsset is called

### OnEachSelectedActor

```
FForEachActorIteratorSignature OnEachSelectedActor
```

The method called for each selected actor when ForEachSelectedActor is called

---

## DEVELOPMENT \| EDITOR

### GetSelectionBounds

```
void GetSelectionBounds(FVector& Origin, FVector& BoxExtent, float32& SphereRadius)
```

ForEachSelectedActor

### void ForEachSelectedActor

```
void ForEachSelectedActor()
```

Calls OnEachSelectedActor for each selected actor

### ForEachSelectedAsset

```
void ForEachSelectedAsset()
```

Calls OnEachSelectedAsset for each selected asset

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

GetEditorUserSettings
UEditorPerProjectUserSettings GetEditorUserSettings()
GetSelectedAssets
TArray<UObject> GetSelectedAssets()

Gets the set of currently selected assets

ClearActorSelectionSet
void ClearActorSelectionSet()

Remove all actors from the selection set

GetSelectionSet
TArray<AActor> GetSelectionSet()
RenameAsset
void RenameAsset(
UObject 	Asset,
FString 	NewName
	)

Renames an asset (cannot move folders)

SelectNothing
void SelectNothing()

Selects nothing in the editor (another way to clear the selection)

SetActorSelectionState
void SetActorSelectionState(
AActor 	Actor,
bool 	bShouldBeSelected
	)

Set the selection state for the selected actor

---

## FUNCTIONS

### OnDefaultActionClicked

```
void OnDefaultActionClicked()
```

The default action called when the blutility is invoked if bAutoRunDefaultAction=true (it is never called otherwise)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDEPRECATED_GlobalEditorUtilityBase::StaticClass()
```
