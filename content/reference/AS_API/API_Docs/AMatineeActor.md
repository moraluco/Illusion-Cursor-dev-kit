# AMatineeActor

**Visibility:** public

## Inheritance

AActor → AMatineeActor → AMatineeActorCameraAnim → CINEMATIC

## Description

bHideHud bool bHideHud

Hide HUD during play

bHidePlayer bool bHidePlayer

Hide Player Pawn during play

OnPause FOnMatineeEvent OnPause

Event triggered when the matinee is paused for whatever reason

bDisableLookAtInput bool bDisableLookAtInput

Disable LookAt Input from player during play

OnPlay FOnMatineeEvent OnPlay

Event triggered when the matinee is played for whatever reason

OnStop FOnMatineeEvent OnStop

Event triggered when the matinee is stopped for whatever reason

bDisableMovementInput bool bDisableMovementInput

Disable Input from player during play

## MATINEEACTOR

### PreferredSplitScreenNum

```
int PreferredSplitScreenNum
```

Preferred local viewport number (when split screen is active) the director track should associate with, or zero for 'all'.

### MatineeData

```
UInterpData MatineeData
```

The matinee data used by this actor

### bClientSideOnly

```
bool bClientSideOnly
```

Indicates that this interpolation does not affect gameplay. This means that: -it is not replicated via MatineeActor -it is not ticked if no affected Actors are visible -on dedicated servers, it is completely ignored

### bDisableRadioFilter

```
bool bDisableRadioFilter
```

If true, disables the realtime radio effect

---

## PLAY

bIsPlaying

### bIsPlaying

```
const bool bIsPlaying
```

properties that may change on InterpAction that we need to notify clients about, since the object's properties will not be replicated

### bSkipUpdateIfNotVisible

```
bool bSkipUpdateIfNotVisible
```

if bClientSideOnly is true, whether this matinee should be completely skipped if none of the affected Actors are visible

### bIsSkippable

```
bool bIsSkippable
```

Lets you skip the matinee with the CANCELMATINEE exec command. Triggers all events to the end along the way.

### bForceStartPos

```
bool bForceStartPos
```

Lets you force the sequence to always start at ForceStartPosition

### bLooping

```
bool bLooping
```

If sequence should pop back to beginning when finished.  Note, if true, will never get Completed/Reversed events - sequence must be explicitly Stopped.

### ForceStartPosition

```
float32 ForceStartPosition
```

Time position to always start at if bForceStartPos is set to true.

### bPlayOnLevelLoad

```
bool bPlayOnLevelLoad
```

If true, the matinee will play when the level is loaded.

### InterpPosition

```
float32 InterpPosition
```
### PlayRate

```
float32 PlayRate
```

Time multiplier for playback.

---

## REWIND

### bRewindIfAlreadyPlaying

```
bool bRewindIfAlreadyPlaying
```

Only used if bRewindOnPlay if true. Defines what should happen if the Play input is activated while currently playing.  If true, hitting Play while currently playing will pop the position back to the start and begin playback over again.  If false, hitting Play while currently playing will do nothing.

### bNoResetOnRewind

```
bool bNoResetOnRewind
```

If true, when rewinding this interpolation, reset the 'initial positions' of any RelateToInitial movements to the current location.  This allows the next loop of movement to proceed from the current locations.

### bRewindOnPlay

```
bool bRewindOnPlay
```

If true, sequence will rewind itself back to the start each time the Play input is activated.

---

## CINEMATIC

### Reverse

```
void Reverse()
```

Similar to play, but the playback will go backwards until the beginning of the sequence is reached.

### EnableGroupByName

```
void EnableGroupByName(FString GroupName, bool bEnable)
```

Pause

### void Pause

```
void Pause()
```

Hold playback at its current position. Calling Pause again will continue playback in its current direction.

### Play

```
void Play()
```

Begin playback of the matinee. Only called in game.  Will then advance Position by (PlayRate * Deltatime) each time the matinee is ticked.

### ChangePlaybackDirection

```
void ChangePlaybackDirection()
```

Changes the direction of playback (go in reverse if it was going forward, or vice versa)

### SetLoopingState

```
void SetLoopingState(bool bNewLooping)
```

Change the looping behaviour of this matinee

### SetPosition

```
void SetPosition(float32 NewPosition, bool bJump = false)
```

Set the position of the interpolation.  Note: if the interpolation is not currently active, this function doesn't send any Kismet events

**Parameters**

NewPosition
float32

the new position to set the interpolation to

bJump
bool

if true, teleport to the new position (don't trigger any events between the old and new positions, etc)

Stop
void Stop()

Stops playback at the current position

---

## FUNCTIONS

### GetbPlayOnLevelLoad

```
bool GetbPlayOnLevelLoad()const
```

SetbPlayOnLevelLoad

### void SetbPlayOnLevelLoad

```
void SetbPlayOnLevelLoad(bool Value)
```

GetbForceStartPos

### bool GetbForceStartPos

```
bool GetbForceStartPos()const SetbForceStartPos
```

void SetbForceStartPos(

### bool 	Value

```
bool 	Value 	)
```

GetbLooping

### bool GetbLooping

```
bool GetbLooping()const SetbLooping
```

void SetbLooping(

### bool 	Value

```
bool 	Value 	)
```

GetbRewindOnPlay

### bool GetbRewindOnPlay

```
bool GetbRewindOnPlay()const SetbRewindOnPlay
```

void SetbRewindOnPlay(

### bool 	Value

```
bool 	Value 	)
```

GetbNoResetOnRewind

### bool GetbNoResetOnRewind

```
bool GetbNoResetOnRewind()const SetbNoResetOnRewind
```

void SetbNoResetOnRewind(

### bool 	Value

```
bool 	Value 	)
```

GetbRewindIfAlreadyPlaying

### bool GetbRewindIfAlreadyPlaying

```
bool GetbRewindIfAlreadyPlaying()const SetbRewindIfAlreadyPlaying
```

void SetbRewindIfAlreadyPlaying(

### bool 	Value

```
bool 	Value 	)
```

GetbDisableRadioFilter

### bool GetbDisableRadioFilter

```
bool GetbDisableRadioFilter()const SetbDisableRadioFilter
```

void SetbDisableRadioFilter(

### bool 	Value

```
bool 	Value 	)
```

GetbClientSideOnly

### bool GetbClientSideOnly

```
bool GetbClientSideOnly()const SetbClientSideOnly
```

void SetbClientSideOnly(

### bool 	Value

```
bool 	Value 	)
```

GetbSkipUpdateIfNotVisible

### bool GetbSkipUpdateIfNotVisible

```
bool GetbSkipUpdateIfNotVisible()const SetbSkipUpdateIfNotVisible
```

void SetbSkipUpdateIfNotVisible(

### bool 	Value

```
bool 	Value 	)
```

GetbIsSkippable

### bool GetbIsSkippable

```
bool GetbIsSkippable()const SetbIsSkippable
```

void SetbIsSkippable(

### bool 	Value

```
bool 	Value 	)
```

GetbDisableMovementInput

### bool GetbDisableMovementInput

```
bool GetbDisableMovementInput()const SetbDisableMovementInput
```

void SetbDisableMovementInput(

### bool 	Value

```
bool 	Value 	)
```

GetbDisableLookAtInput

### bool GetbDisableLookAtInput

```
bool GetbDisableLookAtInput()const SetbDisableLookAtInput
```

void SetbDisableLookAtInput(

### bool 	Value

```
bool 	Value 	)
```

GetbHidePlayer

### bool GetbHidePlayer

```
bool GetbHidePlayer()const SetbHidePlayer
```

void SetbHidePlayer(

### bool 	Value

```
bool 	Value 	)
```

GetbHideHud

### bool GetbHideHud

```
bool GetbHideHud()const SetbHideHud
```

void SetbHideHud(

### bool 	Value

```
bool 	Value 	)
```

GetbIsPlaying

### bool GetbIsPlaying

```
bool GetbIsPlaying()const STATIC FUNCTIONS
```

Spawn

### static AMatineeActor AMatineeActor::Spawn

```
static AMatineeActor AMatineeActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AMatineeActor::StaticClass

```
static UClass AMatineeActor::StaticClass()
```
