# UToolMenuEntryScript

**Visibility:** public

## Inheritance

UObject → UToolMenuEntryScript → UEditorUtilityToolMenuEntry → DATA → Data

## Description

FToolMenuEntryScriptData Data

## ACTION

### Execute

```
void Execute(FToolMenuContext Context)
```

---

## ADVANCED

### ConstructMenuEntry

```
void ConstructMenuEntry(UToolMenu Menu, const FName SectionName, FToolMenuContext Context)
```

GetLabel

### FText GetLabel

```
FText GetLabel(FToolMenuContext Context)const
```

GetCheckState

### ECheckBoxState GetCheckState

```
ECheckBoxState GetCheckState(FToolMenuContext Context)const
```

GetIcon

### FScriptSlateIcon GetIcon

```
FScriptSlateIcon GetIcon(FToolMenuContext Context)const
```

CanExecute

### bool CanExecute

```
bool CanExecute(FToolMenuContext Context)const
```

GetToolTip

### FText GetToolTip

```
FText GetToolTip(FToolMenuContext Context)const
```

InitEntry

### void InitEntry

```
void InitEntry(const FName OwnerName, const FName Menu, const FName Section, const FName Name, FText Label, FText ToolTip)
```

IsVisible

### bool IsVisible

```
bool IsVisible(FToolMenuContext Context)const
```

RegisterMenuEntry

### void RegisterMenuEntry

```
void RegisterMenuEntry()
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UToolMenuEntryScript::StaticClass()
```
