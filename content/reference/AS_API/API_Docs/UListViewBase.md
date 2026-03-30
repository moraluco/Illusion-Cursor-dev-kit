# UListViewBase

**Visibility:** public

## Inheritance

UWidget → UListViewBase → UListView

## Description

Bare-bones base class to make creating custom UListView widgets easier.  Child classes should also inherit from ITypedUMGListView<T> to get a basic public ListView API for free.

Child classes will own the actual SListView<T> widgets, but this provides some boilerplate functionality for generating entries.  To generate a row for the child list, use GenerateTypedRow with the appropriate SObjectTableRow<T> type for your list

Additionally, the entry widget class can be filtered for a particular class and interface with the EntryClass and EntryInterface metadata arguments This can be specified either on the class directly (see below) or on any BindWidget FProperty

Example

class UMyUserWidget : public UUserWidget { UPROPERTY(BindWidget, meta = (EntryClass = MyListEntryWidget)) UListView* ListView_InventoryItems; }

## EVENTS

### BP_OnEntryReleased

```
FOnListEntryReleasedDynamic BP_OnEntryReleased
```

Called when a row widget is released by the list (i.e. when it no longer represents a list item)

### BP_OnEntryGenerated

```
FOnListEntryGeneratedDynamic BP_OnEntryGenerated
```

Called when a row widget is generated for a list item

---

## INPUT

### bAllowDragging

```
bool bAllowDragging
```

True to allow dragging of row widgets in the list

---

## LISTENTRIES

### NumDesignerPreviewEntries

```
int NumDesignerPreviewEntries
```

The number of dummy item entry widgets to preview in the widget designer

### EntryWidgetClass

```
TSubclassOf<UUserWidget> EntryWidgetClass
```

The type of widget to create for each entry displayed in the list.

---

## LISTVIEWBASE

### DisplayedEntryWidgets

```
const TArray<UUserWidget> DisplayedEntryWidgets
```

Gets all of the list entry widgets currently being displayed by the list

### ScrollOffset

```
float32 ScrollOffset
```

Get the scroll offset of this view (in items)

---

## SCROLLING

### bEnableRightClickScrolling

```
bool bEnableRightClickScrolling
```

True to allow right click drag scrolling.

### AllowOverscroll

```
bool AllowOverscroll
```

Disable to stop scrollbars from activating inertial overscrolling

### FixedLineScrollOffset

```
float32 FixedLineScrollOffset
```

Optional fixed offset (in lines) to always apply to the top/left (depending on orientation) of the list.  If provided, all non-inertial means of scrolling will settle with exactly this offset of the topmost entry.  Ex: A value of 0.25 would cause the topmost full entry to be offset down by a quarter length of the preceeding entry.

### bEnableFixedLineOffset

```
bool bEnableFixedLineOffset
```
### bEnableScrollAnimation

```
bool bEnableScrollAnimation
```

True to enable lerped animation when scrolling through the list

### WheelScrollMultiplier

```
float32 WheelScrollMultiplier
```

The multiplier to apply when wheel scrolling

---

## LISTVIEW

### SetScrollOffset

```
void SetScrollOffset(float32 InScrollOffset)
```

Set the scroll offset of this view (in items)

---

## LISTVIEWBASE

### RegenerateAllEntries

```
void RegenerateAllEntries()
```

Full regeneration of all entries in the list. Note that the entry UWidget instances will not be destroyed, but they will be released and re-generated.  In other words, entry widgets will not receive Destruct/Construct events. They will receive OnEntryReleased and IUserObjectListEntry implementations will receive OnListItemObjectSet.

### RequestRefresh

```
void RequestRefresh()
```

Sets the list to refresh on the next tick.

### Note that refreshing, from a list perspective, is limited to accounting for discrepancies between items and entries.  In other words, it will only release entries that no longer have items and generate entries for new items

```
Note that refreshing, from a list perspective, is limited to accounting for discrepancies between items and entries. In other words, it will only release entries that no longer have items and generate entries for new items(or newly visible items).
```

It does NOT account for changes within existing items

### that is up to the item to announce and an entry to listen to as needed.  This can be onerous to set up for simple cases, so it's also reasonable

```
that is up to the item to announce and an entry to listen to as needed. This can be onerous to set up for simple cases, so it's also reasonable(though not ideal)to call RegenerateAllEntries when changes within N list items need to be reflected.
```

ScrollToBottom

### void ScrollToBottom

```
void ScrollToBottom()
```

Scroll the entire list down to the bottom-most item

### GetDisplayedEntryWidgets

```
const TArray<UUserWidget>& GetDisplayedEntryWidgets()const
```

Gets all of the list entry widgets currently being displayed by the list

### SetScrollbarVisibility

```
void SetScrollbarVisibility(ESlateVisibility InVisibility)
```

GetScrollOffset

### float32 GetScrollOffset

```
float32 GetScrollOffset()const
```

Get the scroll offset of this view (in items)

### ScrollToTop

```
void ScrollToTop()
```

Scroll the entire list up to the first item

### SetWheelScrollMultiplier

```
void SetWheelScrollMultiplier(float32 NewWheelScrollMultiplier)
```

---

## FUNCTIONS

### GetWheelScrollMultiplier

```
const float32& GetWheelScrollMultiplier()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UListViewBase::StaticClass()
```
