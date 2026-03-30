# UAnimBoneCompressionSettings

**Visibility:** public

## Inheritance

UObject → UAnimBoneCompressionSettings

## Description

This object is used to wrap a bone compression codec. It allows a clean integration in the editor by avoiding the need to create asset types and factory wrappers for every codec.

## COMPRESSION

### ErrorThreshold

```
float32 ErrorThreshold
```

When compressing, the best codec below this error threshold will be used.

### bForceBelowThreshold

```
bool bForceBelowThreshold
```

Any codec (even one that increases the size) with a lower error will be used until it falls below the threshold.

### Codecs

```
TArray<TObjectPtr<UAnimBoneCompressionCodec>> Codecs
```

A list of animation bone compression codecs to try. Empty entries are ignored but the array cannot be empty.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimBoneCompressionSettings::StaticClass()
```
