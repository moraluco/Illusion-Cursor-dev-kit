# FJsonObject

## Inheritance

FJsonObject → FUNCTIONS → SetNumberField

## Description

void SetNumberField( FString 	FieldName, float 	Number 	) HasField bool HasField( FString 	FieldName 	) const RemoveField void RemoveField( FString 	FieldName 	) RemoveAllFields void RemoveAllFields() GetStringField FString GetStringField( FString 	FieldName 	) const GetNumberField float GetNumberField( FString 	FieldName 	) const GetBoolField bool GetBoolField( FString 	FieldName 	) const GetObjectField FJsonObject GetObjectField( FString 	FieldName 	) const GetArrayField FJsonArray GetArrayField( FString 	FieldName 	) const SetStringField void SetStringField( FString 	FieldName, FString 	StringValue 	) IsValid bool IsValid() const SetBoolField void SetBoolField( FString 	FieldName, bool 	InValue 	) SetObjectField void SetObjectField( FString 	FieldName, FJsonObject 	InObject 	) SetArrayField void SetArrayField( FString 	FieldName, FJsonArray 	InArray 	) TryGetObjectField bool TryGetObjectField( FString 	FieldName, FJsonObject& 	OutObject 	) const CreateObjectField FJsonObject CreateObjectField( FString 	FieldName 	) TryGetArrayField bool TryGetArrayField( FString 	FieldName, FJsonArray& 	OutArray 	) const LoadFromString bool LoadFromString( FString 	JsonStr 	) SaveToString FString SaveToString( bool 	bPrettyPrint	 = 	true 	) const Iterator FJsonObjectFieldIterator Iterator()
