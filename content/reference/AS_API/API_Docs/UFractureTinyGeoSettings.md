# UFractureTinyGeoSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureTinyGeoSettings

## Description

Settings controlling how geometry is selected and merged into neighboring geometry

## FILTERSETTINGS

### MinVolumeCubeRoot

```
float MinVolumeCubeRoot
```

If volume is less than this value cubed, geometry should be merged into neighbors -- i.e. a value of 2 merges geometry smaller than a 2x2x2 cube

### SelectionMethod

```
EGeometrySelectionMethod SelectionMethod RelativeVolume float RelativeVolume
```

If cube root of volume relative to the overall shape's cube root of volume is less than this, the geometry should be merged into its neighbors.  (Note: This is a bit different from the histogram viewer's "Relative Size," which instead shows values relative to the largest rigid bone.)

---

## MERGESETTINGS

### bAlsoMergeSelected

```
bool bAlsoMergeSelected
```

Also merge selected bones to their neighbors

### NeighborSelection

```
ENeighborSelectionMethod NeighborSelection STATIC FUNCTIONS StaticClass static UClass UFractureTinyGeoSettings::StaticClass()
```
