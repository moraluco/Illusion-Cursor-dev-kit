# UFractureSelectionSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureSelectionSettings

## Description

Settings controlling how geometry is selected

## FILTERSETTINGS

### VolumeSelectionMethod

```
EVolumeSelectionMethod VolumeSelectionMethod
```

What values to use when filtering by volume.  Note all values are presented as cube roots to give more intuitive scales (e.g., to select bones with volume less than a 10x10x10 cube, choose CubeRootOfVolume and MaxVolume=10, rather than needing to multiply out to 1000)

### SelectionOperation

```
ESelectionOperation SelectionOperation
```

How to update the selection from the filter

### MinVolume

```
float MinVolume
```

Sets the minimum volume (as computed by the Volume Selection Method) that should be included in the filter

### MaxVolume

```
float MaxVolume
```

Sets the maximum volume (as computed by the Volume Selection Method) that should be included in the filter

### MinVolumeFrac

```
float MinVolumeFrac
```

Sets the minimum volume (as computed by the Volume Selection Method) that should be included in the filter

### MaxVolumeFrac

```
float MaxVolumeFrac
```

Sets the maximum volume (as computed by the Volume Selection Method) that should be included in the filter

---

## MOUSEINTERACTION

### MouseSelectionMethod

```
EMouseSelectionMethod MouseSelectionMethod STATIC FUNCTIONS StaticClass static UClass UFractureSelectionSettings::StaticClass()
```
