# UTileSheetPaddingFactory

**Visibility:** public

## Inheritance

UFactory → UTileSheetPaddingFactory

## Description

Factory used to pad out each individual tile in a tile sheet texture

## SETTINGS

### bPadToPowerOf2

```
bool bPadToPowerOf2
```

Should we pad the texture to the next power of 2?

### bFillWithTransparentBlack

```
bool bFillWithTransparentBlack
```

Should we use transparent black or white when filling the texture areas that aren't covered by tiles?

### ExtrusionAmount

```
int ExtrusionAmount
```

The amount to extrude out from each tile (in pixels)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTileSheetPaddingFactory::StaticClass()
```
