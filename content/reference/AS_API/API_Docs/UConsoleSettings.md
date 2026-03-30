# UConsoleSettings

**Visibility:** public

## Inheritance

UObject → UConsoleSettings

## Description

Implements the settings for the UConsole class.

## AUTOCOMPLETE

### bDisplayHelpInAutoComplete

```
bool bDisplayHelpInAutoComplete
```

Display the first line of any available help text in the auto-complete window, if a description isn't available

### ManualAutoCompleteList

```
TArray<FAutoCompleteCommand> ManualAutoCompleteList
```

Manual list of auto-complete commands and info specified in BaseInput.ini

### AutoCompleteMapPaths

```
TArray<FString> AutoCompleteMapPaths
```

List of relative paths (e.g. Content/Maps) to search for map names for auto-complete usage. Specified in BaseInput.ini.

### bOrderTopToBottom

```
bool bOrderTopToBottom
```

Whether we legacy bottom-to-top ordering or regular top-to-bottom ordering

---

## COLORS

### AutoCompleteFadedColor

```
FColor AutoCompleteFadedColor
```

The autocomplete color used for command descriptions and read-only CVars.

### InputColor

```
FColor InputColor
```

The color used for text input.

### HistoryColor

```
FColor HistoryColor
```

The color used for the previously typed commands history.

### AutoCompleteCommandColor

```
FColor AutoCompleteCommandColor
```

The autocomplete color used for executable commands.

### AutoCompleteCVarColor

```
FColor AutoCompleteCVarColor
```

The autocomplete color used for mutable CVars.

### BackgroundOpacityPercentage

```
float32 BackgroundOpacityPercentage
```

Amount of transparency of the console background.

---

## GENERAL

### MaxScrollbackSize

```
int MaxScrollbackSize
```

### Visible Console stuff

```
Visible Console stuff
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UConsoleSettings::StaticClass()
```
