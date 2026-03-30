# UMovieSceneMediaSection

**Visibility:** public

## Inheritance

UMovieSceneSection → UMovieSceneMediaSection

## Description

Implements a movie scene section for media playback.

## MEDIA

### bLooping

```
bool bLooping
```

Should the media player be set to loop? This can be helpful for media formats that can use this information (such as exr sequences) to pre-cache the starting data when nearing the end of playback. Does not cause the media to continue playing after the end of the section is reached.

### StartFrameOffset

```
FFrameNumber StartFrameOffset
```

Offset into the source media.

### MediaTexture

```
UMediaTexture MediaTexture
```

The media texture that receives the track's video output.

### MediaSoundComponent

```
UMediaSoundComponent MediaSoundComponent
```

The media sound component that receives the track's audio output.

### bUseExternalMediaPlayer

```
bool bUseExternalMediaPlayer
```

If true, this track will control a previously created media player instead of automatically creating one.

### ExternalMediaPlayer

```
UMediaPlayer ExternalMediaPlayer
```

The external media player this track should control.

### MediaSource

```
UMediaSource MediaSource
```

The source to play with this video track.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneMediaSection::StaticClass()
```
