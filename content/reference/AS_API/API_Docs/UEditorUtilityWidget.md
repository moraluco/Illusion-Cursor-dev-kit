# UEditorUtilityWidget

**Visibility:** public

## Inheritance

UUserWidget → UEditorUtilityWidget → CONFIG → HelpText

## Description

FString HelpText

## SETTINGS

### bAutoRunDefaultAction

```
bool bAutoRunDefaultAction
```

Should this blueprint automatically run OnDefaultActionClicked, or should it open up a details panel to edit properties and/or offer multiple buttons

### bAlwaysReregisterWithWindowsMenu

```
bool bAlwaysReregisterWithWindowsMenu
```

Should this widget always be re-added to the windows menu once it's opened

---

## EDITOR

### Run

```
void Run()
```

The default action called when the widget is invoked if bAutoRunDefaultAction=true (it is never called otherwise)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorUtilityWidget::StaticClass()
```
