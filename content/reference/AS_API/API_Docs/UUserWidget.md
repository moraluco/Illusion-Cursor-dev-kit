# UUserWidget

**Visibility:** public

## Inheritance

UWidget → UUserWidget → UEditorUtilityWidget → ULevelSequenceBurnIn → UVREditorBaseUserWidget

## Description

The user widget is extensible by users through the WidgetBlueprint.

## APPEARANCE

### ForegroundColor

```
FSlateColor ForegroundColor
```

The foreground color of the widget, this is inherited by sub widgets.  Any color property that is marked as inherit will use this color.

### Padding

```
FMargin Padding
```

The padding area around the content.

### ColorAndOpacity

```
FLinearColor ColorAndOpacity
```

The color and opacity of this widget.  Tints all child widgets.

---

## APPEARANCE \| EVENT

### OnVisibilityChanged

```
FOnVisibilityChangedEvent OnVisibilityChanged
```

Called when the visibility has changed

---

## DESIGNER

### PreviewBackground

```
UTexture2D PreviewBackground
```

A preview background that you can use when designing the UI to get a sense of scale on the screen.  Use a texture with a screenshot of your game in it, for example if you were designing a HUD.

---

## INPUT

### bStopAction

```
bool bStopAction
```
### Priority

```
int Priority
```

---

## INTERACTION

### bIsFocusable

```
bool bIsFocusable
```

Setting this flag to true, allows this widget to accept focus when clicked, or when navigated to.

---

## PERFORMANCE

### TickFrequency

```
EWidgetTickFrequency TickFrequency
```

This widget is allowed to tick. If this is unchecked tick will never be called, animations will not play correctly, and latent actions will not execute.  Uncheck this for performance reasons only

---

## PLAYER

### OwningPlayerPawn

```
const APawn OwningPlayerPawn
```

Gets the player pawn associated with this UI.

### OwningPlayerCameraManager

```
const APlayerCameraManager OwningPlayerCameraManager
```

Gets the player camera manager associated with this UI.

USER INTERFACE|VIEWPORT

### AlignmentInViewport

```
FVector2D AlignmentInViewport
```
### AnchorsInViewport

```
FAnchors AnchorsInViewport
```

---

## VARIABLES

### PaletteCategory

```
FText PaletteCategory
```

The category this widget appears in the palette.

### RootWidget

```
UWidget RootWidget ANIMATION UnbindAllFromAnimationFinished void UnbindAllFromAnimationFinished(UWidgetAnimation Animation)
```

OnAnimationStarted

### void OnAnimationStarted

```
void OnAnimationStarted(const UWidgetAnimation Animation)
```

Called when an animation is started.

**Parameters**

Animation
const UWidgetAnimation

the animation that started

UnbindFromAnimationStarted
void UnbindFromAnimationStarted(

UWidgetAnimation 	Animation,
FWidgetAnimationDynamicEvent 	Delegate	 = 	FWidgetAnimationDynamicEvent ( )

)

Unbind an animation started delegate.

**Parameters**

Animation
UWidgetAnimation

the animation to listen for starting or finishing.

Delegate
FWidgetAnimationDynamicEvent

the delegate to call when the animation's state changes

UnbindFromAnimationFinished
void UnbindFromAnimationFinished(

UWidgetAnimation 	Animation,
FWidgetAnimationDynamicEvent 	Delegate	 = 	FWidgetAnimationDynamicEvent ( )

)

Unbind an animation finished delegate.

**Parameters**

Animation
UWidgetAnimation

the animation to listen for starting or finishing.

Delegate
FWidgetAnimationDynamicEvent

the delegate to call when the animation's state changes

UnbindAllFromAnimationStarted
void UnbindAllFromAnimationStarted(
UWidgetAnimation 	Animation
	)
BindToAnimationFinished
void BindToAnimationFinished(

UWidgetAnimation 	Animation,
FWidgetAnimationDynamicEvent 	Delegate	 = 	FWidgetAnimationDynamicEvent ( )

)

Bind an animation finished delegate.

**Parameters**

Animation
UWidgetAnimation

the animation to listen for starting or finishing.

Delegate
FWidgetAnimationDynamicEvent

the delegate to call when the animation's state changes

OnAnimationFinished
void OnAnimationFinished(
const 	UWidgetAnimation 	Animation
	)

Called when an animation has either played all the way through or is stopped

**Parameters**

Animation
const UWidgetAnimation

The animation that has finished playing

BindToAnimationStarted
void BindToAnimationStarted(

UWidgetAnimation 	Animation,
FWidgetAnimationDynamicEvent 	Delegate	 = 	FWidgetAnimationDynamicEvent ( )

)

Bind an animation started delegate.

**Parameters**

Animation
UWidgetAnimation

the animation to listen for starting or finishing.

Delegate
FWidgetAnimationDynamicEvent

the delegate to call when the animation's state changes

BindToAnimationEvent
void BindToAnimationEvent(
UWidgetAnimation 	Animation,
FWidgetAnimationDynamicEvent 	Delegate,
EWidgetAnimationEvent 	AnimationEvent,
FName 	UserTag	 = 	NAME_None
	)

Allows binding to a specific animation's event.

**Parameters**

Animation
UWidgetAnimation

the animation to listen for starting or finishing.

Delegate
FWidgetAnimationDynamicEvent

the delegate to call when the animation's state changes

AnimationEvent
EWidgetAnimationEvent

the event to watch for.

UserTag
FName

Scopes the delegate to only be called when the animation completes with a specific tag set on it when it was played.

---

## APPEARANCE

### SetForegroundColor

```
void SetForegroundColor(FSlateColor InForegroundColor)
```

Sets the foreground color of the widget, this is inherited by sub widgets.  Any color property that is marked as inherit will use this color.

**Parameters**

InForegroundColor
FSlateColor

The foreground color.

IsInViewport
bool IsInViewport() const

**Returns**

true if the widget was added to the viewport using AddToViewport.

SetPadding
void SetPadding(
FMargin 	InPadding
	)

Sets the padding for the user widget, putting a larger gap between the widget border and it's root widget.

SetColorAndOpacity
void SetColorAndOpacity(
FLinearColor 	InColorAndOpacity
	)

Sets the tint of the widget, this affects all child widgets.

**Parameters**

InColorAndOpacity
FLinearColor

The tint to apply to all child widgets.

---

## DELAY

### CancelLatentActions

```
void CancelLatentActions()
```

Cancels any pending Delays or timer callbacks for this widget.

### StopAnimationsAndLatentActions

```
void StopAnimationsAndLatentActions()
```

Cancels any pending Delays or timer callbacks for this widget, and stops all active animations on the widget.

### DRAG AND DROP

```
DRAG AND DROP OnDragOver bool OnDragOver(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation Operation)
```

Called during drag and drop when the the mouse is being dragged over a widget.

**Parameters**

MyGeometry
FGeometry

The geometry of the widget receiving the event.

PointerEvent
FPointerEvent

The mouse event from when the drag occurred over the widget.

Operation
UDragDropOperation

The drag operation over the widget.

**Returns**

'true' to indicate that you handled the drag over operation.  Returning 'false' will cause the operation to continue to bubble up.

OnDragEnter
void OnDragEnter(
FGeometry 	MyGeometry,
FPointerEvent 	PointerEvent,
UDragDropOperation 	Operation
	)

Called during drag and drop when the drag enters the widget.

**Parameters**

MyGeometry
FGeometry

The geometry of the widget receiving the event.

PointerEvent
FPointerEvent

The mouse event from when the drag entered the widget.

Operation
UDragDropOperation

The drag operation that entered the widget.

OnDragDetected
void OnDragDetected(
FGeometry 	MyGeometry,
FPointerEvent 	PointerEvent,
UDragDropOperation& 	Operation
	)

Called when Slate detects that a widget started to be dragged.

**Parameters**

PointerEvent
FPointerEvent

MouseMove that triggered the drag

Operation
UDragDropOperation&

The drag operation that was detected.

OnDragLeave
void OnDragLeave(
FPointerEvent 	PointerEvent,
UDragDropOperation 	Operation
	)

Called during drag and drop when the drag leaves the widget.

**Parameters**

PointerEvent
FPointerEvent

The mouse event from when the drag left the widget.

Operation
UDragDropOperation

The drag operation that entered the widget.

OnDrop
bool OnDrop(
FGeometry 	MyGeometry,
FPointerEvent 	PointerEvent,
UDragDropOperation 	Operation
	)

Called when the user is dropping something onto a widget.  Ends the drag and drop operation, even if no widget handles this.

**Parameters**

MyGeometry
FGeometry

The geometry of the widget receiving the event.

PointerEvent
FPointerEvent

The mouse event from when the drag occurred over the widget.

Operation
UDragDropOperation

The drag operation over the widget.

**Returns**

'true' to indicate you handled the drop operation.

OnDragCancelled
void OnDragCancelled(
FPointerEvent 	PointerEvent,
UDragDropOperation 	Operation
	)

Called when the user cancels the drag operation, typically when they simply release the mouse button after beginning a drag operation, but failing to complete the drag.

**Parameters**

PointerEvent
FPointerEvent

Last mouse event from when the drag was canceled.

Operation
UDragDropOperation

The drag operation that was canceled.

---

## INPUT

### OnKeyUp

```
FEventReply OnKeyUp(FGeometry MyGeometry, FKeyEvent InKeyEvent)
```

Called after a key (keyboard, controller, ...) is released when this widget has focus

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

InKeyEvent
FKeyEvent

Key event

**Returns**

Returns whether the event was handled, along with other possible actions

OnKeyChar
FEventReply OnKeyChar(
FGeometry 	MyGeometry,
FCharacterEvent 	InCharacterEvent
	)

Called after a character is entered while this widget has focus

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

InCharacterEvent
FCharacterEvent

Character event

**Returns**

Returns whether the event was handled, along with other possible actions

OnFocusReceived
FEventReply OnFocusReceived(
FGeometry 	MyGeometry,
FFocusEvent 	InFocusEvent
	)

Called when keyboard focus is given to this widget.  This event does not bubble.

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

InFocusEvent
FFocusEvent

FocusEvent

**Returns**

Returns whether the event was handled, along with other possible actions

SetInputActionPriority
void SetInputActionPriority(
int 	NewPriority
	)
SetInputActionBlocking
void SetInputActionBlocking(
bool 	bShouldBlock
	)
OnPreviewKeyDown
FEventReply OnPreviewKeyDown(
FGeometry 	MyGeometry,
FKeyEvent 	InKeyEvent
	)

Called after a key (keyboard, controller, ...) is pressed when this widget or a child of this widget has focus If a widget handles this event, OnKeyDown will not be passed to the focused widget.

This event is primarily to allow parent widgets to consume an event before a child widget processes it and it should be used only when there is no better design alternative.

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

InKeyEvent
FKeyEvent

Key event

**Returns**

Returns whether the event was handled, along with other possible actions

ListenForInputAction
void ListenForInputAction(
FName 	ActionName,
EInputEvent 	EventType,
bool 	bConsume,
FOnInputAction 	Callback	 = 	FOnInputAction ( )
	)

Listens for a particular Player Input Action by name.  This requires that those actions are being executed, and that we're not currently in UI-Only Input Mode.

OnAddedToFocusPath
void OnAddedToFocusPath(
FFocusEvent 	InFocusEvent
	)

If focus is gained on on this widget or on a child widget and this widget is added to the focus path, and wasn't previously part of it, this event is called.

**Parameters**

InFocusEvent
FFocusEvent

FocusEvent

OnAnalogValueChanged
FEventReply OnAnalogValueChanged(
FGeometry 	MyGeometry,
FAnalogInputEvent 	InAnalogInputEvent
	)

Called when an analog value changes on a button that supports analog

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

InAnalogInputEvent
FAnalogInputEvent

Analog Event

**Returns**

Returns whether the event was handled, along with other possible actions

StopListeningForInputAction
void StopListeningForInputAction(
FName 	ActionName,
EInputEvent 	EventType
	)

Removes the binding for a particular action's callback.

UnregisterInputComponent
void UnregisterInputComponent()

StopListeningForAllInputActions will automatically Register an Input Component with the player input system.  If you however, want to Pause and Resume, listening for a set of actions, the best way is to use UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.

OnKeyDown
FEventReply OnKeyDown(
FGeometry 	MyGeometry,
FKeyEvent 	InKeyEvent
	)

Called after a key (keyboard, controller, ...) is pressed when this widget has focus (this event bubbles if not handled)

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

InKeyEvent
FKeyEvent

Key event

**Returns**

Returns whether the event was handled, along with other possible actions

OnFocusLost
void OnFocusLost(
FFocusEvent 	InFocusEvent
	)

Called when this widget loses focus.  This event does not bubble.

**Parameters**

InFocusEvent
FFocusEvent

FocusEvent

StopListeningForAllInputActions
void StopListeningForAllInputActions()

Stops listening to all input actions, and unregisters the input component with the player controller.

IsListeningForInputAction
bool IsListeningForInputAction(
FName 	ActionName
	) const

Checks if the action has a registered callback with the input component.

RegisterInputComponent
void RegisterInputComponent()

ListenForInputAction will automatically Register an Input Component with the player input system.  If you however, want to Pause and Resume, listening for a set of actions, the best way is to use UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.

OnRemovedFromFocusPath
void OnRemovedFromFocusPath(
FFocusEvent 	InFocusEvent
	)

If focus is lost on on this widget or on a child widget and this widget is no longer part of the focus path.

**Parameters**

InFocusEvent
FFocusEvent

FocusEvent

---

## MOUSE

### OnMouseLeave

```
void OnMouseLeave(FPointerEvent MouseEvent)
```

The system will use this event to notify a widget that the cursor has left it. This event is NOT bubbled.

**Parameters**

MouseEvent
FPointerEvent

Information about the input event

OnMouseWheel
FEventReply OnMouseWheel(
FGeometry 	MyGeometry,
FPointerEvent 	MouseEvent
	)

Called when the mouse wheel is spun. This event is bubbled.

**Parameters**

MouseEvent
FPointerEvent

Mouse event

**Returns**

Returns whether the event was handled, along with other possible actions

OnMouseMove
FEventReply OnMouseMove(
FGeometry 	MyGeometry,
FPointerEvent 	MouseEvent
	)

The system calls this method to notify the widget that a mouse moved within it. This event is bubbled.

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

MouseEvent
FPointerEvent

Information about the input event

**Returns**

Whether the event was handled along with possible requests for the system to take action.

OnPreviewMouseButtonDown
FEventReply OnPreviewMouseButtonDown(
FGeometry 	MyGeometry,
FPointerEvent 	MouseEvent
	)

Just like OnMouseButtonDown, but tunnels instead of bubbling.  If this even is handled, OnMouseButtonDown will not be sent.

Use this event sparingly as preview events generally make UIs more difficult to reason about.

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

MouseEvent
FPointerEvent

Information about the input event

**Returns**

Whether the event was handled along with possible requests for the system to take action.

OnMouseButtonDown
FEventReply OnMouseButtonDown(
FGeometry 	MyGeometry,
FPointerEvent 	MouseEvent
	)

The system calls this method to notify the widget that a mouse button was pressed within it. This event is bubbled.

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

MouseEvent
FPointerEvent

Information about the input event

**Returns**

Whether the event was handled along with possible requests for the system to take action.

OnMouseEnter
void OnMouseEnter(
FGeometry 	MyGeometry,
FPointerEvent 	MouseEvent
	)

The system will use this event to notify a widget that the cursor has entered it. This event is NOT bubbled.

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

MouseEvent
FPointerEvent

Information about the input event

OnMouseButtonDoubleClick
FEventReply OnMouseButtonDoubleClick(
FGeometry 	InMyGeometry,
FPointerEvent 	InMouseEvent
	)

Called when a mouse button is double clicked.  Override this in derived classes.

**Parameters**

InMyGeometry
FGeometry

Widget geometry

InMouseEvent
FPointerEvent

Mouse button event

**Returns**

Returns whether the event was handled, along with other possible actions

OnMouseButtonUp
FEventReply OnMouseButtonUp(
FGeometry 	MyGeometry,
FPointerEvent 	MouseEvent
	)

The system calls this method to notify the widget that a mouse button was release within it. This event is bubbled.

**Parameters**

MyGeometry
FGeometry

The Geometry of the widget receiving the event

MouseEvent
FPointerEvent

Information about the input event

**Returns**

Whether the event was handled along with possible requests for the system to take action.

---

## PLAYER

### GetOwningPlayerCameraManager

```
APlayerCameraManager GetOwningPlayerCameraManager()const
```

Gets the player camera manager associated with this UI.

**Returns**

Gets the owning player camera manager that's owned by the player controller assigned to this widget.

GetOwningPlayerPawn
APawn GetOwningPlayerPawn() const

Gets the player pawn associated with this UI.

**Returns**

Gets the owning player pawn that's owned by the player controller assigned to this widget.

SetOwningPlayer
void SetOwningPlayer(
APlayerController 	LocalPlayerController
	)

Sets the local player associated with this UI via PlayerController reference.

**Parameters**

LocalPlayerController
APlayerController

The PlayerController of the local player you want to be the conceptual owner of this UI.

TOUCH INPUT
OnMouseCaptureLost
void OnMouseCaptureLost()

Called when mouse capture is lost if it was owned by this widget.

OnMotionDetected
FEventReply OnMotionDetected(
FGeometry 	MyGeometry,
FMotionEvent 	InMotionEvent
	)

Called when motion is detected (controller or device) e.g. Someone tilts or shakes their controller.

**Parameters**

MyGeometry
FGeometry

The geometry of the widget receiving the event.

OnTouchStarted
FEventReply OnTouchStarted(
FGeometry 	MyGeometry,
FPointerEvent 	InTouchEvent
	)

Called when a touchpad touch is started (finger down)

**Parameters**

MyGeometry
FGeometry

The geometry of the widget receiving the event.

InTouchEvent
FPointerEvent

The touch event generated

OnTouchMoved
FEventReply OnTouchMoved(
FGeometry 	MyGeometry,
FPointerEvent 	InTouchEvent
	)

Called when a touchpad touch is moved  (finger moved)

**Parameters**

MyGeometry
FGeometry

The geometry of the widget receiving the event.

InTouchEvent
FPointerEvent

The touch event generated

OnTouchGesture
FEventReply OnTouchGesture(
FGeometry 	MyGeometry,
FPointerEvent 	GestureEvent
	)

Called when the user performs a gesture on trackpad. This event is bubbled.

**Parameters**

MyGeometry
FGeometry

The geometry of the widget receiving the event.

GestureEvent
FPointerEvent

gesture event

**Returns**

Returns whether the event was handled, along with other possible actions

OnTouchForceChanged
FEventReply OnTouchForceChanged(
FGeometry 	MyGeometry,
FPointerEvent 	InTouchEvent
	)

Called when a touchpad force has changed (user pressed down harder or let up)

**Parameters**

MyGeometry
FGeometry

The geometry of the widget receiving the event.

InTouchEvent
FPointerEvent

The touch event generated

OnTouchEnded
FEventReply OnTouchEnded(
FGeometry 	MyGeometry,
FPointerEvent 	InTouchEvent
	)

Called when a touchpad touch is ended (finger lifted)

**Parameters**

MyGeometry
FGeometry

The geometry of the widget receiving the event.

InTouchEvent
FPointerEvent

The touch event generated

USER INTERFACE
PreConstruct
void PreConstruct(
bool 	IsDesignTime
	)

Called by both the game and the editor.  Allows users to run initial setup for their widgets to better preview the setup in the designer and since generally that same setup code is required at runtime, it's called there as well.

**WARNING** This is intended purely for cosmetic updates using locally owned data, you can not safely access any game related state, if you call something that doesn't expect to be run at editor time, you may crash the editor.

In the event you save the asset with blueprint code that causes a crash on evaluation.  You can turn off PreConstruct evaluation in the Widget Designer settings in the Editor Preferences.

OnInitialized
void OnInitialized()

Called once only at game time on non-template instances.  While Construct/Destruct pertain to the underlying Slate, this is called only once for the UUserWidget.  If you have one-time things to establish up-front (like binding callbacks to events on BindWidget properties), do so here.

Destruct
void Destruct()

Called when a widget is no longer referenced causing the slate resource to destroyed.  Just like Construct this event can be called multiple times.

Construct
void Construct()

Called after the underlying slate widget is constructed.  Depending on how the slate object is used this event may be called multiple times due to adding and removing from the hierarchy.  If you need a true called-once-when-created event, use OnInitialized.

Tick
void Tick(
FGeometry 	MyGeometry,
float32 	InDeltaTime
	)

Ticks this widget.  Override in derived classes, but always call the parent implementation.

**Parameters**

MyGeometry
FGeometry

The space allotted for this widget

InDeltaTime
float32

Real time passed since last tick

USER INTERFACE | INTERACTION
IsInteractable
bool IsInteractable() const

Gets a value indicating if the widget is interactive.

USER INTERFACE | PAINTING
OnPaint
void OnPaint(
FPaintContext& 	Context
	) const
USER INTERFACE|ANIMATION
PauseAnimation
float32 PauseAnimation(
const 	UWidgetAnimation 	InAnimation
	)

Pauses an already running animation in this widget

**Returns**

the time point the animation was at when it was paused, relative to its start position.  Use this as the StartAtTime when you trigger PlayAnimation.

PlayAnimationForward
UUMGSequencePlayer PlayAnimationForward(
UWidgetAnimation 	InAnimation,
float32 	PlaybackSpeed	 = 	1.000000,
bool 	bRestoreState	 = 	false
	)

Plays an animation on this widget relative to it's current state forward.  You should use this version in situations where say a user can click a button and that causes a panel to slide out, and you want to reverse that same animation to begin sliding in the opposite direction.

**Parameters**

InAnimation
UWidgetAnimation

The animation to play

PlaybackSpeed
float32

The speed at which the animation should play

bRestoreState
bool

Restores widgets to their pre-animated state when the animation stops

IsAnimationPlayingForward
bool IsAnimationPlayingForward(
const 	UWidgetAnimation 	InAnimation
	)

returns true if the animation is currently playing forward, false otherwise.

**Parameters**

InAnimation
const UWidgetAnimation

The playing animation that we want to know about

PlayAnimationTimeRange
UUMGSequencePlayer PlayAnimationTimeRange(

UWidgetAnimation 	InAnimation,
float32 	StartAtTime	 = 	0.000000,
float32 	EndAtTime	 = 	0.000000,
int 	NumLoopsToPlay	 = 	1,
EUMGSequencePlayMode 	PlayMode	 = 	EUMGSequencePlayMode :: Forward,
float32 	PlaybackSpeed	 = 	1.000000,
bool 	bRestoreState	 = 	false

)

Plays an animation in this widget a specified number of times stopping at a specified time

**Parameters**

InAnimation
UWidgetAnimation

The animation to play

StartAtTime
float32

The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation.

EndAtTime
float32

The absolute time in the animation where to stop, this is only considered in the last loop.

NumLoopsToPlay
int

The number of times to loop this animation (0 to loop indefinitely)

PlayMode
EUMGSequencePlayMode

Specifies the playback mode

PlaybackSpeed
float32

The speed at which the animation should play

bRestoreState
bool

Restores widgets to their pre-animated state when the animation stops

StopAnimation
void StopAnimation(
const 	UWidgetAnimation 	InAnimation
	)

Stops an already running animation in this widget

GetAnimationCurrentTime
float32 GetAnimationCurrentTime(
const 	UWidgetAnimation 	InAnimation
	) const

Gets the current time of the animation in this widget

**Returns**

the current time of the animation.

ReverseAnimation
void ReverseAnimation(
const 	UWidgetAnimation 	InAnimation
	)

If an animation is playing, this function will reverse the playback.

**Parameters**

InAnimation
const UWidgetAnimation

The playing animation that we want to reverse

IsAnyAnimationPlaying
bool IsAnyAnimationPlaying() const

**Returns**

True if any animation is currently playing

PlayAnimation
UUMGSequencePlayer PlayAnimation(

UWidgetAnimation 	InAnimation,
float32 	StartAtTime	 = 	0.000000,
int 	NumLoopsToPlay	 = 	1,
EUMGSequencePlayMode 	PlayMode	 = 	EUMGSequencePlayMode :: Forward,
float32 	PlaybackSpeed	 = 	1.000000,
bool 	bRestoreState	 = 	false

)

Plays an animation in this widget a specified number of times

**Parameters**

InAnimation
UWidgetAnimation

The animation to play

StartAtTime
float32

The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation.

NumLoopsToPlay
int

The number of times to loop this animation (0 to loop indefinitely)

PlayMode
EUMGSequencePlayMode

Specifies the playback mode

PlaybackSpeed
float32

The speed at which the animation should play

bRestoreState
bool

Restores widgets to their pre-animated state when the animation stops

IsAnimationPlaying
bool IsAnimationPlaying(
const 	UWidgetAnimation 	InAnimation
	) const

Gets whether an animation is currently playing on this widget.

**Parameters**

InAnimation
const UWidgetAnimation

The animation to check the playback status of

**Returns**

True if the animation is currently playing

SetAnimationCurrentTime
void SetAnimationCurrentTime(
const 	UWidgetAnimation 	InAnimation,
	float32 	InTime
	)

Sets the current time of the animation in this widget. Does not change state.

PlayAnimationReverse
UUMGSequencePlayer PlayAnimationReverse(
UWidgetAnimation 	InAnimation,
float32 	PlaybackSpeed	 = 	1.000000,
bool 	bRestoreState	 = 	false
	)

Plays an animation on this widget relative to it's current state in reverse.  You should use this version in situations where say a user can click a button and that causes a panel to slide out, and you want to reverse that same animation to begin sliding in the opposite direction.

**Parameters**

InAnimation
UWidgetAnimation

The animation to play

PlaybackSpeed
float32

The speed at which the animation should play

bRestoreState
bool

Restores widgets to their pre-animated state when the animation stops

IsPlayingAnimation
bool IsPlayingAnimation() const

Are we currently playing any animations?

FlushAnimations
void FlushAnimations()

Flushes all animations on all widgets to guarantee that any queued updates are processed before this call returns

SetPlaybackSpeed
void SetPlaybackSpeed(
const 	UWidgetAnimation 	InAnimation,
	float32 	PlaybackSpeed	 = 	1.000000
	)

Changes the playback rate of a playing animation

**Parameters**

InAnimation
const UWidgetAnimation

The animation that is already playing

SetNumLoopsToPlay
void SetNumLoopsToPlay(
const 	UWidgetAnimation 	InAnimation,
	int 	NumLoopsToPlay
	)

Changes the number of loops to play given a playing animation

**Parameters**

InAnimation
const UWidgetAnimation

The animation that is already playing

NumLoopsToPlay
int

The number of loops to play. (0 to loop indefinitely)

StopAllAnimations
void StopAllAnimations()

Stop All actively running animations.

USER INTERFACE|VIEWPORT
SetAnchorsInViewport
void SetAnchorsInViewport(
FAnchors 	Anchors
	)
GetAlignmentInViewport
FVector2D GetAlignmentInViewport() const
SetPositionInViewport
void SetPositionInViewport(
FVector2D 	Position,
bool 	bRemoveDPIScale	 = 	true
	)

Sets the widgets position in the viewport.

**Parameters**

Position
FVector2D

The 2D position to set the widget to in the viewport.

bRemoveDPIScale
bool

If you've already calculated inverse DPI, set this to false. Otherwise inverse DPI is applied to the position so that when the location is scaled by DPI, it ends up in the expected position.

SetDesiredSizeInViewport
void SetDesiredSizeInViewport(
FVector2D 	Size
	)
GetAnchorsInViewport
FAnchors GetAnchorsInViewport() const
SetAlignmentInViewport
void SetAlignmentInViewport(
FVector2D 	Alignment
	)
AddToViewport
void AddToViewport(
int 	ZOrder	 = 	0
	)

Adds it to the game's viewport and fills the entire screen, unless SetDesiredSizeInViewport is called to explicitly set the size.

**Parameters**

ZOrder
int

The higher the number, the more on top this widget will be.

AddToPlayerScreen
bool AddToPlayerScreen(
int 	ZOrder	 = 	0
	)

Adds the widget to the game's viewport in a section dedicated to the player.  This is valuable in a split screen game where you need to only show a widget over a player's portion of the viewport.

**Parameters**

ZOrder
int

The higher the number, the more on top this widget will be.

---

## FUNCTIONS

### GetColorAndOpacity

```
const FLinearColor& GetColorAndOpacity()const
```

GetPaletteCategory

### FText GetPaletteCategory

```
FText GetPaletteCategory()
```

RemoveWidget

### bool RemoveWidget

```
bool RemoveWidget(UWidget WidgetToRemove)
```

ConstructWidget

### UWidget ConstructWidget

```
UWidget ConstructWidget(UClass WidgetClass, FName WidgetName = NAME_None)
```

SetRootWidget

### void SetRootWidget

```
void SetRootWidget(UWidget NewRootWidget)
```

GetRootWidget

### UWidget GetRootWidget

```
UWidget GetRootWidget()const SetPaletteCategory
```

void SetPaletteCategory(

### FText 	InPaletteCategory

```
FText 	InPaletteCategory 	)
```

GetAllWidgets

### void GetAllWidgets

```
void GetAllWidgets(TArray<UWidget>& Widgets)const
```

GetForegroundColor

### const FSlateColor& GetForegroundColor

```
const FSlateColor& GetForegroundColor()const GetPadding
```

const FMargin& GetPadding() const

### GetbIsFocusable

```
bool GetbIsFocusable()const
```

SetbIsFocusable

### void SetbIsFocusable

```
void SetbIsFocusable(bool Value)
```

GetbStopAction

### bool GetbStopAction

```
bool GetbStopAction()const SetbStopAction
```

void SetbStopAction(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UUserWidget::StaticClass()
```
