# UWidget

**Visibility:** public

## Inheritance

UVisual → UWidget → UCircularThrobber → UComboBox → UComboBoxKey → UComboBoxString

## Description

and 20 other children

This is the base class for all wrapped Slate controls that are exposed to UObjects.

## ACCESSIBILITY

### AccessibleText

```
FText AccessibleText
```

When AccessibleBehavior is set to Custom, this is the text that will be used to describe the widget.

### AccessibleSummaryText

```
FText AccessibleSummaryText
```

When AccessibleSummaryBehavior is set to Custom, this is the text that will be used to describe the widget.

### AccessibleBehavior

```
ESlateAccessibleBehavior AccessibleBehavior
```

Whether or not the widget is accessible, and how to describe it. If set to custom, additional customization options will appear.

### AccessibleSummaryBehavior

```
ESlateAccessibleBehavior AccessibleSummaryBehavior
```

How to describe this widget when it's being presented through a summary of a parent widget. If set to custom, additional customization options will appear.

---

## BEHAVIOR

### RenderOpacity

```
float32 RenderOpacity
```

The opacity of the widget

### bIsEnabled

```
bool bIsEnabled
```

Sets whether this widget can be modified interactively by the user

### ToolTipWidget

```
UWidget ToolTipWidget
```

Tooltip widget to show when the user hovers over the widget with the mouse

### ToolTipText

```
FText ToolTipText
```

Tooltip text to show when the user hovers over the widget with the mouse

### Cursor

```
EMouseCursor Cursor
```

The cursor to show when the mouse is over the widget

### Visibility

```
ESlateVisibility Visibility
```

The visibility of the widget

---

## CLIPPING

### Clipping

```
EWidgetClipping Clipping
```

Controls how the clipping behavior of this widget.  Normally content that overflows the bounds of the widget continues rendering.  Enabling clipping prevents that overflowing content from being seen.

NOTE: Elements in different clipping spaces can not be batched together, and so there is a performance cost to clipping.  Do not enable clipping unless a panel actually needs to prevent content from showing up outside its bounds.

---

## LAYOUT

### Slot

```
UPanelSlot Slot
```

The parent slot of the UWidget.  Allows us to easily inline edit the layout controlling this widget.

---

## LOCALIZATION

### FlowDirectionPreference

```
EFlowDirectionPreference FlowDirectionPreference
```

Allows you to set a new flow direction

---

## NAVIGATION

### Navigation

```
UWidgetNavigation Navigation
```

The navigation object for this widget is optionally created if the user has configured custom navigation rules for this widget in the widget designer.  Those rules determine how navigation transitions can occur between widgets.

---

## PERFORMANCE

### bIsVolatile

```
bool bIsVolatile
```

If true prevents the widget or its child's geometry or layout information from being cached.  If this widget changes every frame, but you want it to still be in an invalidation panel you should make it as volatile instead of invalidating it every frame, which would prevent the invalidation panel from actually ever caching anything.

### TRANSFORM

```
RENDER TRANSFORM
```
### RenderTransform

```
FWidgetTransform RenderTransform
```

The render transform of the widget allows for arbitrary 2D transforms to be applied to the widget.

### RenderTransformPivot

```
FVector2D RenderTransformPivot
```

The render transform pivot controls the location about which transforms are applied.  This value is a normalized coordinate about which things like rotations will occur.

---

## WIDGET

### GameInstance

```
const UGameInstance GameInstance
```

Gets the game instance associated with this UI.

### PaintSpaceGeometry

```
const FGeometry PaintSpaceGeometry
```
### DesiredSize

```
const FVector2D DesiredSize
```

Gets the widgets desired size.  NOTE: The underlying Slate widget must exist and be valid, also at least one pre-pass must have occurred before this value will be of any use.

### CachedGeometry

```
const FGeometry CachedGeometry
```

Gets the last geometry used to Tick the widget.  This data may not exist yet if this call happens prior to the widget having been ticked/painted, or it may be out of date, or a frame behind.

We recommend not to use this data unless there's no other way to solve your problem.  Normally in Slate we try and handle these issues by making a dependent widget part of the hierarchy, as to avoid frame behind or what are referred to as hysteresis problems, both caused by depending on geometry from the previous frame being used to advise how to layout a dependent object the current frame.

### OwningPlayer

```
const APlayerController OwningPlayer
```

Gets the player controller associated with this UI.

### Parent

```
const UPanelWidget Parent
```

Gets the parent widget

### TickSpaceGeometry

```
const FGeometry TickSpaceGeometry
```
### IsEnabled

```
bool IsEnabled
```

Gets the current enabled status of the widget

### OwningLocalPlayer

```
const ULocalPlayer OwningLocalPlayer
```

Gets the local player associated with this UI.

---

## WIDGET \| TRANSFORM

### RenderTransformAngle

```
float32 RenderTransformAngle WIDGET SetFocus void SetFocus()
```

Sets the focus to this widget for the owning user

### ForceVolatile

```
void ForceVolatile(bool bForce)
```

Sets the forced volatility of the widget.

### GetAccessibleSummaryText

```
FText GetAccessibleSummaryText()const
```

Gets the accessible summary text from the underlying Slate accessible widget.

**Returns**

The accessible summary text of the underlying Slate accessible widget. Returns an empty text if accessibility is dsabled or the underlying accessible widget is invalid.

GetAccessibleText
FText GetAccessibleText() const

Gets the accessible text from the underlying Slate accessible widget

**Returns**

The accessible text of the underlying Slate accessible widget. Returns an empty text if accessibility is dsabled or the underlying accessible widget is invalid.

GetCachedGeometry
const FGeometry& GetCachedGeometry() const

Gets the last geometry used to Tick the widget.  This data may not exist yet if this call happens prior to the widget having been ticked/painted, or it may be out of date, or a frame behind.

We recommend not to use this data unless there's no other way to solve your problem.  Normally in Slate we try and handle these issues by making a dependent widget part of the hierarchy, as to avoid frame behind or what are referred to as hysteresis problems, both caused by depending on geometry from the previous frame being used to advise how to layout a dependent object the current frame.

GetClipping
EWidgetClipping GetClipping() const

Gets the clipping state of this widget.

GetDesiredSize
FVector2D GetDesiredSize() const

Gets the widgets desired size.  NOTE: The underlying Slate widget must exist and be valid, also at least one pre-pass must have occurred before this value will be of any use.

**Returns**

The widget's desired size

GetGameInstance
UGameInstance GetGameInstance() const

Gets the game instance associated with this UI.

**Returns**

a pointer to the owning game instance

GetIsEnabled
bool GetIsEnabled() const

Gets the current enabled status of the widget

GetOwningLocalPlayer
ULocalPlayer GetOwningLocalPlayer() const

Gets the local player associated with this UI.

**Returns**

The owning local player.

GetOwningPlayer
APlayerController GetOwningPlayer() const

Gets the player controller associated with this UI.

**Returns**

The player controller that owns the UI.

GetPaintSpaceGeometry
const FGeometry& GetPaintSpaceGeometry() const
GetParent
UPanelWidget GetParent() const

Gets the parent widget

GetRenderOpacity
float32 GetRenderOpacity() const

Gets the current visibility of the widget.

SetNavigationRuleExplicit
void SetNavigationRuleExplicit(
EUINavigation 	Direction,
UWidget 	InWidget
	)

Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree. This works only for Explicit Rule.

**Parameters**

InWidget
UWidget

Focus on this widget instance

GetTickSpaceGeometry
const FGeometry& GetTickSpaceGeometry() const
GetVisibility
ESlateVisibility GetVisibility() const

Gets the current visibility of the widget.

HasAnyUserFocus
bool HasAnyUserFocus() const

Returns true if this widget is focused by any user.

HasFocusedDescendants
bool HasFocusedDescendants() const

Returns true if any descendant widget is focused by any user.

HasKeyboardFocus
bool HasKeyboardFocus() const

Checks to see if this widget currently has the keyboard focus

**Returns**

True if this widget has keyboard focus

HasMouseCapture
bool HasMouseCapture() const

Checks to see if this widget is the current mouse captor

**Returns**

True if this widget has captured the mouse

HasMouseCaptureByUser
bool HasMouseCaptureByUser(
int 	UserIndex,
int 	PointerIndex	 = 	- 1
	) const

Checks to see if this widget is the current mouse captor

**Returns**

True if this widget has captured the mouse with given user and pointer

HasUserFocus
bool HasUserFocus(
APlayerController 	PlayerController
	) const

Returns true if this widget is focused by a specific user.

HasUserFocusedDescendants
bool HasUserFocusedDescendants(
APlayerController 	PlayerController
	) const

Returns true if any descendant widget is focused by a specific user.

InvalidateLayoutAndVolatility
void InvalidateLayoutAndVolatility()

Invalidates the widget from the view of a layout caching widget that may own this widget.  will force the owning widget to redraw and cache children on the next paint pass.

IsHovered
bool IsHovered() const

Returns true if the widget is currently being hovered by a pointer device

IsVisible
bool IsVisible() const

Returns true if the widget is Visible, HitTestInvisible or SelfHitTestInvisible.

RemoveFromParent
void RemoveFromParent()

Removes the widget from its parent widget.  If this widget was added to the player's screen or the viewport it will also be removed from those containers.

ResetCursor
void ResetCursor()

Resets the cursor to use on the widget, removing any customization for it.

SetAllNavigationRules
void SetAllNavigationRules(
EUINavigationRule 	Rule,
FName 	WidgetToFocus
	)

Sets the widget navigation rules for all directions. This can only be called on widgets that are in a widget tree.

**Parameters**

Rule
EUINavigationRule

The rule to use when navigation is taking place

WidgetToFocus
FName

When using the Explicit rule, focus on this widget

SetClipping
void SetClipping(
EWidgetClipping 	InClipping
	)

Sets the clipping state of this widget.

SetCursor
void SetCursor(
EMouseCursor 	InCursor
	)

Sets the cursor to show over the widget.

ForceLayoutPrepass
void ForceLayoutPrepass()

Forces a pre-pass.  A pre-pass caches the desired size of the widget hierarchy owned by this widget.  One pre-pass already happens for every widget before Tick occurs.  You only need to perform another pre-pass if you are adding child widgets this frame and want them to immediately be visible this frame.

SetIsEnabled
void SetIsEnabled(
bool 	bInIsEnabled
	)

Sets the current enabled status of the widget

SetKeyboardFocus
void SetKeyboardFocus()

Sets the focus to this widget.

SetNavigationRule
void SetNavigationRule(
EUINavigation 	Direction,
EUINavigationRule 	Rule,
FName 	WidgetToFocus
	)
SetNavigationRuleBase
void SetNavigationRuleBase(
EUINavigation 	Direction,
EUINavigationRule 	Rule
	)

Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree. This works only for non Explicit, non Custom and non CustomBoundary Rules.

**Parameters**

Rule
EUINavigationRule

The rule to use when navigation is taking place

SetNavigationRuleCustom
void SetNavigationRuleCustom(

EUINavigation 	Direction,
FCustomWidgetNavigationDelegate 	InCustomDelegate	 = 	FCustomWidgetNavigationDelegate ( )

)

Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree. This works only for Custom Rule.

**Parameters**

InCustomDelegate
FCustomWidgetNavigationDelegate

Custom Delegate that will be called

SetNavigationRuleCustomBoundary
void SetNavigationRuleCustomBoundary(

EUINavigation 	Direction,
FCustomWidgetNavigationDelegate 	InCustomDelegate	 = 	FCustomWidgetNavigationDelegate ( )

)

Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree. This works only for CustomBoundary Rule.

**Parameters**

InCustomDelegate
FCustomWidgetNavigationDelegate

Custom Delegate that will be called

SetVisibility
void SetVisibility(
ESlateVisibility 	InVisibility
	)

Sets the visibility of the widget.

SetRenderOpacity
void SetRenderOpacity(
float32 	InOpacity
	)

Sets the visibility of the widget.

SetToolTip
void SetToolTip(
UWidget 	Widget
	)

Sets a custom widget as the tooltip of the widget.

SetUserFocus
void SetUserFocus(
APlayerController 	PlayerController
	)

Sets the focus to this widget for a specific user (if setting focus for the owning user, prefer SetFocus())

SetToolTipText
void SetToolTipText(
FText 	InToolTipText
	)

Sets the tooltip text for the widget.

---

## WIDGET \| TRANSFORM

### GetRenderTransformAngle

```
float32 GetRenderTransformAngle()const
```

SetRenderTranslation

### void SetRenderTranslation

```
void SetRenderTranslation(FVector2D Translation)
```

SetRenderTransform

### void SetRenderTransform

```
void SetRenderTransform(FWidgetTransform InTransform)
```

SetRenderShear

### void SetRenderShear

```
void SetRenderShear(FVector2D Shear)
```

SetRenderScale

### void SetRenderScale

```
void SetRenderScale(FVector2D Scale)
```

SetRenderTransformAngle

### void SetRenderTransformAngle

```
void SetRenderTransformAngle(float32 Angle)
```

SetRenderTransformPivot

### void SetRenderTransformPivot

```
void SetRenderTransformPivot(FVector2D Pivot)
```

---

## FUNCTIONS

### GetToolTipText

```
const FText& GetToolTipText()const
```

GetRenderTransform

### const FWidgetTransform& GetRenderTransform

```
const FWidgetTransform& GetRenderTransform()const GetRenderTransformPivot
```

const FVector2D& GetRenderTransformPivot() const

### GetbIsEnabled

```
bool GetbIsEnabled()const
```

SetbIsEnabled

### void SetbIsEnabled

```
void SetbIsEnabled(bool Value)
```

SetbOverride_Cursor

### void SetbOverride_Cursor

```
void SetbOverride_Cursor(bool Value)
```

SetbOverrideAccessibleDefaults

### void SetbOverrideAccessibleDefaults

```
void SetbOverrideAccessibleDefaults(bool Value)
```

SetbCanChildrenBeAccessible

### void SetbCanChildrenBeAccessible

```
void SetbCanChildrenBeAccessible(bool Value)
```

SetAccessibleText

### void SetAccessibleText

```
void SetAccessibleText(FText Value)
```

SetAccessibleSummaryText

### void SetAccessibleSummaryText

```
void SetAccessibleSummaryText(FText Value)
```

GetbIsVolatile

### bool GetbIsVolatile

```
bool GetbIsVolatile()const SetbIsVolatile
```

void SetbIsVolatile(

### bool 	Value

```
bool 	Value 	)
```

GetCursor

### const EMouseCursor& GetCursor

```
const EMouseCursor& GetCursor()const STATIC FUNCTIONS
```

StaticClass

### static UClass UWidget::StaticClass

```
static UClass UWidget::StaticClass()
```
