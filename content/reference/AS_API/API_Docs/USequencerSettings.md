# USequencerSettings

**Visibility:** public

## Inheritance

UObject → USequencerSettings

## Description

Serializable options for sequencer.

## CURVEEDITOR

### bLinkCurveEditorTimeRange

```
bool bLinkCurveEditorTimeRange
```

Enable or disable linking the curve editor time range to the sequencer timeline's time range.

### bSynchronizeCurveEditorSelection

```
bool bSynchronizeCurveEditorSelection
```

When enabled, changing the sequencer tree selection will also select the relevant nodes in the curve editor tree if possible.

### bIsolateCurveEditorToSelection

```
bool bIsolateCurveEditorToSelection
```

When enabled, changing the sequencer tree selection will isolate (auto-filter) the selected nodes in the curve editor.

---

## GENERAL

### TrajectoryPathCap

```
uint TrajectoryPathCap
```

Specifies the maximum number of keys to draw when rendering trajectories in viewports

### bVisualizePreAndPostRoll

```
bool bVisualizePreAndPostRoll
```

Enable or disable showing of pre and post roll visualization.

### SpawnPosition

```
ESequencerSpawnPosition SpawnPosition
```

The default location of a spawnable when it is first dragged into the viewport from the content browser.

### bCreateSpawnableCameras

```
bool bCreateSpawnableCameras
```

Enable or disable creating of spawnable cameras whenever cameras are created.

### MovieRendererName

```
FString MovieRendererName
```

Which movie renderer to use

### FrameNumberDisplayFormat

```
EFrameNumberDisplayFormats FrameNumberDisplayFormat
```

What format do we display time in to the user?

### bShowSelectedNodesOnly

```
bool bShowSelectedNodesOnly
```

Only show selected nodes in the tree view.

### bCompileDirectorOnEvaluate

```
bool bCompileDirectorOnEvaluate
```

Whether to recompile the director blueprint when the sequence is evaluated (if one exists)

### bShowDebugVisualization

```
bool bShowDebugVisualization
```

Enable or disable showing of debug visualization.

### bActivateRealtimeViewports

```
bool bActivateRealtimeViewports
```

When enabled, sequencer will activate 'Realtime' in viewports

### bCleanPlaybackMode

```
bool bCleanPlaybackMode
```

When enabled, sequencer will playback in clean mode (game view, hide viewport UI)

### bRewindOnRecord

```
bool bRewindOnRecord
```

Defines whether to jump back to the start of the sequence when a recording is started

---

## KEYFRAMING

### KeyGroupMode

```
EKeyGroupMode KeyGroupMode
```

Key group mode.

### KeyInterpolation

```
EMovieSceneKeyInterpolation KeyInterpolation
```

The interpolation type for newly created keyframes

### bAutoSetTrackDefaults

```
bool bAutoSetTrackDefaults
```

When setting keys on properties and transforms automatically update the track default values used when there are no keys.

### AutoChangeMode

```
EAutoChangeMode AutoChangeMode
```

The auto change mode (auto-key, auto-track or none).

### AllowEditsMode

```
EAllowEditsMode AllowEditsMode
```

Allow edits mode.

---

## PLAYBACK

### bRerunConstructionScripts

```
bool bRerunConstructionScripts
```

When enabled, construction scripts will be rerun on bound actors for every frame

### bEvaluateSubSequencesInIsolation

```
bool bEvaluateSubSequencesInIsolation
```

When enabled, entering a sub sequence will evaluate that sub sequence in isolation, rather than from the master sequence

---

## SNAPPING

### bSnapPlayTimeToInterval

```
bool bSnapPlayTimeToInterval
```

Enable or disable snapping the current time to the time snapping interval while scrubbing.

### bSnapPlayTimeToPressedKey

```
bool bSnapPlayTimeToPressedKey
```

Enable or disable snapping the current time to the pressed key.

### bSnapCurveValueToInterval

```
bool bSnapCurveValueToInterval
```

Enable or disable snapping the curve value to the curve value interval.

### bIsSnapEnabled

```
bool bIsSnapEnabled
```

Enable or disable snapping in the timeline.

### bSnapPlayTimeToMarkers

```
bool bSnapPlayTimeToMarkers
```

Enable or disable snapping the current time to markers while scrubbing.

### bSnapPlayTimeToSections

```
bool bSnapPlayTimeToSections
```

Enable or disable snapping the current time to section bounds while scrubbing.

### bSnapKeyTimesToKeys

```
bool bSnapKeyTimesToKeys
```

Enable or disable snapping keys to other keys.

### bSnapSectionTimesToInterval

```
bool bSnapSectionTimesToInterval
```

Enable or disable snapping sections to the time snapping interval.

### bSnapPlayTimeToKeys

```
bool bSnapPlayTimeToKeys
```

Enable or disable snapping the current time to keys while scrubbing.

### bSnapKeyTimesToInterval

```
bool bSnapKeyTimesToInterval
```

Enable or disable snapping keys to the time snapping interval.

### bSnapPlayTimeToDraggedKey

```
bool bSnapPlayTimeToDraggedKey
```

Enable or disable snapping the current time to the dragged key.

### bSnapSectionTimesToSections

```
bool bSnapSectionTimesToSections
```

Enable or disable snapping sections to other sections.

---

## TIMELINE

### KeyAreaCurveExtents

```
FString KeyAreaCurveExtents
```

The key area curve extents, stored per channel name

### KeyAreaHeightWithCurves

```
float32 KeyAreaHeightWithCurves
```

The key area height when showing curves

### JumpFrameIncrement

```
FFrameNumber JumpFrameIncrement
```

The number of frames to jump by when jumping forward or backwards.

### bDeleteKeysWhenTrimming

```
bool bDeleteKeysWhenTrimming
```

Enable or disable deleting keys that fall beyond the section range when trimming.

### bShowCombinedKeyframes

```
bool bShowCombinedKeyframes
```

Enable or disable the combined keyframes at the top node level. Disabling can improve editor performance.

### bKeepPlayRangeInSectionBounds

```
bool bKeepPlayRangeInSectionBounds
```

Enable or disable keeping the playback range constrained to the section bounds.

### bDisableSectionsAfterBaking

```
bool bDisableSectionsAfterBaking
```

Whether to disable sections after baking as opposed to deleting.

### bSnapKeysAndSectionsToPlayRange

```
bool bSnapKeysAndSectionsToPlayRange
```

Enable or disable keeping keys and sections in the playback range.

### ZoomPosition

```
ESequencerZoomPosition ZoomPosition
```

Whether to zoom in on the current position or the current time in the timeline.

### bAutoScrollEnabled

```
bool bAutoScrollEnabled
```

Enable or disable auto scroll in the timeline when playing.

### ZeroPadFrames

```
uint8 ZeroPadFrames
```

The number of zeros to pad the frame numbers by.

### bKeepCursorInPlayRangeWhileScrubbing

```
bool bKeepCursorInPlayRangeWhileScrubbing
```

Enable or disable keeping the cursor in the current playback range while scrubbing.

### ReduceKeysTolerance

```
float32 ReduceKeysTolerance
```

The tolerance to use when reducing keys

### bInfiniteKeyAreas

```
bool bInfiniteKeyAreas
```

Enable or disable setting key area sections as infinite by default.

### bShowChannelColors

```
bool bShowChannelColors
```

Enable or disable displaying channel bar colors for vector properties.

### bShowRangeSlider

```
bool bShowRangeSlider
```

Show the in/out range in the timeline with respect to the start/end range.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USequencerSettings::StaticClass()
```
