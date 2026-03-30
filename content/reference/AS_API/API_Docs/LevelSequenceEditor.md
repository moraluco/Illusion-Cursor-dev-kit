# LevelSequenceEditor

## Inheritance

LevelSequenceEditor

## Description

STATIC VARIABLES SelectedObjects static const TArray<FGuid> LevelSequenceEditor::SelectedObjects CurrentLocalTime static int LevelSequenceEditor::CurrentLocalTime CurrentTime static int LevelSequenceEditor::CurrentTime FocusedLevelSequence static const ULevelSequence LevelSequenceEditor::FocusedLevelSequence SelectedChannels static const TArray<FSequencerChannelProxy> LevelSequenceEditor::SelectedChannels SelectedFolders static const TArray<UMovieSceneFolder> LevelSequenceEditor::SelectedFolders CurrentLevelSequence static const ULevelSequence LevelSequenceEditor::CurrentLevelSequence SelectedSections static const TArray<UMovieSceneSection> LevelSequenceEditor::SelectedSections SelectedTracks static const TArray<UMovieSceneTrack> LevelSequenceEditor::SelectedTracks SelectionRangeEnd static int LevelSequenceEditor::SelectionRangeEnd SelectionRangeStart static int LevelSequenceEditor::SelectionRangeStart TrackFilterNames static const TArray<FText> LevelSequenceEditor::TrackFilterNames LEVEL SEQUENCE EDITOR IsTrackFilterEnabled static bool LevelSequenceEditor::IsTrackFilterEnabled( FText 	TrackFilterName 	)

Gets whether the specified track filter is on/off

DeleteColorForChannels static void LevelSequenceEditor::DeleteColorForChannels( UClass 	Class, FString& 	Identifier 	)

Delete for specified channel idendified by it's class and identifier.

EmptySelection static void LevelSequenceEditor::EmptySelection()

Empties the current selection.

GetBoundObjects static TArray<UObject> LevelSequenceEditor::GetBoundObjects( FMovieSceneObjectBindingID 	ObjectBinding 	)

Get the object bound to the given binding ID with the current level sequence editor

GetCurrentLevelSequence static ULevelSequence LevelSequenceEditor::GetCurrentLevelSequence()

Get the currently opened root/master level sequence asset

GetCurrentLocalTime static int LevelSequenceEditor::GetCurrentLocalTime()

Get the current local playback position in frames

GetCurrentTime static int LevelSequenceEditor::GetCurrentTime()

Get the current global playback position in frames

GetCustomColorForChannel static FLinearColor LevelSequenceEditor::GetCustomColorForChannel( UClass 	Class, FString 	Identifier 	)

Get custom color for specified channel idendified by it's class and identifier,if none exists will return white

GetFocusedLevelSequence static ULevelSequence LevelSequenceEditor::GetFocusedLevelSequence()

Get the currently focused/viewed level sequence asset if there is a hierarchy of sequences.

GetSelectedChannels static TArray<FSequencerChannelProxy> LevelSequenceEditor::GetSelectedChannels()

Gets the currently selected channels.

GetSelectedFolders static TArray<UMovieSceneFolder> LevelSequenceEditor::GetSelectedFolders()

Gets the currently selected folders.

GetSelectedObjects static TArray<FGuid> LevelSequenceEditor::GetSelectedObjects()

Gets the currently selected Object Guids

GetSelectedSections static TArray<UMovieSceneSection> LevelSequenceEditor::GetSelectedSections()

Gets the currently selected sections.

GetSelectedTracks static TArray<UMovieSceneTrack> LevelSequenceEditor::GetSelectedTracks()

Gets the currently selected tracks.

GetSelectionRangeEnd static int LevelSequenceEditor::GetSelectionRangeEnd()

Get the selection range end frame.

GetSelectionRangeStart static int LevelSequenceEditor::GetSelectionRangeStart()

Get the selection range start frame.

GetTrackFilterNames static TArray<FText> LevelSequenceEditor::GetTrackFilterNames()

Gets all the available track filter names

HasCustomColorForChannel static bool LevelSequenceEditor::HasCustomColorForChannel( UClass 	Class, FString 	Identifier 	)

Get if a custom color for specified channel idendified by it's class and identifier exists

IsCameraCutLockedToViewport static bool LevelSequenceEditor::IsCameraCutLockedToViewport()

Check whether the lock for the viewport to the camera cuts is enabled.

IsLevelSequenceLocked static bool LevelSequenceEditor::IsLevelSequenceLocked()

Check whether the current level sequence and its descendants are locked for editing.

IsPlaying static bool LevelSequenceEditor::IsPlaying()

Check whether the sequence is actively playing.

CloseLevelSequence static void LevelSequenceEditor::CloseLevelSequence()

Close

OpenLevelSequence static bool LevelSequenceEditor::OpenLevelSequence( ULevelSequence 	LevelSequence 	)

Open a level sequence asset

Pause static void LevelSequenceEditor::Pause()

Pause the current level sequence

Play static void LevelSequenceEditor::Play()

Play the current level sequence

PlayTo static void LevelSequenceEditor::PlayTo( FMovieSceneSequencePlaybackParams 	PlaybackParams 	)

Play from the current time to the requested time in frames

RefreshCurrentLevelSequence static void LevelSequenceEditor::RefreshCurrentLevelSequence()

Refresh Sequencer UI.

SelectChannels static void LevelSequenceEditor::SelectChannels( TArray<FSequencerChannelProxy> 	Channels 	)

### Select channels

```
Select channels
```

SelectFolders

### static void LevelSequenceEditor::SelectFolders

```
static void LevelSequenceEditor::SelectFolders(TArray<UMovieSceneFolder> Folders)
```

### Select folders

```
Select folders
```

SelectObjects

### static void LevelSequenceEditor::SelectObjects

```
static void LevelSequenceEditor::SelectObjects(TArray<FGuid> ObjectBinding)
```

Select objects by GUID

### SelectSections

```
static void LevelSequenceEditor::SelectSections(TArray<UMovieSceneSection> Sections)
```

### Select sections

```
Select sections
```

SelectTracks

### static void LevelSequenceEditor::SelectTracks

```
static void LevelSequenceEditor::SelectTracks(TArray<UMovieSceneTrack> Tracks)
```

### Select tracks

```
Select tracks
```

SetCurrentLocalTime

### static void LevelSequenceEditor::SetCurrentLocalTime

```
static void LevelSequenceEditor::SetCurrentLocalTime(int NewFrame)
```

Set local playback position for the current level sequence in frames

### SetCurrentTime

```
static void LevelSequenceEditor::SetCurrentTime(int NewFrame)
```

Set global playback position for the current level sequence in frames

### SetCustomColorForChannel

```
static void LevelSequenceEditor::SetCustomColorForChannel(UClass Class, FString Identifier, FLinearColor NewColor)
```

Set Custom Color for specified channel idendified by it's class and identifier. This will be stored in editor user preferences.

### SetCustomColorForChannels

```
static void LevelSequenceEditor::SetCustomColorForChannels(UClass Class, TArray<FString> Identifiers, TArray<FLinearColor> NewColors)
```

Set Custom Color for specified channels idendified by it's class and identifiers. This will be stored in editor user preferences.

### SetLockCameraCutToViewport

```
static void LevelSequenceEditor::SetLockCameraCutToViewport(bool bLock)
```

Sets the lock for the viewport to the camera cuts.

### SetLockLevelSequence

```
static void LevelSequenceEditor::SetLockLevelSequence(bool bLock)
```

Sets the lock for the current level sequence and its descendants for editing.

### SetRandomColorForChannels

```
static void LevelSequenceEditor::SetRandomColorForChannels(UClass Class, TArray<FString> Identifiers)
```

Set Random Colors for specified channels idendified by it's class and identifiers. This will be stored in editor user preferences.

### SetSelectionRangeEnd

```
static void LevelSequenceEditor::SetSelectionRangeEnd(int NewFrame)
```

Set the selection range end frame.

### SetSelectionRangeStart

```
static void LevelSequenceEditor::SetSelectionRangeStart(int NewFrame)
```

Set the selection range start frame.

### SetTrackFilterEnabled

```
static void LevelSequenceEditor::SetTrackFilterEnabled(FText TrackFilterName, bool bEnabled)
```

Sets the specified track filter to be on or off
