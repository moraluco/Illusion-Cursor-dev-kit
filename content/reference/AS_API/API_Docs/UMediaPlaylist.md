# UMediaPlaylist

**Visibility:** public

## Inheritance

UObject → UMediaPlaylist

## Description

Implements a media play list.

## PLAYLIST

### Items

```
TArray<TObjectPtr<UMediaSource>> Items
```

List of media sources to play.

---

## MEDIA \| MEDIAPLAYLIST

### GetRandom

```
UMediaSource GetRandom(int& OutIndex)
```

Get a random media source in the play list.

**Parameters**

OutIndex
int&

Will contain the index of the returned media source.

**Returns**

The random media source, or nullptr if the list is empty.

AddFile
bool AddFile(
FString 	FilePath
	)

Add a media file path to the play list.

**Parameters**

FilePath
FString

The file path to add.

**Returns**

true if the file was added, false otherwise.

AddUrl
bool AddUrl(
FString 	Url
	)

Add a media URL to the play list.

**Parameters**

Url
FString

The URL to add.

**Returns**

true if the URL was added, false otherwise.

Get
UMediaSource Get(
int 	Index
	)

Get the media source at the specified index.

**Parameters**

Index
int

The index of the media source to get.

**Returns**

The media source, or nullptr if the index doesn't exist.

GetNext
UMediaSource GetNext(
int& 	InOutIndex
	)

Get the next media source in the play list.

**Parameters**

InOutIndex
int&

Index of the current media source (will contain the new index).

**Returns**

The media source after the current one, or nullptr if the list is empty.

GetPrevious
UMediaSource GetPrevious(
int& 	InOutIndex
	)

Get the previous media source in the play list.

**Parameters**

InOutIndex
int&

Index of the current media source (will contain the new index).

**Returns**

The media source before the current one, or nullptr if the list is empty.

Add
bool Add(
UMediaSource 	MediaSource
	)

Add a media source to the play list.

**Parameters**

MediaSource
UMediaSource

The media source to append.

**Returns**

true if the media source was added, false otherwise.

Insert
void Insert(
UMediaSource 	MediaSource,
int 	Index
	)

Insert a media source into the play list at the given position.

**Parameters**

MediaSource
UMediaSource

The media source to insert.

Index
int

The index to insert into.

Num
int Num()

Get the number of media sources in the play list.

**Returns**

Number of media sources.

Remove
bool Remove(
UMediaSource 	MediaSource
	)

Remove all occurrences of the given media source in the play list.

**Parameters**

MediaSource
UMediaSource

The media source to remove.

**Returns**

true if the media source was removed, false otherwise.

RemoveAt
bool RemoveAt(
int 	Index
	)

Remove the media source at the specified position.

**Parameters**

Index
int

The index of the media source to remove.

**Returns**

true if the media source was removed, false otherwise.

Replace
bool Replace(
int 	Index,
UMediaSource 	Replacement
	)

Replace the media source at the specified position.

**Parameters**

Index
int

The index of the media source to replace.

Replacement
UMediaSource

The replacement media source.

**Returns**

true if the media source was replaced, false otherwise.

STATIC FUNCTIONS
StaticClass
static UClass UMediaPlaylist::StaticClass()
