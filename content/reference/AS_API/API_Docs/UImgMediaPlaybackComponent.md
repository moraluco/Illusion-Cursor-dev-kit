# UImgMediaPlaybackComponent

**Visibility:** public

## Inheritance

UActorComponent → UImgMediaPlaybackComponent

## Description

Component to help with ImgMedia playback.  If desired, add this to an object that displays an ImgMedia sequence.  Not necessary to do this, but if you do then you can get additional functionality such as selective mipmap loading.

## MIPMAPS

### LODBias

```
float32 LODBias
```

This will be added to the calculated mipmap level. E.g. if set to 2, and you would normally be at mipmap level 1, then you will actually be at level 3.

### Width

```
float32 Width
```

Width of the object. If < 0, then get the width automatically.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UImgMediaPlaybackComponent UImgMediaPlaybackComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UImgMediaPlaybackComponent UImgMediaPlaybackComponent::GetOrCreate

```
static UImgMediaPlaybackComponent UImgMediaPlaybackComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UImgMediaPlaybackComponent UImgMediaPlaybackComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UImgMediaPlaybackComponent::StaticClass

```
static UClass UImgMediaPlaybackComponent::StaticClass()
```
