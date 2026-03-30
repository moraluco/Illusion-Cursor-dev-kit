# UMenuAnchor

**Visibility:** public

## Inheritance

UContentWidget → UMenuAnchor

## Description

The Menu Anchor allows you to specify an location that a popup menu should be anchored to, and should be summoned from.  * Single Child * Popup

## EVENTS

### OnGetMenuContentEvent

```
FGetWidget__Widget OnGetMenuContentEvent
```
### OnGetUserMenuContentEvent

```
FGetUserWidget__MenuAnchor OnGetUserMenuContentEvent
```

Called when the menu content is requested to allow a more customized handling over what to display

### ANCHOR

```
MENU ANCHOR
```
### ShouldDeferPaintingAfterWindowContent

```
bool ShouldDeferPaintingAfterWindowContent
```
### UseApplicationMenuStack

```
bool UseApplicationMenuStack
```

Does this menu behave like a normal stacked menu? Set it to false to control the menu's lifetime yourself.

### Placement

```
EMenuPlacement Placement
```

The placement location of the summoned widget.

### MenuPosition

```
const FVector2D MenuPosition
```

Returns the current menu position

### MenuClass

```
TSubclassOf<UUserWidget> MenuClass
```

The widget class to spawn when the menu is required.  Creates the widget freshly each time.  If you want to customize the creation of the popup, you should bind a function to OnGetMenuContentEvent instead.

MENU ANCHOR|EVENT

### OnMenuOpenChanged

```
FOnMenuOpenChangedEvent OnMenuOpenChanged
```

Called when the opened state of the menu changes

### MENU ANCHOR

```
MENU ANCHOR Open void Open(bool bFocusMenu)
```

Opens the menu if it is not already open

### FitInWindow

```
void FitInWindow(bool bFit)
```

GetMenuPosition

### FVector2D GetMenuPosition

```
FVector2D GetMenuPosition()const
```

Returns the current menu position

### HasOpenSubMenus

```
bool HasOpenSubMenus()const
```

Returns whether this menu has open submenus

### IsOpen

```
bool IsOpen()const
```

Returns true if the popup is open; false otherwise.

### Close

```
void Close()
```

Closes the menu if it is currently open.

### SetPlacement

```
void SetPlacement(EMenuPlacement InPlacement)
```

### TODO UMG Add Set MenuClass

```
TODO UMG Add Set MenuClass
```

ShouldOpenDueToClick

### bool ShouldOpenDueToClick

```
bool ShouldOpenDueToClick()const
```

Returns true if we should open the menu due to a click. Sometimes we should not, if the same MouseDownEvent that just closed the menu is about to re-open it because it happens to land on the button.

### ToggleOpen

```
void ToggleOpen(bool bFocusOnOpen)
```

Toggles the menus open state.

**Parameters**

bFocusOnOpen
bool

Should we focus the popup as soon as it opens?

---

## FUNCTIONS

### GetPlacement

```
const EMenuPlacement& GetPlacement()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMenuAnchor::StaticClass()
```
