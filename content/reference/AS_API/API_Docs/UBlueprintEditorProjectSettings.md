# UBlueprintEditorProjectSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UBlueprintEditorProjectSettings → BLUEPRINTS → DisabledCompilerMessagesExceptEditor

## Description

TArray<FName> DisabledCompilerMessagesExceptEditor

List of compiler messages that have been suppressed outside of full, interactive editor sessions for the current project - useful for silencing warnings that were added to the engine after project inception and are going to be addressed as they are found by content authors

DisabledCompilerMessages TArray<FName> DisabledCompilerMessages List of compiler messages that have been suppressed completely

message suppression is only advisable when using blueprints that you cannot update and are raising innocuous warnings.  If useless messages are being raised prefer to contact support rather than disabling messages

## EXPERIMENTAL

### NamespacesToAlwaysInclude

```
TArray<FString> NamespacesToAlwaysInclude
```

The list of namespaces to always expose in any Blueprint (for all users of the game/project). Requires Blueprint namespace features to be enabled in editor preferences.

### DefaultChildActorTreeViewMode

```
EChildActorComponentTreeViewVisualizationMode DefaultChildActorTreeViewMode
```

Default view mode to use for child actor components in a Blueprint actor's component tree hierarchy (experimental).

---

## PLAY

### BaseClassesToAllowRecompilingDuringPlayInEditor

```
TArray<TSoftClassPtr<UObject>> BaseClassesToAllowRecompilingDuringPlayInEditor
```

Any blueprint deriving from one of these base classes will be allowed to recompile during Play-in-Editor (This setting exists both as an editor preference and project setting, and will be allowed if listed in either place)

---

## FUNCTIONS

### SetbValidateUnloadedSoftActorReferences

```
void SetbValidateUnloadedSoftActorReferences(bool Value)
```

SetbEnableChildActorExpansionInTreeView

### void SetbEnableChildActorExpansionInTreeView

```
void SetbEnableChildActorExpansionInTreeView(bool Value)
```

SetbForceAllDependenciesToRecompile

### void SetbForceAllDependenciesToRecompile

```
void SetbForceAllDependenciesToRecompile(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBlueprintEditorProjectSettings::StaticClass()
```
