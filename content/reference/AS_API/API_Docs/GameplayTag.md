# GameplayTag

## Inheritance

GameplayTag → GAMEPLAYTAGS → HasTag

## Description

static bool GameplayTag::HasTag( FGameplayTagContainer 	TagContainer, FGameplayTag 	Tag, bool 	bExactMatch 	)

Check if the tag container has the specified tag

Parameters TagContainer FGameplayTagContainer

Container to check for the tag

Tag FGameplayTag

Tag to check for in the container

bExactMatch bool

If true, the tag has to be exactly present, if false then TagContainer will include it's parent tags while matching

Returns

True if the container has the specified tag, false if it does not

AppendGameplayTagContainers static void GameplayTag::AppendGameplayTagContainers( FGameplayTagContainer& 	InOutTagContainer, FGameplayTagContainer 	InTagContainer 	)

Appends all tags in the InTagContainer to InOutTagContainer

Parameters InOutTagContainer FGameplayTagContainer&

The container that will be appended too.

InTagContainer FGameplayTagContainer

The container to append.

BreakGameplayTagContainer static void GameplayTag::BreakGameplayTagContainer( FGameplayTagContainer 	GameplayTagContainer, TArray<FGameplayTag>& 	GameplayTags 	)

Breaks tag container into explicit array of tags

DoesContainerMatchTagQuery static bool GameplayTag::DoesContainerMatchTagQuery( FGameplayTagContainer 	TagContainer, FGameplayTagQuery 	TagQuery 	)

Check if the specified tag container matches the given Tag Query

Parameters TagContainer FGameplayTagContainer

Container to check if it matches all of the tags in the other container

TagQuery FGameplayTagQuery

Query to match against

Returns

True if the container matches the query, false otherwise.

EqualEqual_GameplayTag static bool GameplayTag::EqualEqual_GameplayTag( FGameplayTag 	A, FGameplayTag 	B 	)

Returns true if the values are equal (A == B)

EqualEqual_GameplayTagContainer static bool GameplayTag::EqualEqual_GameplayTagContainer( FGameplayTagContainer 	A, FGameplayTagContainer 	B 	)

Returns true if the values are equal (A == B)

GetAllActorsOfClassMatchingTagQuery static void GameplayTag::GetAllActorsOfClassMatchingTagQuery(

TSubclassOf<AActor> 	ActorClass, FGameplayTagQuery 	GameplayTagQuery, TArray<AActor>& 	OutActors

)

Get an array of all actors of a specific class (or subclass of that class) which match the specified gameplay tag query.

Parameters ActorClass TSubclassOf<AActor>

Class of actors to fetch

GameplayTagQuery FGameplayTagQuery

Query to match against

GetDebugStringFromGameplayTag static FString GameplayTag::GetDebugStringFromGameplayTag( FGameplayTag 	GameplayTag 	)

Returns an FString representation of a gameplay tag for debugging purposes.

Parameters GameplayTag FGameplayTag

The tag to get the debug string from.

GetDebugStringFromGameplayTagContainer static FString GameplayTag::GetDebugStringFromGameplayTagContainer(

## Members

### TagContainer

```
FGameplayTagContainer TagContainer
```

)

Returns an FString listing all of the gameplay tags in the tag container for debugging purposes.

**Parameters**

TagContainer
FGameplayTagContainer

The tag container to get the debug string from.

GetNumGameplayTagsInContainer
static int GameplayTag::GetNumGameplayTagsInContainer(
FGameplayTagContainer 	TagContainer
	)

Get the number of gameplay tags in the specified container

**Parameters**

TagContainer
FGameplayTagContainer

Tag container to get the number of tags from

**Returns**

The number of tags in the specified container

GetTagName
static FName GameplayTag::GetTagName(
FGameplayTag 	GameplayTag
	)

Returns FName of this tag

HasAllTags
static bool GameplayTag::HasAllTags(
FGameplayTagContainer 	TagContainer,
FGameplayTagContainer 	OtherContainer,
bool 	bExactMatch
	)

Check if the specified tag container has ALL of the tags in the other container

**Parameters**

TagContainer
FGameplayTagContainer

Container to check if it matches all of the tags in the other container

OtherContainer
FGameplayTagContainer

Container to check against. If this is empty, the check will succeed

bExactMatch
bool

If true, the tag has to be exactly present, if false then TagContainer will include it's parent tags while matching

**Returns**

True if the container has ALL of the tags in the other container

HasAnyTags
static bool GameplayTag::HasAnyTags(
FGameplayTagContainer 	TagContainer,
FGameplayTagContainer 	OtherContainer,
bool 	bExactMatch
	)

Check if the specified tag container has ANY of the tags in the other container

**Parameters**

TagContainer
FGameplayTagContainer

Container to check if it matches any of the tags in the other container

OtherContainer
FGameplayTagContainer

Container to check against.

bExactMatch
bool

If true, the tag has to be exactly present, if false then TagContainer will include it's parent tags while matching

**Returns**

True if the container has ANY of the tags in the other container

AddGameplayTag
static void GameplayTag::AddGameplayTag(
FGameplayTagContainer& 	TagContainer,
FGameplayTag 	Tag
	)

Adds a single tag to the passed in tag container

**Parameters**

Tag
FGameplayTag

The tag to add to the container

IsGameplayTagValid
static bool GameplayTag::IsGameplayTagValid(
FGameplayTag 	GameplayTag
	)

Returns true if the passed in gameplay tag is non-null

IsTagQueryEmpty
static bool GameplayTag::IsTagQueryEmpty(
FGameplayTagQuery 	TagQuery
	)

Check if the specified tag query is empty

**Parameters**

TagQuery
FGameplayTagQuery

Query to check

**Returns**

True if the query is empty, false otherwise.

MakeGameplayTagContainerFromArray
static FGameplayTagContainer GameplayTag::MakeGameplayTagContainerFromArray(

TArray<FGameplayTag> 	GameplayTags

)

Creates a FGameplayTagContainer from the array of passed in tags

MakeGameplayTagContainerFromTag
static FGameplayTagContainer GameplayTag::MakeGameplayTagContainerFromTag(

FGameplayTag 	SingleTag

)

Creates a FGameplayTagContainer containing a single tag

MakeGameplayTagQuery
static FGameplayTagQuery GameplayTag::MakeGameplayTagQuery(
FGameplayTagQuery 	TagQuery
	)

Creates a literal FGameplayTagQuery

**Parameters**

TagQuery
FGameplayTagQuery

value to set the FGameplayTagQuery to

**Returns**

The literal FGameplayTagQuery

MakeLiteralGameplayTag
static FGameplayTag GameplayTag::MakeLiteralGameplayTag(
FGameplayTag 	Value
	)

Creates a literal FGameplayTag

MakeLiteralGameplayTagContainer
static FGameplayTagContainer GameplayTag::MakeLiteralGameplayTagContainer(

FGameplayTagContainer 	Value

)

Creates a literal FGameplayTagContainer

MatchesAnyTags
static bool GameplayTag::MatchesAnyTags(
FGameplayTag 	TagOne,
FGameplayTagContainer 	OtherContainer,
bool 	bExactMatch
	)

Determine if TagOne matches against any tag in OtherContainer

**Parameters**

TagOne
FGameplayTag

Tag to check for match

OtherContainer
FGameplayTagContainer

Container to check against.

bExactMatch
bool

If true, the tag has to be exactly present, if false then TagOne will include it's parent tags while matching

**Returns**

True if TagOne matches any tags explicitly present in OtherContainer

MatchesTag
static bool GameplayTag::MatchesTag(
FGameplayTag 	TagOne,
FGameplayTag 	TagTwo,
bool 	bExactMatch
	)

Determine if TagOne matches against TagTwo

**Parameters**

TagOne
FGameplayTag

Tag to check for match

TagTwo
FGameplayTag

Tag to check match against

bExactMatch
bool

If true, the tag has to be exactly present, if false then TagOne will include it's parent tags while matching

**Returns**

True if TagOne matches TagTwo

NotEqual_GameplayTag
static bool GameplayTag::NotEqual_GameplayTag(
FGameplayTag 	A,
FGameplayTag 	B
	)

Returns true if the values are not equal (A != B)

NotEqual_GameplayTagContainer
static bool GameplayTag::NotEqual_GameplayTagContainer(
FGameplayTagContainer 	A,
FGameplayTagContainer 	B
	)

Returns true if the values are not equal (A != B)

RemoveGameplayTag
static bool GameplayTag::RemoveGameplayTag(
FGameplayTagContainer& 	TagContainer,
FGameplayTag 	Tag
	)

Remove a single tag from the passed in tag container, returns true if found

**Parameters**

Tag
FGameplayTag

The tag to add to the container
