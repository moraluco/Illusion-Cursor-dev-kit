# EditorFilter

## Inheritance

EditorFilter

## Description

EDITOR SCRIPTING | UTILITIES | FILTER ByActorTag static TArray<AActor> EditorFilter::ByActorTag(

TArray<AActor> 	TargetArray, FName 	Tag, EEditorScriptingFilterType 	FilterType	 = 	EEditorScriptingFilterType :: Include

)

Filter the array by Tag the Actor contains

Parameters TargetArray TArray<AActor>

Array of Actor to filter. The array will not change.

Tag FName

The exact name of the Tag the actor contains.

FilterType EEditorScriptingFilterType

Should include or not the array's item if it respects the condition.

Returns

The filtered list.

ByClass static TArray<UObject> EditorFilter::ByClass(

TArray<UObject> 	TargetArray, TSubclassOf<UObject> 	ObjectClass, EEditorScriptingFilterType 	FilterType	 = 	EEditorScriptingFilterType :: Include

)

Filter the array based on the Object's class.

Parameters TargetArray TArray<UObject>

Array of Object to filter. The array will not change.

ObjectClass TSubclassOf<UObject>

The Class of the object.

FilterType EEditorScriptingFilterType

Should include or not the array's item if it respects the condition.

Returns

The filtered list.

ByIDName static TArray<UObject> EditorFilter::ByIDName(

TArray<UObject> 	TargetArray, FString 	NameSubString, EEditorScriptingStringMatchType 	StringMatch	 = 	EEditorScriptingStringMatchType :: Contains, EEditorScriptingFilterType 	FilterType	 = 	EEditorScriptingFilterType :: Include

)

Filter the array based on the Object's ID name.

Parameters TargetArray TArray<UObject>

Array of Object to filter. The array will not change.

NameSubString FString

The text the Object's ID name.

StringMatch EEditorScriptingStringMatchType

Contains the NameSubString OR matches with the wildcard *? OR exactly the same value.

FilterType EEditorScriptingFilterType

Should include or not the array's item if it respects the condition.

Returns

The filtered list.

ByLayer static TArray<AActor> EditorFilter::ByLayer(

TArray<AActor> 	TargetArray, FName 	LayerName, EEditorScriptingFilterType 	FilterType	 = 	EEditorScriptingFilterType :: Include

)

Filter the array by Layer the Actor belongs to.

Parameters TargetArray TArray<AActor>

Array of Actor to filter. The array will not change.

LayerName FName

The exact name of the Layer the actor belongs to.

FilterType EEditorScriptingFilterType

Should include or not the array's item if it respects the condition.

Returns

The filtered list.

ByLevelName static TArray<AActor> EditorFilter::ByLevelName(

TArray<AActor> 	TargetArray, FName 	LevelName, EEditorScriptingFilterType 	FilterType	 = 	EEditorScriptingFilterType :: Include

)

Filter the array by Level the Actor belongs to.

Parameters TargetArray TArray<AActor>

Array of Actor to filter. The array will not change.

LevelName FName

The name of the Level the actor belongs to (same name as in the ContentBrowser).

FilterType EEditorScriptingFilterType

Should include or not the array's item if it respects the condition.

Returns

The filtered list.

BySelection static TArray<AActor> EditorFilter::BySelection(

TArray<AActor> 	TargetArray, EEditorScriptingFilterType 	FilterType	 = 	EEditorScriptingFilterType :: Include

)

Filter the array based on Object's selection.

Parameters TargetArray TArray<AActor>

Array of Object to filter. The array will not change.

FilterType EEditorScriptingFilterType

Should include or not the array's item if it respects the condition.

Returns

The filtered list.

ByActorLabel static TArray<AActor> EditorFilter::ByActorLabel(

TArray<AActor> 	TargetArray, FString 	NameSubString, EEditorScriptingStringMatchType 	StringMatch	 = 	EEditorScriptingStringMatchType :: Contains, EEditorScriptingFilterType 	FilterType	 = 	EEditorScriptingFilterType :: Include, bool 	bIgnoreCase	 = 	true

)

Filter the array based on the Actor's label (what we see in the editor)

Parameters TargetArray TArray<AActor>

Array of Actor to filter. The array will not change.

NameSubString FString

The text the Actor's Label.

StringMatch EEditorScriptingStringMatchType

Contains the NameSubString OR matches with the wildcard *? OR exactly the same value.

FilterType EEditorScriptingFilterType

Should include or not the array's item if it respects the condition.

bIgnoreCase bool

Determines case sensitivity options for string comparisons.

Returns

The filtered list.
