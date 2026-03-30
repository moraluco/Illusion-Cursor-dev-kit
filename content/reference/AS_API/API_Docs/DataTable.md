# DataTable

## Inheritance

DataTable → DATATABLE → EvaluateCurveTableRow

## Description

static void DataTable::EvaluateCurveTableRow( UCurveTable 	CurveTable, FName 	RowName, float32 	InXY, EEvaluateCurveTableResult& 	OutResult, float32& 	OutXY, FString 	ContextString 	) GetDataTableRowNames static void DataTable::GetDataTableRowNames( UDataTable 	Table, TArray<FName>& 	OutRowNames 	) GetDataTableColumnAsString static TArray<FString> DataTable::GetDataTableColumnAsString( const 	UDataTable 	DataTable, 	FName 	PropertyName 	)

Export from the DataTable all the row for one column. Export it as string. The row name is not included.

DoesDataTableRowExist static bool DataTable::DoesDataTableRowExist( UDataTable 	Table, FName 	RowName 	)

Returns whether or not Table contains a row named RowName

EDITOR SCRIPTING | DATATABLE FillDataTableFromJSONString static bool DataTable::FillDataTableFromJSONString( UDataTable 	DataTable, FString 	JSONString 	)

Empty and fill a Data Table from JSON string.

Parameters JSONString FString

The Data that representing the contents of a JSON file.

Returns

True if the operation succeeds, check the log for errors if it didn't succeed.

FillDataTableFromJSONFile static bool DataTable::FillDataTableFromJSONFile( UDataTable 	DataTable, FString 	JSONFilePath, UScriptStruct 	ImportRowStruct	 = 	nullptr 	)

Empty and fill a Data Table from JSON file.

Parameters JSONFilePath FString

The file path of the JSON file.

Returns

True if the operation succeeds, check the log for errors if it didn't succeed.

FillDataTableFromCSVString static bool DataTable::FillDataTableFromCSVString( UDataTable 	DataTable, FString 	CSVString 	)

Empty and fill a Data Table from CSV string.

Parameters CSVString FString

The Data that representing the contents of a CSV file.

Returns

True if the operation succeeds, check the log for errors if it didn't succeed.

FillDataTableFromCSVFile static bool DataTable::FillDataTableFromCSVFile( UDataTable 	DataTable, FString 	CSVFilePath 	)

Empty and fill a Data Table from CSV file.

Parameters CSVFilePath FString

The file path of the CSV file.

Returns

True if the operation succeeds, check the log for errors if it didn't succeed.
