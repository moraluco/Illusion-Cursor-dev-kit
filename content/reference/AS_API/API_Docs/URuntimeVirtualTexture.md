# URuntimeVirtualTexture

**Visibility:** public

## Inheritance

UObject → URuntimeVirtualTexture

## Description

Runtime virtual texture UObject

## LAYOUT

### bContinuousUpdate

```
bool bContinuousUpdate
```

Enable continuous update of the virtual texture pages. This round-robin updates already mapped pages and can help fix pages that are mapped before dependent textures are fully streamed in.

### bCompressTextures

```
bool bCompressTextures
```

Enable storing the virtual texture in GPU supported compression formats. Using uncompressed is only recommended for debugging and quality comparisons.

### RemoveLowMips

```
int RemoveLowMips
```

Number of low mips to cut from the virtual texture. This can reduce peak virtual texture update cost but will also increase the probability of mip shimmering.

### bClearTextures

```
bool bClearTextures
```

Enable clear before rendering a page of the virtual texture. Disabling this can be an optimization if you know that the texture will always be fully covered by rendering.

### bSinglePhysicalSpace

```
bool bSinglePhysicalSpace
```

Enable page table channel packing. This reduces page table memory and update cost but can reduce the ability to share physical memory with other virtual textures.

### bPrivateSpace

```
bool bPrivateSpace
```

Enable private page table allocation. This can reduce total page table memory allocation but can also reduce the total number of virtual textures supported.

### bAdaptive

```
bool bAdaptive
```

Enable sparse adaptive page tables. This supports larger tile counts but adds an indirection cost when sampling the virtual texture. It is recommended only when very large virtual resolutions are necessary.

### MaterialType

```
ERuntimeVirtualTextureMaterialType MaterialType
```

Contents of virtual texture.

---

## LEVELOFDETAIL

### LODGroup

```
TextureGroup LODGroup
```

Texture group this texture belongs to

---

## PERFORMANCE

### bUseLowQualityCompression

```
bool bUseLowQualityCompression
```

Use low quality textures (RGB565/RGB555A1) to replace runtime compression

---

## SIZE

### TileSize

```
int TileSize
```

Page tile size. (Actual values increase in powers of 2)

### TileBorderSize

```
int TileBorderSize
```

Page tile border size divided by 2 (Actual values increase in multiples of 2). Higher values trigger a higher anisotropic sampling level.

### TileCount

```
int TileCount
```

Size of virtual texture in tiles. (Actual values increase in powers of 2).  This is applied to the largest axis in world space and the size for any shorter axis is chosen to maintain aspect ratio.

### PageTableSize

```
const int PageTableSize
```

Public getter for virtual texture page table size. This is only different from GetTileCount() when using an adaptive page table.

---

## VARIABLES

### Size

```
const int Size
```

Deprecated size of virtual texture.

---

## SIZE

### GetSize

```
int GetSize()const
```

Public getter for virtual texture size. This is derived from the TileCount and TileSize.

### GetPageTableSize

```
int GetPageTableSize()const
```

Public getter for virtual texture page table size. This is only different from GetTileCount() when using an adaptive page table.

---

## FUNCTIONS

### GetTileCount

```
int GetTileCount()const
```

Public getter for virtual texture tile count

### GetTileBorderSize

```
int GetTileBorderSize()const
```

Public getter for virtual texture tile border size

### GetTileSize

```
int GetTileSize()const
```

Public getter for virtual texture tile size

### SetTileCount

```
void SetTileCount(const int& Value)
```

SetTileSize

### void SetTileSize

```
void SetTileSize(const int& Value)
```

SetTileBorderSize

### void SetTileBorderSize

```
void SetTileBorderSize(const int& Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass URuntimeVirtualTexture::StaticClass()
```
