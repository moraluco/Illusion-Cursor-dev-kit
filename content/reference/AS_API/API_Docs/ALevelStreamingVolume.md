# ALevelStreamingVolume

**Visibility:** public

## Inheritance

AVolume → ALevelStreamingVolume → LEVELSTREAMINGVOLUME → StreamingUsage

## Description

EStreamingVolumeUsage StreamingUsage

Determines what this volume is used for, e.g. whether to control loading, loading and visibility or just visibilty (blocking on load)

bEditorPreVisOnly bool bEditorPreVisOnly

If true, this streaming volume should only be used for editor streaming level previs.

bDisabled bool bDisabled

If true, this streaming volume is ignored by the streaming volume code.  Used to either disable a level streaming volume without disassociating it from the level, or to toggle the control of a level's streaming between Kismet and volume streaming.

StreamingLevelNames TArray<FName> StreamingLevelNames

Levels names affected by this level streaming volume.

## FUNCTIONS

### SetbEditorPreVisOnly

```
void SetbEditorPreVisOnly(bool Value)
```

GetbDisabled

### bool GetbDisabled

```
bool GetbDisabled()const SetbDisabled
```

void SetbDisabled(

### bool 	Value

```
bool 	Value 	)
```

GetbEditorPreVisOnly

### bool GetbEditorPreVisOnly

```
bool GetbEditorPreVisOnly()const STATIC FUNCTIONS
```

Spawn

### static ALevelStreamingVolume ALevelStreamingVolume::Spawn

```
static ALevelStreamingVolume ALevelStreamingVolume::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ALevelStreamingVolume::StaticClass

```
static UClass ALevelStreamingVolume::StaticClass()
```
