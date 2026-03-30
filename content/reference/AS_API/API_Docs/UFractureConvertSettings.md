# UFractureConvertSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureConvertSettings

## Description

Settings related to geometry collection -> static mesh conversion

## ACTORSETTINGS

### bSelectNewActors

```
bool bSelectNewActors
```

Whether to select new static mesh actors

### bPlaceInWorld

```
bool bPlaceInWorld
```

Whether to place new static mesh actors in the level

---

## ASSETSETTINGS

### bPerBone

```
bool bPerBone
```

Whether to generate a separate mesh for each bone, or one combined mesh

### bPromptForBaseName

```
bool bPromptForBaseName
```

Whether to prompt user for a location and base name for the generated meshes, or automatically place them next to the source geometry collections

---

## GEOMETRYSETTINGS

### bCenterPivots

```
bool bCenterPivots
```

Whether to center the pivot for each mesh, or use the pivot from the geometry collection

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureConvertSettings::StaticClass()
```
