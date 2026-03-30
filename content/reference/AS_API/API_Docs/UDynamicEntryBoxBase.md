# UDynamicEntryBoxBase

**Visibility:** public

## Inheritance

UWidget → UDynamicEntryBoxBase → UDynamicEntryBox

## Description

Base for widgets that support a dynamic number of auto-generated entries at both design- and run-time.  Contains all functionality needed to create, construct, and cache an arbitrary number of entry widgets, but exposes no means of entry creation or removal It's up to child classes to decide how they want to perform the population (some may do so entirely on their own without exposing a thing)

### See also

- UDynamicEntryBox for a ready-to-use version

## DYNAMICENTRYBOX

### AllEntries

```
const TArray<UUserWidget> AllEntries
```
### EntryBoxType

```
EDynamicBoxType EntryBoxType
```

The type of box panel into which created entries are added. Some differences in functionality exist between each type.

NumEntries

### NumEntries

```
const int NumEntries
```

---

## ENTRYLAYOUT

### EntryVerticalAlignment

```
EVerticalAlignment EntryVerticalAlignment
```

Vertical alignment of generated entries. Horizontal/Vertical/Wrap boxes only.

### EntryHorizontalAlignment

```
EHorizontalAlignment EntryHorizontalAlignment
```

Horizontal alignment of generated entries. Horizontal/Vertical/Wrap boxes only.

### RadialBoxSettings

```
FRadialBoxSettings RadialBoxSettings
```

Settings only relevant to RadialBox

### EntrySizeRule

```
FSlateChildSize EntrySizeRule
```

Sizing rule to apply to generated entries. Horizontal/Vertical boxes only.

### SpacingPattern

```
TArray<FVector2D> SpacingPattern
```

The looping sequence of entry paddings to apply as entries are created. Overlay boxes only. Ignores EntrySpacing if not empty.

### MaxElementSize

```
int MaxElementSize
```

The maximum size of each entry in the dominant axis of the box. Vertical/Horizontal boxes only.

### EntrySpacing

```
FVector2D EntrySpacing
```

The padding to apply between entries in the box.  Note horizontal boxes only use the X and vertical boxes only use Y. Value is also ignored for the first entry in the box.  Wrap and Overlay types use both X and Y for spacing.

---

## DYNAMICENTRYBOX

### GetNumEntries

```
int GetNumEntries()const
```

SetEntrySpacing

### void SetEntrySpacing

```
void SetEntrySpacing(FVector2D InEntrySpacing)
```

SetRadialSettings

### void SetRadialSettings

```
void SetRadialSettings(FRadialBoxSettings InSettings)
```

GetAllEntries

### const TArray<UUserWidget>& GetAllEntries

```
const TArray<UUserWidget>& GetAllEntries()const FUNCTIONS
```

GetEntrySpacing

### const FVector2D& GetEntrySpacing

```
const FVector2D& GetEntrySpacing()const STATIC FUNCTIONS
```

StaticClass

### static UClass UDynamicEntryBoxBase::StaticClass

```
static UClass UDynamicEntryBoxBase::StaticClass()
```
