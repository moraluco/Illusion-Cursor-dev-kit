# UFileMediaSource

**Visibility:** public

## Inheritance

UBaseMediaSource → UFileMediaSource → FILE → FilePath

## Description

FString FilePath

The path to the media file to be played.

### See also

- SetFilePath

### PrecacheFile

```
bool PrecacheFile
```

Load entire media file into memory and play from there (if possible).

## MEDIA \| FILEMEDIASOURCE

### SetFilePath

```
void SetFilePath(FString Path)
```

Set the path to the media file that this source represents.

Automatically converts full paths to media sources that reside in the Engine's or project's /Content/Movies directory into relative paths.

**Parameters**

Path
FString

The path to set.

---

## FUNCTIONS

### GetFilePath

```
const FString& GetFilePath()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFileMediaSource::StaticClass()
```
