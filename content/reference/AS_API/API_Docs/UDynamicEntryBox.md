# UDynamicEntryBox

**Visibility:** public

## Inheritance

UDynamicEntryBoxBase → UDynamicEntryBox

## Description

A special box panel that auto-generates its entries at both design-time and runtime.  Useful for cases where you can have a varying number of entries, but it isn't worth the effort or conceptual overhead to set up a list/tile view.  Note that entries here are not virtualized as they are in the list views, so generally this should be avoided if you intend to scroll through lots of items.

No children can be manually added in the designer

all are auto-generated based on the given entry class.

## DYNAMICENTRYBOX

### NumDesignerPreviewEntries

```
int NumDesignerPreviewEntries
```

---

## ENTRYLAYOUT

### EntryWidgetClass

```
TSubclassOf<UUserWidget> EntryWidgetClass
```

The class of widget to create entries of.  If natively binding this widget, use the EntryClass UPROPERTY metadata to specify the desired entry widget base class.

---

## DYNAMICENTRYBOX

### CreateEntryOfClass

```
UUserWidget CreateEntryOfClass(TSubclassOf<UUserWidget> EntryClass)
```

Creates and establishes a new dynamic entry in the box using the specified class instead of the default.

### RemoveEntry

```
void RemoveEntry(UUserWidget EntryWidget)
```

Reset

### void Reset

```
void Reset(bool bDeleteWidgets = false)
```

Clear out the box entries, optionally deleting the underlying Slate widgets entirely as well.

### CreateEntry

```
UUserWidget CreateEntry()
```

Creates and establishes a new dynamic entry in the box

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDynamicEntryBox::StaticClass()
```
