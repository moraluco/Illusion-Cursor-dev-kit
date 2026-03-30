# UMediaComponent

**Visibility:** public

## Inheritance

UActorComponent → UMediaComponent → MEDIA → MediaTexture

## Description

UMediaTexture MediaTexture

This component's media texture

MediaPlayer UMediaPlayer MediaPlayer

This component's media player

## MEDIA

### GetMediaTexture

```
UMediaTexture GetMediaTexture()const
```

Get the media texture that this component owns, bound to its media player.

### GetMediaPlayer

```
UMediaPlayer GetMediaPlayer()const
```

Get the media player that this component owns

---

## FUNCTIONS

### SetMediaPlayer

```
void SetMediaPlayer(UMediaPlayer Value)
```

SetMediaTexture

### void SetMediaTexture

```
void SetMediaTexture(UMediaTexture Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UMediaComponent UMediaComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UMediaComponent UMediaComponent::GetOrCreate

```
static UMediaComponent UMediaComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UMediaComponent UMediaComponent::Create

```
static UMediaComponent UMediaComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UMediaComponent::StaticClass

```
static UClass UMediaComponent::StaticClass()
```
