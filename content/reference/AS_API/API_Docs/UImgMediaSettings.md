# UImgMediaSettings

**Visibility:** public

## Inheritance

UObject → UImgMediaSettings

## Description

Settings for the ImgMedia module.

## CACHING

### GlobalCacheSizeGB

```
float32 GlobalCacheSizeGB
```

Maximum size of the global look-ahead cache (in GB; default = 1 GB). Must be greater or equal to CacheSizeGB.

### CacheSizeGB

```
float32 CacheSizeGB
```

Maximum size of the look-ahead cache (in GB; default = 1 GB).

### CacheThreads

```
int CacheThreads
```

Maximum number of image caching threads to use (0 = number of cores, default = 8).

### CacheThreadStackSizeKB

```
int CacheThreadStackSizeKB
```

Size of the stack for each caching thread (in kB; default = 128).

### CacheBehindPercentage

```
float32 CacheBehindPercentage
```

Percentage of cache to use for frames behind the play head (default = 25%).

### UseGlobalCache

```
bool UseGlobalCache
```

Whether to use the global cache or not.

---

## EXR

### ExrDecoderThreads

```
uint ExrDecoderThreads
```

Number of worker threads to use when decoding EXR images (0 = auto).

---

## PROXIES

### UseDefaultProxy

```
bool UseDefaultProxy
```

Whether to enable image sequence proxies (default = false).

Image sequence media sources may contain more than one media source URL. Additional URLs are called media source proxies, and they are generally used for switching to lower resolution media content for improved performance during development and testing.

Each proxy URL has a name associated with it, such as 'proxy', 'lowres', or any other user defined tag. It is up to the media source to interpret this value and map it to a media source URL. For example, a media source consisting of a sequence of uncompressed images may use a proxy name as the name of the sub-directory that contains proxy content, such as a low-res version of the image sequence.

### When default proxies are enabled via the UseDefaultProxy setting, media players will first try to locate the proxy content identified by the DefaultProxy tag.  If no such proxy content is available, they will fall back to the media source's default URL.

```
When default proxies are enabled via the UseDefaultProxy setting, media players will first try to locate the proxy content identified by the DefaultProxy tag.  If no such proxy content is available, they will fall back to the media source's default URL.
```

@see DefaultProxy

### DefaultProxy

```
FString DefaultProxy
```

Name of default media source proxy URLs (default = 'proxy').

Image sequence media sources may contain more than one media source URL. Additional URLs are called media source proxies, and they are generally used for switching to lower resolution media content for improved performance during development and testing.

### Each proxy URL has a name associated with it, such as 'proxy', 'lowres', or any other user defined tag. It is up to the media source to interpret this value and map it to a media source URL. For example, a media source consisting of a sequence of uncompressed images may use a proxy name as the name of the sub-directory that contains proxy content, such as a low-res version of the image sequence.

```
Each proxy URL has a name associated with it, such as 'proxy', 'lowres', or any other user defined tag. It is up to the media source to interpret this value and map it to a media source URL. For example, a media source consisting of a sequence of uncompressed images may use a proxy name as the name of the sub-directory that contains proxy content, such as a low-res version of the image sequence.
```

When default proxies are enabled via the UseDefaultProxy setting, media players will first try to locate the proxy content identified by the DefaultProxy tag.  If no such proxy content is available, they will fall back to the media source's default URL.

### @see UseDefaultProxy

```
@see UseDefaultProxy
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UImgMediaSettings::StaticClass()
```
