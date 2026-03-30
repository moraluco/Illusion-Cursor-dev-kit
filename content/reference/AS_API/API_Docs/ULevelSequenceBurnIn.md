# ULevelSequenceBurnIn

**Visibility:** public

## Inheritance

UUserWidget → ULevelSequenceBurnIn

## Description

Base class for level sequence burn ins

## Members

### IN

```
BURN IN
```
### LevelSequenceActor

```
ALevelSequenceActor LevelSequenceActor
```

The actor to get our burn in frames from

### SettingsClass

```
const TSubclassOf<ULevelSequenceBurnInInitSettings> SettingsClass
```

Get the settings class to use for this burn in

### FrameInformation

```
FLevelSequencePlayerSnapshot FrameInformation
```

Snapshot of frame information.

### BURN IN

```
BURN IN SetSettings void SetSettings(UObject InSettings)
```

Called when this burn in is receiving its settings

### GetSettingsClass

```
TSubclassOf<ULevelSequenceBurnInInitSettings> GetSettingsClass()const
```

Get the settings class to use for this burn in

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULevelSequenceBurnIn::StaticClass()
```
