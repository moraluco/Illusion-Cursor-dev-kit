# UMediaSource

**Visibility:** public

## Inheritance

UObject → UMediaSource → UBaseMediaSource → UPlatformMediaSource

## Description

Abstract base class for media sources.

Media sources describe the location and/or settings of media objects that can be played in a media player, such as a video file on disk, a video stream on the internet, or a web cam attached to or built into the target device. The location is encoded as a media URL string, whose URI scheme and optional file extension will be used to locate a suitable media player.

## MEDIA \| MEDIASOURCE

### Url

```
const FString Url
```

Get the media source's URL string (must be implemented in child classes).

---

## MEDIA \| MEDIASOURCE

### SetMediaOptionBool

```
void SetMediaOptionBool(FName Key, bool Value)
```

Set a boolean parameter to pass to the player.

### SetMediaOptionFloat

```
void SetMediaOptionFloat(FName Key, float32 Value)
```

Set a float parameter to pass to the player.

### SetMediaOptionInt64

```
void SetMediaOptionInt64(FName Key, int64 Value)
```

Set an integer64 parameter to pass to the player.

### SetMediaOptionString

```
void SetMediaOptionString(FName Key, FString Value)
```

Set a string parameter to pass to the player.

### Validate

```
bool Validate()const
```

Validate the media source settings (must be implemented in child classes).

**Returns**

true if validation passed, false otherwise.

GetUrl
FString GetUrl() const

Get the media source's URL string (must be implemented in child classes).

**Returns**

The media URL.

STATIC FUNCTIONS
StaticClass
static UClass UMediaSource::StaticClass()
