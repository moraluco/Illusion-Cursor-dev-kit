# UEditorUtilitySubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → UEditorUtilitySubsystem → VARIABLES → OnEndPIE

## Description

FOnEditorUtilityPIEEvent OnEndPIE

Expose End PIE to blueprints.

OnBeginPIE FOnEditorUtilityPIEEvent OnBeginPIE

Expose Begin PIE to blueprints.

## DEVELOPMENT \| EDITOR

### ReleaseInstanceOfAsset

```
void ReleaseInstanceOfAsset(UObject Asset)
```

Allow startup object to be garbage collected

### CloseTabByID

```
bool CloseTabByID(FName NewTabID)
```

Given an ID for a tab, try to find and close an existing tab. Returns true if it found a tab to close.

### DoesTabExist

```
bool DoesTabExist(FName NewTabID)
```

Given an ID for a tab, try to find an existing tab. Returns true if it found a tab.

### FindUtilityWidgetFromBlueprint

```
UEditorUtilityWidget FindUtilityWidgetFromBlueprint(UEditorUtilityWidgetBlueprint InBlueprint)
```

Given an editor utility widget blueprint, get the widget it creates. This will return a null pointer if the widget is not currently in a tab.

### RegisterAndExecuteTask

```
void RegisterAndExecuteTask(UEditorUtilityTask NewTask, UEditorUtilityTask OptionalParentTask = nullptr)
```

RegisterTabAndGetID

### void RegisterTabAndGetID

```
void RegisterTabAndGetID(UEditorUtilityWidgetBlueprint InBlueprint, FName& NewTabID)
```

CanRun

### bool CanRun

```
bool CanRun(UObject Asset)const
```

SpawnAndRegisterTab

### UEditorUtilityWidget SpawnAndRegisterTab

```
UEditorUtilityWidget SpawnAndRegisterTab(UEditorUtilityWidgetBlueprint InBlueprint)
```

SpawnAndRegisterTabAndGetID

### UEditorUtilityWidget SpawnAndRegisterTabAndGetID

```
UEditorUtilityWidget SpawnAndRegisterTabAndGetID(UEditorUtilityWidgetBlueprint InBlueprint, FName& NewTabID)
```

SpawnRegisteredTabByID

### bool SpawnRegisteredTabByID

```
bool SpawnRegisteredTabByID(FName NewTabID)
```

Given an ID for a tab, try to find a tab spawner that matches, and then spawn a tab. Returns true if it was able to find a matching tab spawner

### TryRun

```
bool TryRun(UObject Asset)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UEditorUtilitySubsystem UEditorUtilitySubsystem::Get()
```

StaticClass

### static UClass UEditorUtilitySubsystem::StaticClass

```
static UClass UEditorUtilitySubsystem::StaticClass()
```
