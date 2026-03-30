# UListView

**Visibility:** public

## Inheritance

UListViewBase → UListView → UTileView → UTreeView

## Description

A virtualized list that allows up to thousands of items to be displayed.

An important distinction to keep in mind here is "Item" vs. "Entry" The list itself is based on a list of n items, but only creates as many entry widgets as can fit on screen.  For example, a scrolling ListView of 200 items with 5 currently visible will only have created 5 entry widgets.

To make a widget usable as an entry in a ListView, it must inherit from the IUserObjectListEntry interface.

## EVENTS

### BP_OnItemClicked

```
FSimpleListItemEventDynamic BP_OnItemClicked
```
### BP_OnItemDoubleClicked

```
FSimpleListItemEventDynamic BP_OnItemDoubleClicked
```
### BP_OnItemScrolledIntoView

```
FOnListItemScrolledIntoViewDynamic BP_OnItemScrolledIntoView
```
### BP_OnItemSelectionChanged

```
FOnListItemSelectionChangedDynamic BP_OnItemSelectionChanged
```
### BP_OnItemIsHoveredChanged

```
FOnItemIsHoveredChangedDynamic BP_OnItemIsHoveredChanged
```
### BP_OnEntryInitialized

```
FOnListEntryInitializedDynamic BP_OnEntryInitialized
```

Called when a row widget is generated for a list item

---

## LISTVIEW

### EntrySpacing

```
float32 EntrySpacing
```
### bClearSelectionOnClick

```
bool bClearSelectionOnClick
```
### WidgetStyle

```
FTableViewStyle WidgetStyle
```
### Orientation

```
EOrientation Orientation
```

The scroll & layout orientation of the list. ListView and TileView only.  Vertical will scroll vertically and arrange tiles into rows.  Horizontal will scroll horizontally and arrange tiles into columns.

### bIsFocusable

```
bool bIsFocusable
```
### ConsumeMouseWheel

```
EConsumeMouseWheel ConsumeMouseWheel
```
### bReturnFocusToSelection

```
bool bReturnFocusToSelection
```
### ScrollBarStyle

```
FScrollBarStyle ScrollBarStyle
```

NumItems const int NumItems

### items

```
Returns the total number of items
```
### SelectionMode

```
ESelectionMode SelectionMode
```

---

## VARIABLES

### ListItems

```
TArray<UObject> ListItems SelectedItem UObject SelectedItem NumItemsSelected const int NumItemsSelected LISTVIEW ClearListItems void ClearListItems()
```

Removes all items from the list

### CancelScrollIntoView

```
void CancelScrollIntoView()
```

Cancels a previous request to scroll and item into view.

### ClearSelection

```
void ClearSelection()
```

### Clear selection

```
Clear selection
```

GetNumItemsSelected

### int GetNumItemsSelected

```
int GetNumItemsSelected()const
```

Gets the number of items currently selected in the list

### GetSelectedItem

```
UObject GetSelectedItem()const
```

Gets the first selected item, if any; recommended that you only use this for single selection lists.

### GetSelectedItems

```
bool GetSelectedItems(TArray<UObject>& Items)const
```

Gets a list of all the currently selected items

### IsItemVisible

```
bool IsItemVisible(UObject Item)const
```

Gets whether the entry for the given object is currently visible in the list

### NavigateToItem

```
void NavigateToItem(UObject Item)
```

Requests that the given item is navigated to, scrolling it into view if needed.

### ScrollItemIntoView

```
void ScrollItemIntoView(UObject Item)
```

Requests that the given item is scrolled into view

### SetItemSelection

```
void SetItemSelection(UObject Item, bool bSelected)
```

Sets whether the given item is selected.

### SetListItems

```
void SetListItems(TArray<UObject> InListItems)
```

Sets the array of objects to display rows for in the list

### SetSelectedItem

```
void SetSelectedItem(UObject Item)
```

Sets the given item as the sole selected item.

### AddItem

```
void AddItem(UObject Item)
```

Adds an the item to the list

### GetIndexForItem

```
int GetIndexForItem(const UObject Item)const
```

Returns the index that the specified item is at. Will return the first found, or -1 for not found

### GetItemAt

```
UObject GetItemAt(int Index)const
```

Returns the item at the given index

### GetListItems

```
const TArray<UObject>& GetListItems()const
```

Gets the list of all items in the list.  Note that each of these items only has a corresponding entry widget when visible. Use GetDisplayedEntryWidgets to get the currently displayed widgets.

### GetNumItems

```
int GetNumItems()const
```

Returns the total number of items

### IsRefreshPending

```
bool IsRefreshPending()const
```

Returns true if a refresh is pending and the list will be rebuilt on the next tick

### NavigateToIndex

```
void NavigateToIndex(int Index)
```

Requests that the item at the given index navigated to, scrolling it into view if needed.

### RemoveItem

```
void RemoveItem(UObject Item)
```

Removes an the item from the list

### ScrollIndexIntoView

```
void ScrollIndexIntoView(int Index)
```

Requests that the item at the given index is scrolled into view

### SetSelectedIndex

```
void SetSelectedIndex(int Index)
```

Sets the item at the given index as the sole selected item.

### SetSelectionMode

```
void SetSelectionMode(ESelectionMode SelectionMode)
```

Sets the new selection mode, preserving the current selection where possible.

---

## FUNCTIONS

### GetSelectionMode

```
const ESelectionMode& GetSelectionMode()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UListView::StaticClass()
```
