# UEditorTutorialSettings

**Visibility:** public

## Inheritance

UObject → UEditorTutorialSettings

## Description

Editor-wide tutorial settings

## TUTORIALS

### Categories

```
TArray<FTutorialCategory> Categories
```

Categories for tutorials

### StartupTutorial

```
FSoftClassPath StartupTutorial
```

Tutorial to start on Editor startup

### TutorialContexts

```
TArray<FTutorialContext> TutorialContexts
```

Tutorials used in various contexts

e.g. the various asset editors

### bDisableAllTutorialAlerts

```
bool bDisableAllTutorialAlerts
```

Disable the pulsing alert that indicates a new tutorial is available.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorTutorialSettings::StaticClass()
```
