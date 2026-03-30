# UPlatformMediaSource

**Visibility:** public

## Inheritance

UMediaSource → UPlatformMediaSource

## Description

A media source that selects other media sources based on target platform.

Use this asset to override media sources on a per-platform basis.

## SOURCES

### PlatformMediaSources

```
TMap<FString,TObjectPtr<UMediaSource>> PlatformMediaSources
```

Media sources per platform.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPlatformMediaSource::StaticClass()
```
