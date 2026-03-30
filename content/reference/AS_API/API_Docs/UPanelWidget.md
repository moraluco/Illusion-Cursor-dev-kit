# UPanelWidget

**Visibility:** public

## Inheritance

UWidget → UPanelWidget → UCanvasPanel → UContentWidget → UGridPanel → UHorizontalBox

## Description

and 6 other children

The base class for all UMG panel widgets.  Panel widgets layout a collection of child widgets.

## WIDGET \| PANEL

ChildrenCount

### ChildrenCount

```
const int ChildrenCount
```

Gets number of child widgets in the container.

### AllChildren

```
const TArray<UWidget> AllChildren
```

Gets all widgets in the container

---

## WIDGET \| PANEL

### GetChildrenCount

```
int GetChildrenCount()const
```

Gets number of child widgets in the container.

### ClearChildren

```
void ClearChildren()
```

Remove all child widgets from the panel widget.

### GetAllChildren

```
TArray<UWidget> GetAllChildren()const
```

Gets all widgets in the container

### GetChildAt

```
UWidget GetChildAt(int Index)const
```

Gets the widget at an index.

**Parameters**

Index
int

The index of the widget.

**Returns**

The widget at the given index, or nothing if there is no widget there.

GetChildIndex
int GetChildIndex(
const 	UWidget 	Content
	) const

Gets the index of a specific child widget

AddChild
UPanelSlot AddChild(
UWidget 	Content
	)

Adds a new child widget to the container.  Returns the base slot type, requires casting to turn it into the type specific to the container.

HasAnyChildren
bool HasAnyChildren() const

Returns true if there are any child widgets in the panel

HasChild
bool HasChild(
UWidget 	Content
	) const

Returns true if panel contains this widget

RemoveChild
bool RemoveChild(
UWidget 	Content
	)

Removes a specific widget from the container.

**Returns**

true if the widget was found and removed.

RemoveChildAt
bool RemoveChildAt(
int 	Index
	)

Removes a child by it's index.

STATIC FUNCTIONS
StaticClass
static UClass UPanelWidget::StaticClass()
