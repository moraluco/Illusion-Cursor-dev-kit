# UBlueprintExtension

**Visibility:** public

## Inheritance

UObject → UBlueprintExtension → UAnimBlueprintExtension → UMovieSceneEventBlueprintExtension

## Description

Per-instance extension object that can be added to UBlueprint::Extensions in order to augment built-in blueprint functionality Ideally this would be an editor-only class, but such classes are not permitted within Engine modules (even inside WITH_EDITORONLY_DATA blocks)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBlueprintExtension::StaticClass()
```
