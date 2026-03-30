# ULevelSequence

**Visibility:** public

## Inheritance

UMovieSceneSequence → ULevelSequence → UControlRigSequence

## Description

Movie scene animation for Actors.

## ANIMATION

### AssetUserData

```
TArray<TObjectPtr<UAssetUserData>> AssetUserData
```

Array of user data stored with the asset

### LEVEL SEQUENCE

```
LEVEL SEQUENCE FindMetaDataByClass UObject FindMetaDataByClass(TSubclassOf<UObject> InClass)const
```

Find meta-data of a particular type for this level sequence instance.

**Parameters**

InClass
TSubclassOf<UObject>

Class that you wish to find the metadata object for.

**Returns**

An instance of this class if it already exists as metadata on this Level Sequence, otherwise null.

FindOrAddMetaDataByClass
UObject FindOrAddMetaDataByClass(
TSubclassOf<UObject> 	InClass
	)

Find meta-data of a particular type for this level sequence instance, adding it if it doesn't already exist.

**Parameters**

InClass
TSubclassOf<UObject>

Class that you wish to find or create the metadata object for.

**Returns**

An instance of this class as metadata on this Level Sequence.

RemoveMetaDataByClass
void RemoveMetaDataByClass(
TSubclassOf<UObject> 	InClass
	)

Remove meta-data of a particular type for this level sequence instance, if it exists

**Parameters**

InClass
TSubclassOf<UObject>

The class type that you wish to remove the metadata for

CopyMetaData
UObject CopyMetaData(
UObject 	InMetaData
	)

Copy the specified meta data into this level sequence, overwriting any existing meta-data of the same type Meta-data may implement the ILevelSequenceMetaData interface in order to hook into default ULevelSequence functionality.

**Parameters**

InMetaData
UObject

Existing Metadata Object that you wish to copy into this Level Sequence.

**Returns**

The newly copied instance of the Metadata that now exists on this sequence.

STATIC FUNCTIONS
StaticClass
static UClass ULevelSequence::StaticClass()
