# ULiveLinkSubjectSettings

**Visibility:** public

## Inheritance

UObject → ULiveLinkSubjectSettings

## Description

Base class for live link subject settings

## LIVELINK

### InterpolationProcessor

```
ULiveLinkFrameInterpolationProcessor InterpolationProcessor
```

The interpolation processor the subject will use.

### Translators

```
TArray<TObjectPtr<ULiveLinkFrameTranslator>> Translators
```

List of available translator the subject can use.

### bRebroadcastSubject

```
bool bRebroadcastSubject
```

If enabled, rebroadcast this subject

### PreProcessors

```
TArray<TObjectPtr<ULiveLinkFramePreProcessor>> PreProcessors
```

List of available preprocessor the subject will use.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULiveLinkSubjectSettings::StaticClass()
```
