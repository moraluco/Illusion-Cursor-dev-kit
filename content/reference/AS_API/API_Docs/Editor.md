# Editor

## Inheritance

Editor

## Description

STATIC VARIABLES GridSize static const float32 Editor::GridSize BLUEPRINT UPGRADE TOOLS RemoveUnusedNodes static void Editor::RemoveUnusedNodes( UBlueprint 	Blueprint 	)

Remove any nodes in this blueprint that have no connections made to them.

Parameters Blueprint UBlueprint

The blueprint to remove the nodes from

CompileBlueprint static void Editor::CompileBlueprint( UBlueprint 	Blueprint 	)

Compiles the given blueprint.

Parameters Blueprint UBlueprint

Blueprint to compile

FindEventGraph static UEdGraph Editor::FindEventGraph( UBlueprint 	Blueprint 	)

Finds the event graph of the given blueprint. Null if it doesn't have one. This will only return the primary event graph of the blueprint (the graph named "EventGraph").

Parameters Blueprint UBlueprint

Blueprint to search for the event graph on

Returns

UEdGraph*  Event graph of the blueprint if it has one, null if it doesn't have one

FindGraph static UEdGraph Editor::FindGraph( UBlueprint 	Blueprint, FName 	GraphName 	)

Finds the graph with the given name on the blueprint. Null if it doesn't have one.

Parameters Blueprint UBlueprint

Blueprint to search

GraphName FName

The name of the graph to search for

Returns

UEdGraph*  Pointer to the graph with the given name, null if not found

RenameGraph static void Editor::RenameGraph( UEdGraph 	Graph, FString 	NewNameStr	 = 	"" 	)

Attempts to rename the given graph with a new name

Parameters Graph UEdGraph

The graph to rename

NewNameStr FString

The new name of the graph

GetBlueprintAsset static UBlueprint Editor::GetBlueprintAsset( UObject 	Object 	)

Gets the UBlueprint version of the given object if possible.

Parameters Object UObject

The object we need to get the UBlueprint from

Returns

UBlueprint*  The blueprint type of the given object, nullptr if the object is not a blueprint.

RemoveFunctionGraph static void Editor::RemoveFunctionGraph( UBlueprint 	Blueprint, FName 	FuncName 	)

Deletes the function of the given name on this blueprint. Does NOT replace function call sites.

Parameters Blueprint UBlueprint

The blueprint to remove the function from

FuncName FName

The name of the function to remove

RemoveGraph static void Editor::RemoveGraph( UBlueprint 	Blueprint, UEdGraph 	Graph 	)

Removes the given graph from the blueprint if possible

Parameters Blueprint UBlueprint

The blueprint the graph will be removed from

Graph UEdGraph

The graph to remove

AddFunctionGraph static UEdGraph Editor::AddFunctionGraph( UBlueprint 	Blueprint, FString 	FuncName	 = 	"" 	)

Adds a function to the given blueprint

Parameters Blueprint UBlueprint

The blueprint to add the function to

FuncName FString

Name of the function to add

Returns

UEdGraph*

RemoveUnusedVariables static int Editor::RemoveUnusedVariables( UBlueprint 	Blueprint 	)

Deletes any unused blueprint created variables the given blueprint.  An Unused variable is any BP variable that is not referenced in any blueprint graphs

Parameters Blueprint UBlueprint

Blueprint that you would like to remove variables from

Returns

Number of variables removed

ReparentBlueprint static void Editor::ReparentBlueprint( UBlueprint 	Blueprint, UClass 	NewParentClass 	)

Attempts to reparent the given blueprint to the new chosen parent class.

Parameters Blueprint UBlueprint

Blueprint that you would like to reparent

NewParentClass UClass

The new parent class to use

ReplaceVariableReferences static void Editor::ReplaceVariableReferences( 	UBlueprint 	Blueprint, const 	FName 	OldVarName, const 	FName 	NewVarName 	)

Replace any references of variables with the OldVarName to references of those with the NewVarName if possible

Parameters Blueprint UBlueprint

Blueprint to replace the variable references on

OldVarName const FName

The variable you want replaced

NewVarName const FName

The new variable that will be used in the old one's place

UpgradeOperatorNodes static void Editor::UpgradeOperatorNodes( UBlueprint 	Blueprint 	)

Replace any old operator nodes (float + float, vector + float, int + vector, etc) with the newer Promotable Operator version of the node. Preserve any connections the original node had to the newer version of the node.

Parameters Blueprint UBlueprint

Blueprint to upgrade

### EDITOR SCRIPTING

```
EDITOR SCRIPTING GeneratedClass static UClass Editor::GeneratedClass(UBlueprint BlueprintObj)
```

Gets the class generated when this blueprint is compiled

**Parameters**

BlueprintObj
UBlueprint

The blueprint object

**Returns**

UClass*  The generated class

EDITOR SCRIPTING | LEVEL UTILITY
DuplicateSelected
static void Editor::DuplicateSelected(
bool 	bOffsetLocations	 = 	false
	)
STATIC FUNCTIONS
IsPlaying
static bool Editor::IsPlaying()
GetGridSize
static float32 Editor::GetGridSize()

Returns the size (cm) of the current location grid selected in the editor
