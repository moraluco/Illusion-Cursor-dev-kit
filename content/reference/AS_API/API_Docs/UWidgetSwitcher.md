# UWidgetSwitcher

**Visibility:** public

## Inheritance

UPanelWidget → UWidgetSwitcher

## Description

A widget switcher is like a tab control, but without tabs. At most one widget is visible at time.

## SWITCHER

### ActiveWidgetIndex

```
int ActiveWidgetIndex
```

The slot index to display

NumWidgets

### NumWidgets

```
const int NumWidgets
```

Gets the number of widgets that this switcher manages.

### ActiveWidget

```
UWidget ActiveWidget
```

Get the reference of the currently active widget

---

## SWITCHER

### GetActiveWidgetIndex

```
int GetActiveWidgetIndex()const
```

Gets the slot index of the currently active widget

### GetNumWidgets

```
int GetNumWidgets()const
```

Gets the number of widgets that this switcher manages.

### GetWidgetAtIndex

```
UWidget GetWidgetAtIndex(int Index)const
```

Get a widget at the provided index

### SetActiveWidget

```
void SetActiveWidget(UWidget Widget)
```

Activates the widget and makes it the active index.

### SetActiveWidgetIndex

```
void SetActiveWidgetIndex(int Index)
```

Activates the widget at the specified index.

### GetActiveWidget

```
UWidget GetActiveWidget()const
```

Get the reference of the currently active widget

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UWidgetSwitcher::StaticClass()
```
