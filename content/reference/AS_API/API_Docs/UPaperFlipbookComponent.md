# UPaperFlipbookComponent

**Visibility:** public

## Inheritance

UMeshComponent → UPaperFlipbookComponent

## COMPONENTS \| FLIPBOOK

### FlipbookLengthInFrames

```
const int FlipbookLengthInFrames
```

Get length of the flipbook (in frames)

### PlaybackPositionInFrames

```
const int PlaybackPositionInFrames
```

Get the current playback position (in frames) of the flipbook

### FlipbookFramerate

```
const float32 FlipbookFramerate
```

Get the nominal framerate that the flipbook will be played back at (ignoring PlayRate), in frames per second

### FlipbookLength

```
const float32 FlipbookLength
```

Get length of the flipbook (in seconds)

### PlaybackPosition

```
const float32 PlaybackPosition
```

Get the current playback position (in seconds) of the flipbook

---

## SPRITE

### Flipbook

```
UPaperFlipbook Flipbook
```

Gets the flipbook used by this instance.

### SourceFlipbook

```
UPaperFlipbook SourceFlipbook
```

Flipbook currently being played

### PlayRate

```
float32 PlayRate
```

Current play rate of the flipbook

### SpriteColor

```
FLinearColor SpriteColor
```

Vertex color to apply to the frames

---

## VARIABLES

### OnFinishedPlaying

```
FFlipbookFinishedPlaySignature OnFinishedPlaying
```

Event called whenever a non-looping flipbook finishes playing (either reaching the beginning or the end, depending on the play direction)

---

## COMPONENTS \| FLIPBOOK

### Reverse

```
void Reverse()
```

Start playback of flipbook in reverse

### GetFlipbookFramerate

```
float32 GetFlipbookFramerate()const
```

Get the nominal framerate that the flipbook will be played back at (ignoring PlayRate), in frames per second

### GetFlipbookLength

```
float32 GetFlipbookLength()const
```

Get length of the flipbook (in seconds)

### GetFlipbookLengthInFrames

```
int GetFlipbookLengthInFrames()const
```

Get length of the flipbook (in frames)

### GetPlaybackPosition

```
float32 GetPlaybackPosition()const
```

Get the current playback position (in seconds) of the flipbook

### GetPlaybackPositionInFrames

```
int GetPlaybackPositionInFrames()const
```

Get the current playback position (in frames) of the flipbook

### GetPlayRate

```
float32 GetPlayRate()const
```

Get the current play rate for this flipbook

### SetNewTime

```
void SetNewTime(float32 NewTime)
```

Set the new playback position time to use

### IsLooping

```
bool IsLooping()const
```

Get whether we are looping or not

### IsPlaying

```
bool IsPlaying()const
```

Get whether this flipbook is playing or not.

### IsReversing

```
bool IsReversing()const
```

Get whether we are reversing or not

### Play

```
void Play()
```

Start playback of flipbook

### PlayFromStart

```
void PlayFromStart()
```

Start playback of flipbook from the start

### SetPlayRate

```
void SetPlayRate(float32 NewRate)
```

Sets the new play rate for this flipbook

### ReverseFromEnd

```
void ReverseFromEnd()
```

Start playback of flipbook in reverse from the end

### SetLooping

```
void SetLooping(bool bNewLooping)
```

true means we should loop, false means we should not.

### SetPlaybackPositionInFrames

```
void SetPlaybackPositionInFrames(int NewFramePosition, bool bFireEvents)
```

Jump to a position in the flipbook (expressed in frames). If bFireEvents is true, event functions will fire, otherwise they will not.

### SetPlaybackPosition

```
void SetPlaybackPosition(float32 NewPosition, bool bFireEvents)
```

Jump to a position in the flipbook (expressed in seconds). If bFireEvents is true, event functions will fire, otherwise they will not.

### Stop

```
void Stop()
```

Stop playback of flipbook

---

## SPRITE

### GetFlipbook

```
UPaperFlipbook GetFlipbook()
```

Gets the flipbook used by this instance.

### SetFlipbook

```
bool SetFlipbook(UPaperFlipbook NewFlipbook)
```

Change the flipbook used by this instance (will reset the play time to 0 if it is a new flipbook).

### GetSpriteColor

```
FLinearColor GetSpriteColor()const
```

Returns the current color of the sprite

### SetSpriteColor

```
void SetSpriteColor(FLinearColor NewColor)
```

Set color of the sprite

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UPaperFlipbookComponent UPaperFlipbookComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UPaperFlipbookComponent UPaperFlipbookComponent::GetOrCreate

```
static UPaperFlipbookComponent UPaperFlipbookComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UPaperFlipbookComponent UPaperFlipbookComponent::Create

```
static UPaperFlipbookComponent UPaperFlipbookComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UPaperFlipbookComponent::StaticClass

```
static UClass UPaperFlipbookComponent::StaticClass()
```
