# UWidgetComponent

**Visibility:** public

## Inheritance

UMeshComponent → UWidgetComponent → UVREditorWidgetComponent

## Description

The widget component provides a surface in the 3D environment on which to render widgets normally rendered to the screen.  Widgets are first rendered to a render target, then that render target is displayed in the world.

Material Properties set by this component on whatever material overrides the default.  SlateUI [Texture] BackColor [Vector] TintColorAndOpacity [Vector] OpacityFromTexture [Scalar]

## ANIMATION

### TickWhenOffscreen

```
bool TickWhenOffscreen
```

Should the component tick the widget when it's off screen?

---

## INTERACTION

### bWindowFocusable

```
bool bWindowFocusable
```

Is the virtual window created to host the widget focusable?

### bReceiveHardwareInput

```
bool bReceiveHardwareInput
```

Register with the viewport for hardware input from the true mouse and keyboard.  These widgets will more or less react like regular 2D widgets in the viewport, e.g. they can and will steal focus from the viewport.

### WARNING: If you are making a VR game, definitely do not change this to true.  This option should ONLY be used if you're making what would otherwise be a normal menu for a game, just in 3D.  If you also need the game to remain responsive and for the player to be able to interact with UI and move around the world

```
WARNING: If you are making a VR game, definitely do not change this to true. This option should ONLY be used if you're making what would otherwise be a normal menu for a game, just in 3D. If you also need the game to remain responsive and for the player to be able to interact with UI and move around the world(such as a keypad on a door), use the WidgetInteractionComponent instead.
```

---

## LAYERS

### SharedLayerName

```
FName SharedLayerName
```

Layer Name the widget will live on

### LayerZOrder

```
int LayerZOrder
```

ZOrder the layer will be created on, note this only matters on the first time a new layer is created, subsequent additions to the same layer will use the initially defined ZOrder

---

## RENDERING

### BlendMode

```
EWidgetBlendMode BlendMode
```

The blend mode for the widget.

### bIsTwoSided

```
bool bIsTwoSided
```

Is the component visible from behind?

### OpacityFromTexture

```
float32 OpacityFromTexture
```

Sets the amount of opacity from the widget's UI texture to use when rendering the translucent or masked UI to the viewport (0.0-1.0)

### TwoSided

```
bool TwoSided
```

Gets whether the widget is two-sided or not

---

## USERINTERFACE

### bManuallyRedraw

```
bool bManuallyRedraw
```

Should we wait to be told to redraw to actually draw?

### WidgetClass

```
TSubclassOf<UUserWidget> WidgetClass
```

The class of User Widget to create and display an instance of

### bDrawAtDesiredSize

```
bool bDrawAtDesiredSize
```

Causes the render target to automatically match the desired size.

WARNING: If you change this every frame, it will be very expensive.  If you need that effect, you should keep the outer widget's sized locked and dynamically scale or resize some inner widget.

### bApplyGammaCorrection

```
bool bApplyGammaCorrection
```

Widget components that appear in the world will be gamma corrected by the 3D renderer.  In some cases, widget components are blitted directly into the backbuffer, in which case gamma correction should be enabled.

### TimingPolicy

```
EWidgetTimingPolicy TimingPolicy
```

How this widget should deal with timing, pausing, etc.

### CylinderArcAngle

```
float32 CylinderArcAngle
```

Curvature of a cylindrical widget in degrees.

### Space

```
EWidgetSpace Space
```

The coordinate space in which to render the widget

### DrawSize

```
FVector2D DrawSize
```

The size of the displayed quad.

### GeometryMode

```
EWidgetGeometryMode GeometryMode
```

Controls the geometry of the widget component. See EWidgetGeometryMode.

### ManuallyRedraw

```
bool ManuallyRedraw
```
### bManuallyRedraw

```
See: bManuallyRedraw
```
### DrawAtDesiredSize

```
bool DrawAtDesiredSize
```
### Pivot

```
FVector2D Pivot
```

The Alignment/Pivot point that the widget is placed at relative to the position.

### RedrawTime

```
float32 RedrawTime
```

The time in between draws, if 0

we would redraw every frame.  If 1, we would redraw every second.  This will work with bManuallyRedraw as well.  So you can say, manually redraw, but only redraw at this maximum rate.

### UserWidgetObject

```
const UUserWidget UserWidgetObject
```

Returns the user widget object displayed by this component

### WindowFocusable

```
bool WindowFocusable
```
### bWindowFocusable

```
See: bWindowFocusable
```
### WindowVisiblility

```
const EWindowVisibility WindowVisiblility
```

Gets the visibility of the virtual window created to host the widget focusable.

### WidgetSpace

```
EWidgetSpace WidgetSpace
```

---

## VARIABLES

### Widget

```
UUserWidget Widget
```

The User Widget object displayed and managed by this component

### RenderTarget

```
const UTextureRenderTarget2D RenderTarget
```

The target to which the user widget is rendered

### MaterialInstance

```
const UMaterialInstanceDynamic MaterialInstance
```

The dynamic instance of the material that the render target is attached to

### OwnerPlayer

```
ULocalPlayer OwnerPlayer
```

The owner player for a widget component, if this widget is drawn on the screen, this controls what player's screen it appears on for split screen, if not set, users player 0.

### CurrentDrawSize

```
const FVector2D CurrentDrawSize The actual draw size, this changes based on DrawSize
```

or the desired size of the widget if bDrawAtDesiredSize is true.

---

## ANIMATION

### GetTickWhenOffscreen

```
bool GetTickWhenOffscreen()const
```

Gets whether the widget ticks when offscreen or not

### SetTickWhenOffscreen

```
void SetTickWhenOffscreen(bool bWantTickWhenOffscreen)
```

Sets whether the widget ticks when offscreen or not

---

## RENDERING

### GetTwoSided

```
bool GetTwoSided()const
```

Gets whether the widget is two-sided or not

### SetTwoSided

```
void SetTwoSided(bool bWantTwoSided)
```

Sets whether the widget is two-sided or not

---

## USERINTERFACE

### GetDrawSize

```
FVector2D GetDrawSize()const
```

Returns the "specified" draw size of the quad in the world

### GetGeometryMode

```
EWidgetGeometryMode GetGeometryMode()const
```

See: EWidgetGeometryMode, See: GetCylinderArcAngle()

### GetCylinderArcAngle

```
float32 GetCylinderArcAngle()const
```

Defines the curvature of the widget component when using EWidgetGeometryMode::Cylinder; ignored otherwise.

### GetDrawAtDesiredSize

```
bool GetDrawAtDesiredSize()const
```

GetManuallyRedraw

### bool GetManuallyRedraw

```
bool GetManuallyRedraw()const
```

### See: bManuallyRedraw

```
See: bManuallyRedraw
```

GetRedrawTime

### float32 GetRedrawTime

```
float32 GetRedrawTime()const GetRenderTarget
```

UTextureRenderTarget2D GetRenderTarget() const

### Returns the render target to which the user widget is rendered

```
Returns the render target to which the user widget is rendered
```

GetMaterialInstance

### UMaterialInstanceDynamic GetMaterialInstance

```
UMaterialInstanceDynamic GetMaterialInstance()const
```

Returns the dynamic material instance used to render the user widget

### GetOwnerPlayer

```
ULocalPlayer GetOwnerPlayer()const
```

Gets the local player that owns this widget component.

### GetUserWidgetObject

```
UUserWidget GetUserWidgetObject()const
```

Returns the user widget object displayed by this component

### GetWidget

```
UUserWidget GetWidget()const
```

Gets the widget that is used by this Widget Component. It will be null if a Slate Widget was set using SetSlateWidget function.

### GetPivot

```
FVector2D GetPivot()const
```

Returns the pivot point where the UI is rendered about the origin.

### GetWidgetSpace

```
EWidgetSpace GetWidgetSpace()const
```

GetWindowVisiblility

### EWindowVisibility GetWindowVisiblility

```
EWindowVisibility GetWindowVisiblility()const
```

Gets the visibility of the virtual window created to host the widget focusable.

### IsWidgetVisible

```
bool IsWidgetVisible()const
```

Returns true if the the Slate window is visible and that the widget is also visible, false otherwise.

### RequestRenderUpdate

```
void RequestRenderUpdate()
```

Requests that the widget have it's render target updated, if TickMode is disabled, this will force a tick to happen to update the render target.

### GetCurrentDrawSize

```
FVector2D GetCurrentDrawSize()const
```

Returns the "actual" draw size of the quad in the world

### SetCylinderArcAngle

```
void SetCylinderArcAngle(float32 InCylinderArcAngle)
```

Defines the curvature of the widget component when using EWidgetGeometryMode::Cylinder; ignored otherwise.

### SetDrawAtDesiredSize

```
void SetDrawAtDesiredSize(bool bInDrawAtDesiredSize)
```

SetDrawSize

### void SetDrawSize

```
void SetDrawSize(FVector2D Size)
```

Sets the draw size of the quad in the world

### SetGeometryMode

```
void SetGeometryMode(EWidgetGeometryMode InGeometryMode)
```

SetManuallyRedraw

### void SetManuallyRedraw

```
void SetManuallyRedraw(bool bUseManualRedraw)
```

### See: bManuallyRedraw

```
See: bManuallyRedraw
```

SetOwnerPlayer

### void SetOwnerPlayer

```
void SetOwnerPlayer(ULocalPlayer LocalPlayer)
```

Sets the local player that owns this widget component.  Setting the owning player controls which player's viewport the widget appears on in a split screen scenario.  Additionally it forwards the owning player to the actual UserWidget that is spawned.

### SetPivot

```
void SetPivot(FVector2D InPivot)
```

SetRedrawTime

### void SetRedrawTime

```
void SetRedrawTime(float32 InRedrawTime)
```

SetTickMode

### void SetTickMode

```
void SetTickMode(ETickMode InTickMode)
```

Sets the Tick mode of the Widget Component.

### GetWindowFocusable

```
bool GetWindowFocusable()const
```

### See: bWindowFocusable

```
See: bWindowFocusable
```

SetTintColorAndOpacity

### void SetTintColorAndOpacity

```
void SetTintColorAndOpacity(const FLinearColor NewTintColorAndOpacity)
```

Sets the tint color and opacity scale for this widget

### SetBackgroundColor

```
void SetBackgroundColor(const FLinearColor NewBackgroundColor)
```

Sets the background color and opacityscale for this widget

### SetWidget

```
void SetWidget(UUserWidget Widget)
```

Sets the widget to use directly. This function will keep track of the widget till the next time it's called with either a newer widget or a nullptr

### SetWidgetSpace

```
void SetWidgetSpace(EWidgetSpace NewSpace)
```

SetWindowFocusable

### void SetWindowFocusable

```
void SetWindowFocusable(bool bInWindowFocusable)
```

### See: bWindowFocusable

```
See: bWindowFocusable
```

SetWindowVisibility

### void SetWindowVisibility

```
void SetWindowVisibility(EWindowVisibility InVisibility)
```

Sets the visibility of the virtual window created to host the widget focusable.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UWidgetComponent UWidgetComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UWidgetComponent UWidgetComponent::GetOrCreate

```
static UWidgetComponent UWidgetComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UWidgetComponent UWidgetComponent::Create

```
static UWidgetComponent UWidgetComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UWidgetComponent::StaticClass

```
static UClass UWidgetComponent::StaticClass()
```
