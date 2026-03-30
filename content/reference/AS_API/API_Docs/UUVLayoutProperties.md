# UUVLayoutProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UUVLayoutProperties

## Description

UV Layout Settings

## Members

### LAYOUT

```
UV LAYOUT
```
### TextureResolution

```
int TextureResolution
```

Expected resolution of the output textures; this controls spacing left between UV islands to avoid interpolation artifacts

### Scale

```
float32 Scale
```

Uniform scale applied to UVs after packing

### Translation

```
FVector2D Translation
```

Translation applied to UVs after packing, and after scaling

### bAllowFlips

```
bool bAllowFlips
```

Allow the Repack layout type to flip the orientation of UV islands to save space. Note that this may cause problems for downstream operations, and therefore is disabled by default.

### LayoutType

```
EUVLayoutType LayoutType
```

Type of layout applied to input UVs

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UUVLayoutProperties::StaticClass()
```
