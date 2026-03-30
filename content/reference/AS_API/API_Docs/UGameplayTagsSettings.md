# UGameplayTagsSettings

**Visibility:** public

## Inheritance

UGameplayTagsList → UGameplayTagsSettings

## Description

Class for importing GameplayTags directly from a config file.  FGameplayTagsEditorModule::StartupModule adds this class to the Project Settings menu to be edited.  Editing this in Project Settings will output changes to Config/DefaultGameplayTags.ini.

Primary advantages of this approach are: -Adding new tags doesn't require checking out external and editing file (CSV or xls) then reimporting.  -New tags are mergeable since .ini are text and non exclusive checkout.

To do: -Better support could be added for adding new tags. We could match existing tags and autocomplete subtags as the user types (e.g, autocomplete 'Damage.Physical' as the user is adding a 'Damage.Physical.Slash' tag).

## Members

### TAGS

```
ADVANCED GAMEPLAY TAGS
```
### RestrictedConfigFiles

```
TArray<FRestrictedConfigInfo> RestrictedConfigFiles
```

A list of .ini files used to store restricted gameplay tags.

### RestrictedTagList

```
FString RestrictedTagList
```

Restricted Gameplay Tags.

Restricted tags are intended to be top level tags that are important for your data hierarchy and modified by very few people.

### REPLICATION

```
ADVANCED REPLICATION
```
### NetIndexFirstBitSegment

```
int NetIndexFirstBitSegment
```

The length in bits of the first segment when net serializing tags. We will serialize NetIndexFirstBitSegment + 1 bit to indicate "more", which is slower to replicate

### FastReplication

```
bool FastReplication
```

If true, will replicate gameplay tags by index instead of name. For this to work, tags must be identical on client and server

### CommonlyReplicatedTags

```
TArray<FName> CommonlyReplicatedTags
```

List of most frequently replicated tags

### NumBitsForContainerSize

```
int NumBitsForContainerSize
```

Numbers of bits to use for replicating container size, set this based on how large your containers tend to be

---

## GAMEPLAYTAGS

### GameplayTagRedirects

```
TArray<FGameplayTagRedirect> GameplayTagRedirects
```

List of active tag redirects

### WarnOnInvalidTags

```
bool WarnOnInvalidTags
```

If true, will give load warnings when reading in saved tag references that are not in the dictionary

### ClearInvalidTags

```
bool ClearInvalidTags
```

If true, will clear any invalid tags when reading in saved tag references that are not in the dictionary

### InvalidTagCharacters

```
FString InvalidTagCharacters
```

These characters cannot be used in gameplay tags, in addition to special ones like newline

### CategoryRemapping

```
TArray<FGameplayTagCategoryRemap> CategoryRemapping
```

Category remapping. This allows base engine tag category meta data to remap to multiple project-specific categories.

### ImportTagsFromConfig

```
bool ImportTagsFromConfig
```

If true, will import tags from ini files in the config/tags folder

### GameplayTagTableList

```
TArray<FSoftObjectPath> GameplayTagTableList
```

List of data tables to load tags from

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGameplayTagsSettings::StaticClass()
```
