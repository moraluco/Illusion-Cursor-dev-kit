# UEditorProjectAppearanceSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UEditorProjectAppearanceSettings

## Description

Editor project appearance settings. Stored in default config, per-project

## REFERENCEVIEWER

### ShowSearchableNames

```
EReferenceViewerSettingMode ShowSearchableNames
```

Should the Reference Viewer have 'Show Searchable Names' checked by default when opened in this project

### ReferenceViewerDefaultMaxSearchBreadth

```
int ReferenceViewerDefaultMaxSearchBreadth
```

The default maximum search breadth for the reference viewer when opened

---

## UNITS

### MassUnits

```
TArray<EUnit> MassUnits
```

Choose a set of units in which to display masses.

### DistanceUnits

```
TArray<EUnit> DistanceUnits
```

Choose a set of units in which to display distance/length values.

### bDisplayUnitsOnComponentTransforms

```
bool bDisplayUnitsOnComponentTransforms
```

Whether to display units on component transform properties

### TimeUnits

```
TArray<EUnit> TimeUnits
```

Choose the units in which to display time.

### SpeedUnits

```
EUnit SpeedUnits
```

Choose the units in which to display speeds and velocities.

### TemperatureUnits

```
EUnit TemperatureUnits
```

Choose the units in which to display temperatures.

### ForceUnits

```
EUnit ForceUnits
```

Choose the units in which to display forces.

### bDisplayUnits

```
bool bDisplayUnits
```

Whether to display units on editor properties where the property has units set.

### AngleUnits

```
EUnit AngleUnits
```

Choose the units in which to display angles.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorProjectAppearanceSettings::StaticClass()
```
