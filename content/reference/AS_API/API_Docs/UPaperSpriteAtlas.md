# UPaperSpriteAtlas

**Visibility:** public

## Inheritance

UObject → UPaperSpriteAtlas

## Description

Groups together a set of sprites that will try to share the same texture atlas (allowing them to be combined into a single draw call)

## ATLASTEXTURE

### CompressionSettings

```
TextureCompressionSettings CompressionSettings
```

Compression settings to use on atlas texture

### Filter

```
TextureFilter Filter
```

Texture filtering mode when sampling these textures

---

## GENERAL

### MipCount

```
int MipCount
```

Maximum atlas page height (single pages might be smaller)

### AtlasDescription

```
FString AtlasDescription
```

Description of this atlas, which shows up in the content browser tooltip

### Padding

```
int Padding
```

The number of pixels of padding

### MaxHeight

```
int MaxHeight
```

Maximum atlas page height (single pages might be smaller)

### MaxWidth

```
int MaxWidth
```

Maximum atlas page width (single pages might be smaller)

### PaddingType

```
EPaperSpriteAtlasPadding PaddingType
```

The type of padding performed on this atlas

### bRebuildAtlas

```
bool bRebuildAtlas
```

Slots in the atlas

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPaperSpriteAtlas::StaticClass()
```
