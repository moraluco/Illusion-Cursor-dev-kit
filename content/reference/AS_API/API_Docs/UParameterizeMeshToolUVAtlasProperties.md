# UParameterizeMeshToolUVAtlasProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UParameterizeMeshToolUVAtlasProperties

## Description

Settings for the UVAtlas Automatic UV Generation Method

## UVATLAS

### NumIslands

```
int NumIslands
```

Hint at number of UV islands. The default of 0 means it is determined automatically.

### TextureResolution

```
int TextureResolution
```

Expected resolution of the output textures; this controls spacing left between UV islands to avoid interpolation artifacts.

### IslandStretch

```
float32 IslandStretch
```

Maximum amount of stretch, from none to unbounded. If zero stretch is specified, each triangle will likely be its own UV island.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParameterizeMeshToolUVAtlasProperties::StaticClass()
```
