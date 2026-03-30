# UTileSetEditorSettings

**Visibility:** public

## Inheritance

UObject → UTileSetEditorSettings

## Description

Settings for the Paper2D tile set editor

## BACKGROUND

### DefaultBackgroundColor

```
FColor DefaultBackgroundColor
```

Default background color for new tile set assets

### EDITOR

```
TILE EDITOR
```
### bShowGridByDefault

```
bool bShowGridByDefault
```

Should the grid be shown by default when the editor is opened?

### CONDITIONING

```
TILE SHEET CONDITIONING
```
### bPadToPowerOf2

```
bool bPadToPowerOf2
```

Should we pad the conditioned texture to the next power of 2?

### bFillWithTransparentBlack

```
bool bFillWithTransparentBlack
```

Should we use transparent black or white when filling the texture areas that aren't covered by tiles?

### ExtrusionAmount

```
int ExtrusionAmount
```

The amount to extrude out from the edge of each tile (in pixels)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTileSetEditorSettings::StaticClass()
```
