# ULiveLinkVirtualSubject

**Visibility:** public

## Inheritance

UObject → ULiveLinkVirtualSubject

## Description

A Virtual subject is made up of one or more real subjects from a source

## LIVELINK

### FrameTranslators

```
TArray<TObjectPtr<ULiveLinkFrameTranslator>> FrameTranslators
```

List of available translator the subject can use.

### bRebroadcastSubject

```
bool bRebroadcastSubject
```

If enabled, rebroadcast this subject

### Subjects

```
TArray<FLiveLinkSubjectName> Subjects
```

Names of the real subjects to combine into a virtual subject

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULiveLinkVirtualSubject::StaticClass()
```
