# UUserListEntry

**Visibility:** public

## Inheritance

UInterface → UUserListEntry → UUserObjectListEntry → USERLISTENTRY → OnItemExpansionChanged

## Description

void OnItemExpansionChanged( bool 	bIsExpanded 	)

Called when the expansion state of the item represented by this entry changes. Tree view entries only.

OnItemSelectionChanged void OnItemSelectionChanged( bool 	bIsSelected 	)

Called when the selection state of the item represented by this entry changes.

OnEntryReleased void OnEntryReleased()

Called when this entry is released from the owning table and no longer represents any list item

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UUserListEntry::StaticClass()
```
