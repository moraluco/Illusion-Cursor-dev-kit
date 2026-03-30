# DatasmithContent

## Inheritance

DatasmithContent

## Description

DATASMITH USER DATA GetDatasmithUserDataKeysAndValuesForValue static void DatasmithContent::GetDatasmithUserDataKeysAndValuesForValue(

UObject 	Object, FString 	StringToMatch, TArray<FName>& 	OutKeys, TArray<FString>& 	OutValues

)

Get the keys and values for which the associated value contains the string to match for the Datasmith User Data of the given object.

Parameters Object UObject

The Object from which to retrieve the Datasmith User Data.

StringToMatch FString

The string to match in the values.

OutKeys TArray<FName>&

Output array of keys for which the associated values contain the string to match.

OutValues TArray<FString>&

Output array of values associated to the keys.

GetDatasmithUserData static UDatasmithAssetUserData DatasmithContent::GetDatasmithUserData( UObject 	Object 	)

Get the Datasmith User Data of a given object

Parameters Object UObject

The Object from which to retrieve the Datasmith User Data.

Returns

The Datasmith User Data if it exists; nullptr, otherwise

GetDatasmithUserDataValueForKey static FString DatasmithContent::GetDatasmithUserDataValueForKey( UObject 	Object, FName 	Key 	)

Get the value of the given key for the Datasmith User Data of the given object.

Parameters Object UObject

The Object from which to retrieve the Datasmith User Data.

Key FName

The key to find in the Datasmith User Data.

Returns

The string value associated with the given key

EDITOR SCRIPTING | DATASMITH USER DATA GetAllObjectsAndValuesForKey static void DatasmithContent::GetAllObjectsAndValuesForKey( FName 	Key, TSubclassOf<UObject> 	ObjectClass, TArray<UObject>& 	OutObjects, TArray<FString>& 	OutValues 	)

Find all loaded objects of the given type that have a Datasmith User Data that contains the given key and their associated values.  This is a slow operation, so editor only.

Parameters Key FName

The key to find in the Datasmith User Data.

ObjectClass TSubclassOf<UObject>

Class of the object on which to filter, if specificed; otherwise there's no filtering

OutObjects TArray<UObject>&

Output array of objects for which the Datasmith User Data match the given key.

OutValues TArray<FString>&

Output array of values associated with each object in OutObjects.

GetAllDatasmithUserData static void DatasmithContent::GetAllDatasmithUserData(

TSubclassOf<UObject> 	ObjectClass, TArray<UDatasmithAssetUserData>& 	OutUserData

)

Find all Datasmith User Data of loaded objects of the given type.  This is a slow operation, so editor only.

Parameters ObjectClass TSubclassOf<UObject>

Class of the object on which to filter, if specificed; otherwise there's no filtering

OutUserData TArray<UDatasmithAssetUserData>&

Output array of Datasmith User Data.
