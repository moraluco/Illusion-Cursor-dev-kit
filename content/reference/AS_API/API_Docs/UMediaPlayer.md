# UMediaPlayer

**Visibility:** public

## Inheritance

UObject → UMediaPlayer

## Description

Implements a media player asset that can play movies and other media sources.

## CACHING

### CacheBehind

```
FTimespan CacheBehind
```

Duration of samples to cache behind the play head (when not running as game).

@see CacheAhead, CacheBehindGame

### CacheAhead

```
FTimespan CacheAhead
```

Duration of samples to cache ahead of the play head.

### @see CacheBehind, CacheBehindGame

```
@see CacheBehind, CacheBehindGame
```

CacheBehindGame

### FTimespan CacheBehindGame

```
FTimespan CacheBehindGame
```

Duration of samples to cache behind the play head (when running as game).

@see CacheAhead, CacheBehind

---

## EDITOR

### AffectedByPIEHandling

```
bool AffectedByPIEHandling
```

Whether this player should stop when entering or exiting PIE.

---

## MEDIA \| MEDIAPLAYER

### OnMediaOpenFailed

```
FOnMediaPlayerMediaOpenFailed OnMediaOpenFailed
```

A delegate that is invoked when a media source has failed to open.

This delegate is only executed if OpenSource / OpenUrl returned true and the media failed to open asynchronously later. It is not executed if OpenSource / OpenUrl returned false, indicating an immediate failure.

@see OnMediaOpened

### OnSeekCompleted

```
FOnMediaPlayerMediaEvent OnSeekCompleted
```

A delegate that is invoked when a seek operation completed successfully.

Depending on whether the underlying player implementation performs seeks synchronously or asynchronously, this event may be executed before or after the call to Seek returns.

### OnTracksChanged

```
FOnMediaPlayerMediaEvent OnTracksChanged
```

A delegate that is invoked when the media track collection changed.

@see OnMediaOpened

### OnMediaOpened

```
FOnMediaPlayerMediaOpened OnMediaOpened
```

A delegate that is invoked when a media source has been opened.

Depending on whether the underlying player implementation opens the media synchronously or asynchronously, this event may be executed before or after the call to OpenSource / OpenUrl returns.

@see OnMediaOpenFailed, OnTracksChanged

### OnMediaClosed

```
FOnMediaPlayerMediaEvent OnMediaClosed
```

A delegate that is invoked when a media source has been closed.

### OnPlaybackResumed

```
FOnMediaPlayerMediaEvent OnPlaybackResumed
```

A delegate that is invoked when media playback has been resumed.

@see OnPlaybackSuspended

### OnPlaybackSuspended

```
FOnMediaPlayerMediaEvent OnPlaybackSuspended
```

A delegate that is invoked when media playback has been suspended.

@see OnPlaybackResumed

### Duration

```
const FTimespan Duration
```

Get the media's duration.

### Rate

```
float32 Rate
```

Get the media's current playback rate.

### PlayerName

```
const FName PlayerName
```

Get the name of the current native media player.

### DesiredPlayerName

```
FName DesiredPlayerName
```

Get the name of the current desired native player.

### OnEndReached

```
FOnMediaPlayerMediaEvent OnEndReached
```

A delegate that is invoked when playback has reached the end of the media.

### Url

```
const FString Url
```

Get the URL of the currently loaded media, if any.

### MediaName

```
const FText MediaName
```

Get the human readable name of the currently loaded media source.

### TimeStamp

```
const UMediaTimeStampInfo TimeStamp
```

Get the media's current playback timestamp.

### Time

```
const FTimespan Time
```

Get the media's current playback time.

---

## OUTPUT

### NativeAudioOut

```
bool NativeAudioOut
```

Output any audio via the operating system's sound mixer instead of a Sound Wave asset.

If enabled, the assigned Sound Wave asset will be ignored. The SetNativeVolume function can then be used to change the audio output volume at runtime. Note that not all media player plug-ins may support native audio output on all platforms.

@see SetNativeVolume

---

## PLAYBACK

PlaylistIndex

### PlaylistIndex

```
const int PlaylistIndex
```

The current index of the source in the play list being played.

Use the Previous and Next methods to change this value at runtime.

@see Next, Previous

### TimeDelay

```
FTimespan TimeDelay
```

Delay of the player's time.

@see SetTimeDelay, GetTimeDelay

### Playlist

```
const UMediaPlaylist Playlist
```

The play list to use, if any.

Use the OpenPlaylist or OpenPlaylistIndex function to change this value at runtime.

@see OpenPlaylist, OpenPlaylistIndex

### PlayOnOpen

```
bool PlayOnOpen
```

Automatically start playback after media opened successfully.

If disabled, listen to the OnMediaOpened Blueprint event to detect when the media finished opening, and then start playback using the Play function.

@see OpenFile, OpenPlaylist, OpenPlaylistIndex, OpenSource, OpenUrl, Play

### Shuffle

```
bool Shuffle
```

Whether playback should shuffle media sources in the play list.

@see OpenPlaylist, OpenPlaylistIndex

### Loop

```
bool Loop
```

Whether the player should loop when media playback reaches the end.

Use the SetLooping function to change this value at runtime.

@see IsLooping, SetLooping

---

## VIEWSETTINGS

### ViewRotation

```
const FRotator ViewRotation
```

The initial view rotation.

This setting is used only for 360 videos. It determines the rotation of the video's view. To modify the view orientation at runtime in Blueprints, use the GetViewRotation and SetViewRotation functions.

### Please note that not all players may support video view rotations.

```
Please note that not all players may support video view rotations.
```

@see GetViewRotation, SetViewRotation, HorizontalFieldOfView, VerticalFieldOfView

### VerticalFieldOfView

```
float32 VerticalFieldOfView
```

The initial vertical field of view (in Euler degrees; default = 60).

This setting is used only for 360 videos. It determines the portion of the video that is visible at a time. To modify the field of view at runtime in Blueprints, use the SetHorizontalFieldOfView function.

### Please note that some 360 video players may be able to change only the horizontal field of view, and this setting may be ignored.

```
Please note that some 360 video players may be able to change only the horizontal field of view, and this setting may be ignored.
```

@see GetVerticalFieldOfView, SetVerticalFieldOfView, HorizontalFieldOfView, ViewRotation

### HorizontalFieldOfView

```
float32 HorizontalFieldOfView
```

The initial horizontal field of view (in Euler degrees; default = 90).

### This setting is used only for 360 videos. It determines the portion of the video that is visible at a time. To modify the field of view at runtime in Blueprints, use the SetHorizontalFieldOfView function.

```
This setting is used only for 360 videos. It determines the portion of the video that is visible at a time. To modify the field of view at runtime in Blueprints, use the SetHorizontalFieldOfView function.
```

@see GetHorizontalFieldOfView, SetHorizontalFieldOfView, VerticalFieldOfView, ViewRotation

---

## MEDIA \| MEDIAPLAYER

### IsPreparing

```
bool IsPreparing()const
```

Check whether the media is currently opening or buffering.

**Returns**

true if playback is being prepared, false otherwise.

CanPlaySource
bool CanPlaySource(
UMediaSource 	MediaSource
	)

Check whether the specified media source can be played by this player.

If a desired player name is set for this player, it will only check whether that particular player type can play the specified source.

**Parameters**

MediaSource
UMediaSource

The media source to check.

**Returns**

true if the media source can be opened, false otherwise.

CanPlayUrl
bool CanPlayUrl(
FString 	Url
	)

Check whether the specified URL can be played by this player.

If a desired player name is set for this player, it will only check whether that particular player type can play the specified URL.

**Parameters**

Url
FString

The URL to check.

Close
void Close()

Close the currently open media, if any.

See: OnMediaClosed, OpenPlaylist, OpenPlaylistIndex, OpenSource, OpenUrl, Pause, Play

GetAudioTrackChannels
int GetAudioTrackChannels(
int 	TrackIndex,
int 	FormatIndex
	) const

Get the number of channels in the specified audio track.

**Parameters**

TrackIndex
int

Index of the audio track, or INDEX_NONE for the selected one.

FormatIndex
int

Index of the track format, or INDEX_NONE for the selected one.

**Returns**

Number of channels.

GetAudioTrackSampleRate
int GetAudioTrackSampleRate(
int 	TrackIndex,
int 	FormatIndex
	) const

Get the sample rate of the specified audio track.

**Parameters**

TrackIndex
int

Index of the audio track, or INDEX_NONE for the selected one.

FormatIndex
int

Index of the track format, or INDEX_NONE for the selected one.

**Returns**

Samples per second.

GetAudioTrackType
FString GetAudioTrackType(
int 	TrackIndex,
int 	FormatIndex
	) const

Get the type of the specified audio track format.

**Parameters**

TrackIndex
int

The index of the track, or INDEX_NONE for the selected one.

FormatIndex
int

Index of the track format, or INDEX_NONE for the selected one.

**Returns**

Audio format type string.

GetDesiredPlayerName
FName GetDesiredPlayerName() const

Get the name of the current desired native player.

**Returns**

The name of the desired player, or NAME_None if not set.

GetDuration
FTimespan GetDuration() const

Get the media's duration.

**Returns**

A time span representing the duration.

GetHorizontalFieldOfView
float32 GetHorizontalFieldOfView() const

Get the current horizontal field of view (only for 360 videos).

**Returns**

Horizontal field of view (in Euler degrees).

GetMediaName
FText GetMediaName() const

Get the human readable name of the currently loaded media source.

**Returns**

Media source name, or empty text if no media is opened

GetNumTrackFormats
int GetNumTrackFormats(
EMediaPlayerTrack 	TrackType,
int 	TrackIndex
	) const

Get the number of formats of the specified track.

**Parameters**

TrackType
EMediaPlayerTrack

The type of media tracks.

TrackIndex
int

The index of the track.

**Returns**

Number of formats.

GetNumTracks
int GetNumTracks(
EMediaPlayerTrack 	TrackType
	) const

Get the number of tracks of the given type.

**Parameters**

TrackType
EMediaPlayerTrack

The type of media tracks.

**Returns**

Number of tracks.

GetPlayerName
FName GetPlayerName() const

Get the name of the current native media player.

**Returns**

Player name, or NAME_None if not available.

GetPlaylist
UMediaPlaylist GetPlaylist() const

Get the current play list.

Media players always have a valid play list. In C++ code you can use the GetPlaylistRef to get a reference instead of a pointer to it.

**Returns**

The play list.

GetPlaylistIndex
int GetPlaylistIndex() const

Get the current play list index.

**Returns**

Play list index.

GetRate
float32 GetRate() const

Get the media's current playback rate.

**Returns**

The playback rate.

GetSelectedTrack
int GetSelectedTrack(
EMediaPlayerTrack 	TrackType
	) const

Get the index of the currently selected track of the given type.

**Parameters**

TrackType
EMediaPlayerTrack

The type of track to get.

**Returns**

The index of the selected track, or INDEX_NONE if no track is active.

GetTime
FTimespan GetTime() const

Get the media's current playback time.

**Returns**

Playback time.

GetTimeDelay
FTimespan GetTimeDelay() const

Delay of the player's time.

**Returns**

Delay added to the player's time used to manually sync multiple sources.

GetTimeStamp
UMediaTimeStampInfo GetTimeStamp() const

Get the media's current playback timestamp.

**Returns**

Playback timestamp.

GetTrackDisplayName
FText GetTrackDisplayName(
EMediaPlayerTrack 	TrackType,
int 	TrackIndex
	) const

Get the human readable name of the specified track.

**Parameters**

TrackType
EMediaPlayerTrack

The type of track.

TrackIndex
int

The index of the track, or INDEX_NONE for the selected one.

**Returns**

Display name.

GetTrackFormat
int GetTrackFormat(
EMediaPlayerTrack 	TrackType,
int 	TrackIndex
	) const

Get the index of the active format of the specified track type.

**Parameters**

TrackType
EMediaPlayerTrack

The type of track.

TrackIndex
int

The index of the track, or INDEX_NONE for the selected one.

**Returns**

The index of the selected format.

GetTrackLanguage
FString GetTrackLanguage(
EMediaPlayerTrack 	TrackType,
int 	TrackIndex
	) const

Get the language tag of the specified track.

**Parameters**

TrackType
EMediaPlayerTrack

The type of track.

TrackIndex
int

The index of the track, or INDEX_NONE for the selected one.

**Returns**

Language tag, i.e. "en-US" for English, or "und" for undefined.

GetUrl
const FString& GetUrl() const

Get the URL of the currently loaded media, if any.

**Returns**

Media URL, or empty string if no media was loaded.

GetVerticalFieldOfView
float32 GetVerticalFieldOfView() const

Get the current vertical field of view (only for 360 videos).

**Returns**

Vertical field of view (in Euler degrees), or 0.0 if not available.

GetVideoTrackAspectRatio
float32 GetVideoTrackAspectRatio(
int 	TrackIndex,
int 	FormatIndex
	) const

Get the aspect ratio of the specified video track.

**Parameters**

TrackIndex
int

Index of the video track, or INDEX_NONE for the selected one.

FormatIndex
int

Index of the track format, or INDEX_NONE for the selected one.

**Returns**

Aspect ratio.

GetVideoTrackDimensions
FIntPoint GetVideoTrackDimensions(
int 	TrackIndex,
int 	FormatIndex
	) const

Get the current dimensions of the specified video track.

**Parameters**

TrackIndex
int

The index of the track, or INDEX_NONE for the selected one.

FormatIndex
int

Index of the track format, or INDEX_NONE for the selected one.

**Returns**

Video dimensions (in pixels).

GetVideoTrackFrameRate
float32 GetVideoTrackFrameRate(
int 	TrackIndex,
int 	FormatIndex
	) const

Get the frame rate of the specified video track.

**Parameters**

TrackIndex
int

The index of the track, or INDEX_NONE for the selected one.

FormatIndex
int

Index of the track format, or INDEX_NONE for the selected one.

**Returns**

Frame rate (in frames per second).

GetVideoTrackType
FString GetVideoTrackType(
int 	TrackIndex,
int 	FormatIndex
	) const

Get the type of the specified video track format.

**Parameters**

TrackIndex
int

The index of the track, or INDEX_NONE for the selected one.

FormatIndex
int

Index of the track format, or INDEX_NONE for the selected one.

**Returns**

Video format type string.

GetViewRotation
FRotator GetViewRotation() const

Get the current view rotation (only for 360 videos).

**Returns**

View rotation, or zero rotator if not available.

HasError
bool HasError() const

Check whether the player is in an error state.

When the player is in an error state, no further operations are possible.  The current media must be closed, and a new media source must be opened before the player can be used again. Errors are usually caused by faulty media files or interrupted network connections.

See: IsReady

IsBuffering
bool IsBuffering() const

Check whether playback is buffering data.

**Returns**

true if looping, false otherwise.

IsClosed
bool IsClosed() const

Whether media is currently closed.

**Returns**

true if media is closed, false otherwise.

IsConnecting
bool IsConnecting() const

Check whether the player is currently connecting to a media source.

**Returns**

true if connecting, false otherwise.

IsLooping
bool IsLooping() const

Check whether playback is looping.

**Returns**

true if looping, false otherwise.

IsPaused
bool IsPaused() const

Check whether playback is currently paused.

**Returns**

true if playback is paused, false otherwise.

IsPlaying
bool IsPlaying() const

Check whether playback has started.

**Returns**

true if playback has started, false otherwise.

CanPause
bool CanPause() const

Check whether media playback can be paused right now.

Playback can be paused if the media supports pausing and if it is currently playing.

**Returns**

true if pausing playback can be paused, false otherwise.

IsReady
bool IsReady() const

Check whether media is ready for playback.

A player is ready for playback if it has a media source opened that finished preparing and is not in an error state.

**Returns**

true if media is ready, false otherwise.

Next
bool Next()

Open the next item in the current play list.

The player will start playing the new media source if it was playing something previously, otherwise it will only open the media source.

**Returns**

true on success, false otherwise.

OpenFile
bool OpenFile(
FString 	FilePath
	)

Opens the specified media file path.

A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the media is ready!

**Parameters**

FilePath
FString

The file path to open.

**Returns**

true if the file path will be opened, false otherwise.

OpenPlaylist
bool OpenPlaylist(
UMediaPlaylist 	InPlaylist
	)

Open the first media source in the specified play list.

**Parameters**

InPlaylist
UMediaPlaylist

The play list to open.

**Returns**

true if the source will be opened, false otherwise.

OpenPlaylistIndex
bool OpenPlaylistIndex(
UMediaPlaylist 	InPlaylist,
int 	Index
	)

Open a particular media source in the specified play list.

**Parameters**

InPlaylist
UMediaPlaylist

The play list to open.

Index
int

The index of the source to open.

**Returns**

true if the source will be opened, false otherwise.

OpenSource
bool OpenSource(
UMediaSource 	MediaSource
	)

Open the specified media source.

A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the media is ready!

**Parameters**

MediaSource
UMediaSource

The media source to open.

**Returns**

true if the source will be opened, false otherwise.

OpenSourceLatent
void OpenSourceLatent(
FLatentActionInfo 	LatentInfo,
UMediaSource 	MediaSource,
FMediaPlayerOptions 	Options,
bool& 	bSuccess
	)

Open the specified media source with options using a latent action.

A result of true indicates that the player successfully completed all requested operations.

**Parameters**

MediaSource
UMediaSource

The media source to open.

Options
FMediaPlayerOptions

The media player options to apply.

bSuccess
bool&

All requested operations have completed successfully.

OpenSourceWithOptions
bool OpenSourceWithOptions(
UMediaSource 	MediaSource,
FMediaPlayerOptions 	Options
	)

Open the specified media source with supplied options applied.

A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the media is ready!

**Parameters**

MediaSource
UMediaSource

The media source to open.

Options
FMediaPlayerOptions

The media player options to apply.

**Returns**

true if the source will be opened, false otherwise.

OpenUrl
bool OpenUrl(
FString 	Url
	)

Opens the specified media URL.

A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the media is ready!

**Parameters**

Url
FString

The URL to open.

**Returns**

true if the URL will be opened, false otherwise.

Pause
bool Pause()

Pauses media playback.

This is the same as setting the playback rate to 0.0.

**Returns**

true if playback is being paused, false otherwise.

Play
bool Play()

Starts media playback.

This is the same as setting the playback rate to 1.0.

**Returns**

true if playback is starting, false otherwise.

PlayAndSeek
void PlayAndSeek()

Starts playback from the media opened event, but can be used elsewhere.

Previous
bool Previous()

Open the previous item in the current play list.

The player will start playing the new media source if it was playing something previously, otherwise it will only open the media source.

**Returns**

true on success, false otherwise.

Reopen
bool Reopen()

Reopens the currently opened media or play list.

**Returns**

true if the media will be opened, false otherwise.

Rewind
bool Rewind()

Rewinds the media to the beginning.

This is the same as seeking to zero time.

**Returns**

true if rewinding, false otherwise.

Seek
bool Seek(
FTimespan 	Time
	)

Seeks to the specified playback time.

**Parameters**

Time
FTimespan

The playback time to set.

**Returns**

true on success, false otherwise.

SelectTrack
bool SelectTrack(
EMediaPlayerTrack 	TrackType,
int 	TrackIndex
	)

Select the active track of the given type.

The selected track will use its currently active format. Active formats will be remembered on a per track basis. The first available format is active by default. To switch the track format, use SetTrackFormat instead.

**Parameters**

TrackType
EMediaPlayerTrack

The type of track to select.

TrackIndex
int

The index of the track to select, or INDEX_NONE to deselect.

**Returns**

true if the track was selected, false otherwise.

SetBlockOnTime
void SetBlockOnTime(
FTimespan 	Time
	)

Set the time on which to block.

If set, this player will block in TickInput or TickFetch until the video sample for the specified time are actually available.

**Parameters**

Time
FTimespan

The time to block on, or FTimespan::MinValue to disable.

SetDesiredPlayerName
void SetDesiredPlayerName(
FName 	PlayerName
	)

Set the name of the desired native player.

**Parameters**

PlayerName
FName

The name of the player to set.

SetLooping
bool SetLooping(
bool 	Looping
	)

Enables or disables playback looping.

**Parameters**

Looping
bool

Whether playback should be looped.

**Returns**

true on success, false otherwise.

SetMediaOptions
void SetMediaOptions(
const 	UMediaSource 	Options
	)

Sets the media options used by the player.

**Parameters**

Options
const UMediaSource

Options to pass to the player.

SetNativeVolume
bool SetNativeVolume(
float32 	Volume
	)

Set the volume on the native player if not mixing with Sound Wave asset.

The SetNativeVolume can be used to change the audio output volume at runtime. Note that not all media player plug-ins may support native audio output on all platforms.

**Parameters**

Volume
float32

The volume to set.

**Returns**

true on success, false otherwise.

SetRate
bool SetRate(
float32 	Rate
	)

Changes the media's playback rate.

**Parameters**

Rate
float32

The playback rate to set.

**Returns**

true on success, false otherwise.

SetTimeDelay
void SetTimeDelay(
FTimespan 	TimeDelay
	)

Delay of the player's time.

This setting can be used to manually sync multiple sources.  Set to 1 seconds, if you would like that Player to play 1 second behind his current time.  If the value is too big, it is possible that the player would not hold that frame for that long.

**Returns**

true on success, false otherwise.

SetTrackFormat
bool SetTrackFormat(
EMediaPlayerTrack 	TrackType,
int 	TrackIndex,
int 	FormatIndex
	)

Set the format on the specified track.

Selecting the format will not switch to the specified track. To switch tracks, use SelectTrack instead. If the track is already selected, the format change will be applied immediately.

**Parameters**

TrackType
EMediaPlayerTrack

The type of track to update.

TrackIndex
int

The index of the track to update.

FormatIndex
int

The index of the format to select (must be valid).

**Returns**

true if the track was selected, false otherwise.

SetVideoTrackFrameRate
bool SetVideoTrackFrameRate(
int 	TrackIndex,
int 	FormatIndex,
float32 	FrameRate
	)

Set the frame rate of the specified video track.

**Parameters**

TrackIndex
int

The index of the track, or INDEX_NONE for the selected one.

FormatIndex
int

Index of the track format, or INDEX_NONE for the selected one.

FrameRate
float32

The frame rate to set (must be in range of format's supported frame rates).

**Returns**

true on success, false otherwise.

SetViewField
bool SetViewField(
float32 	Horizontal,
float32 	Vertical,
bool 	Absolute
	)

Set the field of view (only for 360 videos).

**Parameters**

Horizontal
float32

Horizontal field of view (in Euler degrees).

Vertical
float32

Vertical field of view (in Euler degrees).

**Returns**

true on success, false otherwise.

SetViewRotation
bool SetViewRotation(
FRotator 	Rotation,
bool 	Absolute
	)

Set the view's rotation (only for 360 videos).

**Parameters**

Rotation
FRotator

The desired view rotation.

**Returns**

true on success, false otherwise.

SupportsRate
bool SupportsRate(
float32 	Rate,
bool 	Unthinned
	) const

Check whether the specified playback rate is supported.

**Parameters**

Rate
float32

The playback rate to check.

Unthinned
bool

Whether no frames should be dropped at the given rate.

SupportsScrubbing
bool SupportsScrubbing() const

Check whether the currently loaded media supports scrubbing.

**Returns**

true if scrubbing is supported, false otherwise.

SupportsSeeking
bool SupportsSeeking() const

Check whether the currently loaded media can jump to a certain position.

**Returns**

true if seeking is supported, false otherwise.

---

## FUNCTIONS

### SetShuffle

```
void SetShuffle(bool Value)
```

GetLoop

### bool GetLoop

```
bool GetLoop()const SetLoop
```

void SetLoop(

### bool 	Value

```
bool 	Value 	)
```

SetHorizontalFieldOfView

### void SetHorizontalFieldOfView

```
void SetHorizontalFieldOfView(const float32& Value)
```

SetVerticalFieldOfView

### void SetVerticalFieldOfView

```
void SetVerticalFieldOfView(const float32& Value)
```

GetShuffle

### bool GetShuffle

```
bool GetShuffle()const STATIC FUNCTIONS
```

StaticClass

### static UClass UMediaPlayer::StaticClass

```
static UClass UMediaPlayer::StaticClass()
```
