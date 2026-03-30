# UDialogueWave

**Visibility:** public

## Inheritance

UObject → UDialogueWave → DIALOGUECONTEXTS → ContextMappings

## Description

TArray<FDialogueContextMapping> ContextMappings

Mappings between dialogue contexts and associated soundwaves.

## FILTER

### bMature

```
bool bMature
```

true if this dialogue is considered to contain mature/adult content.

---

## SCRIPT

### VoiceActorDirection

```
FString VoiceActorDirection
```

Provides general notes to the voice actor intended to direct their performance, as well as contextual information to the translator.

### SubtitleOverride

```
FString SubtitleOverride
```

A localized version of the subtitle text that should be displayed for this audio. By default this will be the same as the Spoken Text.

### bOverride_SubtitleOverride

```
bool bOverride_SubtitleOverride
```
### SpokenText

```
FString SpokenText
```

A localized version of the text that is actually spoken phonetically in the audio.

---

## FUNCTIONS

### SetbMature

```
void SetbMature(bool Value)
```

GetbOverride_SubtitleOverride

### bool GetbOverride_SubtitleOverride

```
bool GetbOverride_SubtitleOverride()const SetbOverride_SubtitleOverride
```

void SetbOverride_SubtitleOverride(

### bool 	Value

```
bool 	Value 	)
```

GetbMature

### bool GetbMature

```
bool GetbMature()const STATIC FUNCTIONS
```

StaticClass

### static UClass UDialogueWave::StaticClass

```
static UClass UDialogueWave::StaticClass()
```
