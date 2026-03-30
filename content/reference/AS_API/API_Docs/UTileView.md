# UTileView

**Visibility:** public

## Inheritance

UListView → UTileView

## Description

A ListView that presents the contents as a set of tiles all uniformly sized.

To make a widget usable as an entry in a TileView, it must inherit from the IUserObjectListEntry interface.

## LISTENTRIES

### EntryWidth

```
float32 EntryWidth
```

The width of each tile

### EntryHeight

```
float32 EntryHeight
```

The height of each tile

### TileAlignment

```
EListItemAlignment TileAlignment
```

The method by which to align the tile entries in the available space for the tile view

---

## NAVIGATION

### bWrapHorizontalNavigation

```
bool bWrapHorizontalNavigation
```

True to allow left/right navigation to wrap back to the tile on the opposite edge

---

## TILEVIEW

### GetEntryWidth

```
float32 GetEntryWidth()const
```

Gets the width of tile entries

### SetEntryHeight

```
void SetEntryHeight(float32 NewHeight)
```

Sets the height of every tile entry

### SetEntryWidth

```
void SetEntryWidth(float32 NewWidth)
```

Sets the width of every tile entry

### GetEntryHeight

```
float32 GetEntryHeight()const
```

Gets the height of tile entries

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTileView::StaticClass()
```
