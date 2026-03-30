# StringTable

## Inheritance

StringTable

## Description

STATIC VARIABLES RegisteredStringTables static const TArray<FName> StringTable::RegisteredStringTables UTILITIES|STRING TABLE GetMetaDataIdsFromStringTableEntry static TArray<FName> StringTable::GetMetaDataIdsFromStringTableEntry( const 	FName 	TableId, 	FString 	Key 	)

Returns an array of all meta-data IDs within the given string table entry

GetRegisteredStringTables static TArray<FName> StringTable::GetRegisteredStringTables()

Returns an array of all registered string table IDs

GetTableEntryMetaData static FString StringTable::GetTableEntryMetaData( const 	FName 	TableId, 	FString 	Key, const 	FName 	MetaDataId 	)

Returns the specified meta-data of the given string table entry (or an empty string).

GetTableEntrySourceString static FString StringTable::GetTableEntrySourceString( const 	FName 	TableId, 	FString 	Key 	)

Returns the source string of the given string table entry (or an empty string).

GetTableNamespace static FString StringTable::GetTableNamespace( const 	FName 	TableId 	)

Returns the namespace of the given string table.

IsRegisteredTableEntry static bool StringTable::IsRegisteredTableEntry( const 	FName 	TableId, 	FString 	Key 	)

Returns true if the given table ID corresponds to a registered string table, and that table has.

IsRegisteredTableId static bool StringTable::IsRegisteredTableId( const 	FName 	TableId 	)

Returns true if the given table ID corresponds to a registered string table.

GetKeysFromStringTable static TArray<FString> StringTable::GetKeysFromStringTable( const 	FName 	TableId 	)

Returns an array of all keys within the given string table
