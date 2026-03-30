# ULevelSequenceProjectSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → ULevelSequenceProjectSettings

## Description

Settings for level sequences

## TIMELINE

### DefaultDisplayRate

```
FString DefaultDisplayRate
```

Specifies default display frame rate for newly created level sequences; also defines frame locked frame rate where sequences are set to be frame locked. Examples: 30 fps, 120/1 (120 fps), 30000/1001 (29.97), 0.01s (10ms).

### DefaultTickResolution

```
FString DefaultTickResolution
```

Specifies default tick resolution for newly created level sequences. Examples: 30 fps, 120/1 (120 fps), 30000/1001 (29.97), 0.01s (10ms).

### DefaultClockSource

```
EUpdateClockSource DefaultClockSource
```

Specifies default clock source for newly created level sequences. Examples: 0: Tick, 1: Platform, 2: Audio, 3: RelativeTimecode, 4: Timecode, 5: Custom

### bDefaultLockEngineToDisplayRate

```
bool bDefaultLockEngineToDisplayRate
```

0: Playback locked to playback frames 1: Unlocked playback with sub frame interpolation

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULevelSequenceProjectSettings::StaticClass()
```
