# UVariant

**Visibility:** public

## Inheritance

UObject → UVariant → VARIANT → NumActors

## Description

const int NumActors Parent const UVariantSet Parent

## VARIANT \| DEPENDENCIES

NumDependencies

### NumDependencies

```
const int NumDependencies
```

---

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

## VARIANT

### IsActive

```
bool IsActive()
```

Returns true if none of our properties are dirty

### GetActor

```
AActor GetActor(int ActorIndex)
```

SetDisplayText

### void SetDisplayText

```
void SetDisplayText(FText NewDisplayText)
```

GetDisplayText

### FText GetDisplayText

```
FText GetDisplayText()const GetNumActors
```

int GetNumActors()

### GetParent

```
UVariantSet GetParent()
```

SwitchOn

### void SwitchOn

```
void SwitchOn()
```

---

## VARIANT \| DEPENDENCIES

### GetDependents

```
TArray<UVariant> GetDependents(ULevelVariantSets LevelVariantSets, bool bOnlyEnabledDependencies)
```

Returns all the variants that have this variant as a dependency

### GetDependency

```
FVariantDependency& GetDependency(int Index)
```

Get the dependency at index 'Index' by value. Will crash if index is invalid

### GetNumDependencies

```
int GetNumDependencies()
```

---

## VARIANT \| THUMBNAIL

### SetThumbnailFromTexture

```
void SetThumbnailFromTexture(UTexture2D NewThumbnail)
```

Sets the thumbnail to use for this variant. Can receive nullptr to clear it

### SetThumbnailFromFile

```
void SetThumbnailFromFile(FString FilePath)
```

SetThumbnailFromEditorViewport

### void SetThumbnailFromEditorViewport

```
void SetThumbnailFromEditorViewport()
```

Sets the thumbnail from the active editor viewport. Doesn't do anything if the Editor is not available

### GetThumbnail

```
UTexture2D GetThumbnail()
```

Gets the thumbnail currently used for this variant

### SetThumbnailFromCamera

```
void SetThumbnailFromCamera(FTransform CameraTransform, float32 FOVDegrees = 50.000000, float32 MinZ = 50.000000, float32 Gamma = 2.200000)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UVariant::StaticClass()
```
