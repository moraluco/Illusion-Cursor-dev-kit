# UPhysicalMaterialMask

**Visibility:** public

## Inheritance

UObject → UPhysicalMaterialMask

## Description

Physical material masks are used to map multiple physical materials to a single rendering material

## IMPORTSETTINGS

### AssetImportData

```
UAssetImportData AssetImportData
```

---

## TEXTURESOURCE

### UVChannelIndex

```
int UVChannelIndex
```

StaticMesh UV channel index to use when performing lookups with this mask.

### AddressX

```
TextureAddress AddressX
```

The addressing mode to use for the X axis.

### AddressY

```
TextureAddress AddressY
```

The addressing mode to use for the Y axis.

### MaskTexture

```
UTexture MaskTexture
```

Mask input texture, square aspect ratio recommended. Recognized mask colors include: white, black, red, green, yellow, cyan, turquoise, and magenta.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPhysicalMaterialMask::StaticClass()
```
