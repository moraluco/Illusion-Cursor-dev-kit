# UMovieSceneAudioSection

**Visibility:** public

## Inheritance

UMovieSceneSection → UMovieSceneAudioSection

## Description

Audio section, for use in the master audio, or by attached audio objects

## ATTENUATION

### bOverrideAttenuation

```
bool bOverrideAttenuation
```

Should the attenuation settings on this section be used.

### AttenuationSettings

```
USoundAttenuation AttenuationSettings
```

The attenuation settings to use.

---

## AUDIO

### bSuppressSubtitles

```
bool bSuppressSubtitles
```
### bLooping

```
bool bLooping
```

Allow looping if the section length is greater than the sound duration

### Sound

```
USoundBase Sound
```

The sound cue or wave that this section plays

### StartFrameOffset

```
FFrameNumber StartFrameOffset
```

The offset into the beginning of the audio clip

---

## VARIABLES

### StartOffset

```
FFrameNumber StartOffset
```

The offset into the beginning of the audio clip

---

## SEQUENCER \| SECTION

### GetStartOffset

```
FFrameNumber GetStartOffset()const
```

Get the offset into the beginning of the audio clip

### SetSound

```
void SetSound(USoundBase InSound)
```

Sets this section's sound

### SetStartOffset

```
void SetStartOffset(FFrameNumber InStartOffset)
```

Set the offset into the beginning of the audio clip

### GetSound

```
USoundBase GetSound()const
```

Gets the sound for this section

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneAudioSection::StaticClass()
```
