# ULiveLinkSourceSettings

**Visibility:** public

## Inheritance

UObject → ULiveLinkSourceSettings → ULiveLinkCurveRemapSettings

## Description

Base class for live link source settings (can be replaced by sources themselves)

## SETTINGS

### BufferSettings

```
FLiveLinkSourceBufferManagementSettings BufferSettings
```

How the frame buffers are managed.

### ConnectionString

```
FString ConnectionString
```

Connection information that is needed by the factory to recreate the source from a preset.

### Mode

```
ELiveLinkSourceMode Mode
```

The the subject how to create the frame snapshot.  @note A client may evaluate manually the subject in a different mode by using EvaluateFrameAtWorldTime or EvaluateFrameAtSceneTime.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULiveLinkSourceSettings::StaticClass()
```
