# UWmfMediaSettings

**Visibility:** public

## Inheritance

UObject → UWmfMediaSettings

## Description

Settings for the WmfMedia plug-in.

## DEBUG

### NativeAudioOut

```
bool NativeAudioOut
```

Play audio tracks via the operating system's native sound mixer (default = off).

---

## MEDIA

### LowLatency

```
bool LowLatency
```

Enable low latency processing in the Windows media pipeline (default = off).

### When this setting is enabled, the media data is generated with the lowest possible delay. This might be desirable for certain real-time applications, but it can negatively affect audio and video quality.

```
When this setting is enabled, the media data is generated with the lowest possible delay. This might be desirable for certain real-time applications, but it can negatively affect audio and video quality.
```

@note This setting is only supported on Windows 8 or newer

### HardwareAcceleratedVideoDecoding

```
bool HardwareAcceleratedVideoDecoding
```

Use hardware accelerated video acceleration (GPU) when possible otherwise fallback to software implementation (CPU), Windows and DX11 only.

### AllowNonStandardCodecs

```
bool AllowNonStandardCodecs
```

Whether to allow the loading of media that uses non-standard codecs (default = off).

### By default, the player will attempt to detect audio and video codecs that are not supported by the operating system out of the box, but may require the user to install additional codec packs. Enable this option to skip this check and allow the usage of non-standard codecs.

```
By default, the player will attempt to detect audio and video codecs that are not supported by the operating system out of the box, but may require the user to install additional codec packs. Enable this option to skip this check and allow the usage of non-standard codecs.
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UWmfMediaSettings::StaticClass()
```
