# UAutomatedLevelSequenceCapture

**Visibility:** public

## Inheritance

UMovieSceneCapture → UAutomatedLevelSequenceCapture → ANIMATION → WarmUpFrameCount

## Description

int WarmUpFrameCount

The number of extra frames to play before the sequence's start frame, to "warm up" the animation.  This is useful if your animation contains particles or other runtime effects that are spawned into the scene earlier than your capture start frame

ShotName FString ShotName

Optional shot name to render. The frame range to render will be set to the shot frame range.

bUseCustomStartFrame bool bUseCustomStartFrame

When enabled, the StartFrame setting will override the default starting frame number

CustomStartFrame FFrameNumber CustomStartFrame

Frame number to start capturing.

bUseCustomEndFrame bool bUseCustomEndFrame

When enabled, the EndFrame setting will override the default ending frame number

CustomEndFrame FFrameNumber CustomEndFrame

Frame number to end capturing.

LevelSequenceAsset FSoftObjectPath LevelSequenceAsset A level sequence asset to playback at runtime

used where the level sequence does not already exist in the world.

DelayBeforeWarmUp float32 DelayBeforeWarmUp

The number of seconds to wait (in real-time) before we start playing back the warm up frames.  Useful for allowing post processing effects to settle down before capturing the animation.

DelayBeforeShotWarmUp float32 DelayBeforeShotWarmUp

The number of seconds to wait (in real-time) at shot boundaries.  Useful for allowing post processing effects to settle down before capturing the animation.

DelayEveryFrame float32 DelayEveryFrame

The number of seconds to wait (in real-time) at every frame.  Useful for allowing post processing effects to settle down before capturing the animation.

## CAPTURESETTINGS

### BurnInOptions

```
ULevelSequenceBurnInOptions BurnInOptions SEQUENCE bWriteFinalCutProXML bool bWriteFinalCutProXML
```

Whether to write Final Cut Pro XML files (XMLs) if the sequence contains shots

### bWriteEditDecisionList

```
bool bWriteEditDecisionList
```

Whether to write edit decision lists (EDLs) if the sequence contains shots

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAutomatedLevelSequenceCapture::StaticClass()
```
