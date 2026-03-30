# UVariantSet

**Visibility:** public

## Inheritance

UObject → UVariantSet → VARIANTSET → NumVariants

## Description

const int NumVariants Parent const ULevelVariantSets Parent

## VARIABLES

### Thumbnail

```
const UTexture2D Thumbnail
```
### DisplayText

```
FText DisplayText
```

The display name used to be a property. Use the non-deprecated, non-property version from now on

---

## VARIANTSET

### SetDisplayText

```
void SetDisplayText(FText NewDisplayText)
```

GetNumVariants

### int GetNumVariants

```
int GetNumVariants()const GetParent
```

ULevelVariantSets GetParent()

### GetVariant

```
UVariant GetVariant(int VariantIndex)
```

GetVariantByName

### UVariant GetVariantByName

```
UVariant GetVariantByName(FString VariantName)
```

GetDisplayText

### FText GetDisplayText

```
FText GetDisplayText()const VARIANTSET|THUMBNAIL
```

SetThumbnailFromCamera

### void SetThumbnailFromCamera

```
void SetThumbnailFromCamera(FTransform CameraTransform, float32 FOVDegrees = 50.000000, float32 MinZ = 50.000000, float32 Gamma = 2.200000)
```

GetThumbnail

### UTexture2D GetThumbnail

```
UTexture2D GetThumbnail()
```

Gets the thumbnail currently used for this variant set

### SetThumbnailFromEditorViewport

```
void SetThumbnailFromEditorViewport()
```

Sets the thumbnail from the active editor viewport. Doesn't do anything if the Editor is not available

### SetThumbnailFromFile

```
void SetThumbnailFromFile(FString FilePath)
```

SetThumbnailFromTexture

### void SetThumbnailFromTexture

```
void SetThumbnailFromTexture(UTexture2D NewThumbnail)
```

Sets the thumbnail to use for this variant set. Can receive nullptr to clear it

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVariantSet::StaticClass()
```
