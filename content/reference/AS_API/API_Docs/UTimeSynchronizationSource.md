# UTimeSynchronizationSource

**Visibility:** public

## Inheritance

UObject → UTimeSynchronizationSource

## Description

Base class for sources to be used for time synchronization.

Subclasses don't need to directly contain data, nor provide access to the data in any way (although they may).

Currently, Synchronization does not work on the subframe level.

## SYNCHRONIZATION

### FrameOffset

```
int FrameOffset
```

An additional offset in frames (relative to this source's frame rate) that should used.  This is mainly useful to help correct discrepancies between the reported Sample Times and how the samples actually line up relative to other sources.

### bUseForSynchronization

```
bool bUseForSynchronization
```

Whether or not this source should be considered when establishing synchronization.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTimeSynchronizationSource::StaticClass()
```
