# UEditorTutorial

**Visibility:** public

## Inheritance

UObject → UEditorTutorial

## Description

An asset used to build a stage-by-stage tutorial in the editor

## STAGES

### Stages

```
TArray<FTutorialStage> Stages
```

The various stages of this tutorial

---

## TUTORIAL

### Icon

```
FString Icon
```

Icon name for this tutorial, used when presented to the user in the tutorial browser. This is a name for the icon in the Slate editor style. Only used if there isn't a valid texture to use.

### Texture

```
UTexture2D Texture
```

Texture for this tutorial, used when presented to the user in the tutorial browser.

### Category

```
FString Category
```

Category of this tutorial, used to organize tutorials when presented to the user

### SummaryContent

```
FTutorialContent SummaryContent
```

Content to be displayed for this tutorial when presented to the user in summary

### SortOrder

```
int SortOrder
```

Sorting priority, used by the tutorial browser

### PreviousTutorial

```
FSoftClassPath PreviousTutorial
```

Tutorial to optionally chain back to if the "back" button is clicked on the first stage

### Title

```
FText Title
```

Title of this tutorial, used when presented to the user

### NextTutorial

```
FSoftClassPath NextTutorial
```

Tutorial to optionally chain onto after this tutorial completes

### bIsStandalone

```
bool bIsStandalone
```

A standalone tutorial displays no navigation buttons and each content widget has a close button

### AssetToUse

```
FSoftObjectPath AssetToUse
```

Asset to open & attach the tutorial to. Non-widget-bound content will appear in the asset's window

### bHideInBrowser

```
bool bHideInBrowser
```

Hide this tutorial in the tutorials browser

### SearchTags

```
FText SearchTags
```

Comma seperated list of tags the search will use to help find this tutorial

### STATIC VARIABLES

```
STATIC VARIABLES EngineFolderVisibilty static bool UEditorTutorial::EngineFolderVisibilty TUTORIAL GetEngineFolderVisibilty static bool UEditorTutorial::GetEngineFolderVisibilty()
```

Returns the visibility of the engine folder in the content browser

### OnTutorialClosed

```
void OnTutorialClosed()
```

Event fired when a tutorial is closed

### OnTutorialLaunched

```
void OnTutorialLaunched()
```

Event fired when a tutorial is launched

### OnTutorialStageEnded

```
void OnTutorialStageEnded(FName StageName)
```

Event fired when a tutorial stage ends

### OnTutorialStageStarted

```
void OnTutorialStageStarted(FName StageName)
```

Event fired when a tutorial stage begins

### BeginTutorial

```
static void UEditorTutorial::BeginTutorial(UEditorTutorial TutorialToStart, bool bRestart)
```

Begin a tutorial. Note that this will end the current tutorial that is in progress, if any

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

GoToNextTutorialStage
static void UEditorTutorial::GoToNextTutorialStage()

Advance to the next stage of a tutorial

GoToPreviousTutorialStage
static void UEditorTutorial::GoToPreviousTutorialStage()

Advance to the previous stage of a tutorial

OpenAsset
static void UEditorTutorial::OpenAsset(
UObject 	Asset
	)

Open an asset for use by a tutorial

**Parameters**

Asset
UObject

The asset to open

SetEngineFolderVisibilty
static void UEditorTutorial::SetEngineFolderVisibilty(
bool 	bNewVisibility
	)

Sets the visibility of the engine folder in the content browser

STATIC FUNCTIONS
StaticClass
static UClass UEditorTutorial::StaticClass()
