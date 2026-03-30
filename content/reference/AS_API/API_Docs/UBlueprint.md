# UBlueprint

**Visibility:** public

## Inheritance

UBlueprintCore → UBlueprint → UAnimBlueprint → UControlRigBlueprint → UEditorUtilityBlueprint → ULegacyLevelSequenceDirectorBlueprint → UUserWidgetBlueprint

## Description

Blueprints are special assets that provide an intuitive, node-based interface that can be used to create new types of Actors and script level events; giving designers and gameplay programmers the tools to quickly create and iterate gameplay from within Unreal Editor without ever needing to write a line of code.

## BLUEPRINTOPTIONS

### BlueprintDisplayName

```
FString BlueprintDisplayName
```

Overrides the BP's display name in the editor UI

### BlueprintDescription

```
FString BlueprintDescription
```

Shows up in the content browser tooltip when the blueprint is hovered

### BlueprintNamespace

```
FString BlueprintNamespace
```

The namespace of this blueprint (if set, the Blueprint will be treated differently for the context menu)

### BlueprintCategory

```
FString BlueprintCategory
```

The category of the Blueprint, used to organize this Blueprint class when displayed in palette windows

### HideCategories

```
TArray<FString> HideCategories
```

Additional HideCategories. These are added to HideCategories from parent.

---

## CLASSOPTIONS

### CompileMode

```
EBlueprintCompileMode CompileMode
```

The mode that will be used when compiling this class.

---

## THUMBNAIL

### ThumbnailInfo

```
UThumbnailInfo ThumbnailInfo
```

Information for thumbnail rendering

---

## FUNCTIONS

### SetbRunConstructionScriptInSequencer

```
void SetbRunConstructionScriptInSequencer(bool Value)
```

SetbGenerateConstClass

### void SetbGenerateConstClass

```
void SetbGenerateConstClass(bool Value)
```

SetbGenerateAbstractClass

### void SetbGenerateAbstractClass

```
void SetbGenerateAbstractClass(bool Value)
```

SetbDeprecate

### void SetbDeprecate

```
void SetbDeprecate(bool Value)
```

SetbRunConstructionScriptOnDrag

### void SetbRunConstructionScriptOnDrag

```
void SetbRunConstructionScriptOnDrag(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBlueprint::StaticClass()
```
