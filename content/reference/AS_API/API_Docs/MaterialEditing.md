# MaterialEditing

## Inheritance

MaterialEditing → MATERIALEDITING → GetNumMaterialExpressionsInFunction

## Description

static int MaterialEditing::GetNumMaterialExpressionsInFunction(

## Members

### MaterialFunction

```
const 	UMaterialFunction MaterialFunction
```

)

### Returns number of material expressions in the supplied material

```
Returns number of material expressions in the supplied material
```

ConnectMaterialExpressions

### static bool MaterialEditing::ConnectMaterialExpressions

```
static bool MaterialEditing::ConnectMaterialExpressions(UMaterialExpression FromExpression, FString FromOutputName, UMaterialExpression ToExpression, FString ToInputName)
```

Create connection between two material expressions

**Parameters**

FromExpression
UMaterialExpression

Expression to make connection from

FromOutputName
FString

Name of output of FromExpression to make connection from. Leave empty to use first output.

ToExpression
UMaterialExpression

Expression to make connection to

ToInputName
FString

Name of input of ToExpression to make connection to. Leave empty to use first input.

ConnectMaterialProperty
static bool MaterialEditing::ConnectMaterialProperty(
UMaterialExpression 	FromExpression,
FString 	FromOutputName,
EMaterialProperty 	Property
	)

Connect a material expression output to one of the material property inputs (e.g. diffuse color, opacity etc)

**Parameters**

FromExpression
UMaterialExpression

Expression to make connection from

FromOutputName
FString

Name of output of FromExpression to make connection from

Property
EMaterialProperty

Property input on material to make connection to

CreateMaterialExpression
static UMaterialExpression MaterialEditing::CreateMaterialExpression(

UMaterial 	Material,
TSubclassOf<UMaterialExpression> 	ExpressionClass,
int 	NodePosX	 = 	0,
int 	NodePosY	 = 	0

)

Create a new material expression node within the supplied material

**Parameters**

Material
UMaterial

Material asset to add an expression to

ExpressionClass
TSubclassOf<UMaterialExpression>

Class of expression to add

NodePosX
int

X position of new expression node

NodePosY
int

Y position of new expression node

CreateMaterialExpressionInFunction
static UMaterialExpression MaterialEditing::CreateMaterialExpressionInFunction(

UMaterialFunction 	MaterialFunction,
TSubclassOf<UMaterialExpression> 	ExpressionClass,
int 	NodePosX	 = 	0,
int 	NodePosY	 = 	0

)

Create a new material expression node within the supplied material function

**Parameters**

MaterialFunction
UMaterialFunction

Material function asset to add an expression to

ExpressionClass
TSubclassOf<UMaterialExpression>

Class of expression to add

NodePosX
int

X position of new expression node

NodePosY
int

Y position of new expression node

DeleteAllMaterialExpressions
static void MaterialEditing::DeleteAllMaterialExpressions(
UMaterial 	Material
	)

Delete all material expressions in the supplied material

DeleteAllMaterialExpressionsInFunction
static void MaterialEditing::DeleteAllMaterialExpressionsInFunction(

UMaterialFunction 	MaterialFunction

)

Delete all material expressions in the supplied material function

DeleteMaterialExpression
static void MaterialEditing::DeleteMaterialExpression(
UMaterial 	Material,
UMaterialExpression 	Expression
	)

Delete a specific expression from a material. Will disconnect from other expressions.

DeleteMaterialExpressionInFunction
static void MaterialEditing::DeleteMaterialExpressionInFunction(

UMaterialFunction 	MaterialFunction,
UMaterialExpression 	Expression

)

Delete a specific expression from a material function. Will disconnect from other expressions.

DuplicateMaterialExpression
static UMaterialExpression MaterialEditing::DuplicateMaterialExpression(

UMaterial 	Material,
UMaterialFunction 	MaterialFunction,
UMaterialExpression 	Expression

)

Duplicates the provided material expression adding it to the same material / material function, and copying parameters.  Note: Does not duplicate transient properties (Ex: GraphNode).

**Parameters**

Material
UMaterial

Material asset to add an expression to

MaterialFunction
UMaterialFunction

Specified if adding an expression to a MaterialFunction, used as Outer for new expression object

GetChildInstances
static void MaterialEditing::GetChildInstances(
UMaterialInterface 	Parent,
TArray<FAssetData>& 	ChildInstances
	)

Gets all direct child mat instances

GetInputsForMaterialExpression
static TArray<UMaterialExpression> MaterialEditing::GetInputsForMaterialExpression(

UMaterial 	Material,
UMaterialExpression 	MaterialExpression

)

Get the set of nodes acting as inputs to a node from an active material editor

GetMaterialDefaultScalarParameterValue
static float32 MaterialEditing::GetMaterialDefaultScalarParameterValue(
UMaterial 	Material,
FName 	ParameterName
	)

Get the default scalar (float) parameter value from a Material

GetMaterialDefaultStaticSwitchParameterValue
static bool MaterialEditing::GetMaterialDefaultStaticSwitchParameterValue(

UMaterial 	Material,
FName 	ParameterName

)

Get the default static switch parameter value from a Material

GetMaterialDefaultTextureParameterValue
static UTexture MaterialEditing::GetMaterialDefaultTextureParameterValue(

UMaterial 	Material,
FName 	ParameterName

)

Get the default texture parameter value from a Material

GetMaterialDefaultVectorParameterValue
static FLinearColor MaterialEditing::GetMaterialDefaultVectorParameterValue(

UMaterial 	Material,
FName 	ParameterName

)

Get the default vector parameter value from a Material

GetMaterialInstanceRuntimeVirtualTextureParameterValue
static URuntimeVirtualTexture MaterialEditing::GetMaterialInstanceRuntimeVirtualTextureParameterValue(

UMaterialInstanceConstant 	Instance,
FName 	ParameterName,
EMaterialParameterAssociation 	Association	 = 	EMaterialParameterAssociation :: GlobalParameter

)

Get the current texture parameter value from a Material Instance

GetMaterialInstanceScalarParameterValue
static float32 MaterialEditing::GetMaterialInstanceScalarParameterValue(

UMaterialInstanceConstant 	Instance,
FName 	ParameterName,
EMaterialParameterAssociation 	Association	 = 	EMaterialParameterAssociation :: GlobalParameter

)

Get the current scalar (float) parameter value from a Material Instance

GetMaterialInstanceStaticSwitchParameterValue
static bool MaterialEditing::GetMaterialInstanceStaticSwitchParameterValue(

UMaterialInstanceConstant 	Instance,
FName 	ParameterName,
EMaterialParameterAssociation 	Association	 = 	EMaterialParameterAssociation :: GlobalParameter

)

Get the current static switch parameter value from a Material Instance

GetMaterialInstanceTextureParameterValue
static UTexture MaterialEditing::GetMaterialInstanceTextureParameterValue(

UMaterialInstanceConstant 	Instance,
FName 	ParameterName,
EMaterialParameterAssociation 	Association	 = 	EMaterialParameterAssociation :: GlobalParameter

)

Get the current texture parameter value from a Material Instance

GetMaterialInstanceVectorParameterValue
static FLinearColor MaterialEditing::GetMaterialInstanceVectorParameterValue(

UMaterialInstanceConstant 	Instance,
FName 	ParameterName,
EMaterialParameterAssociation 	Association	 = 	EMaterialParameterAssociation :: GlobalParameter

)

Get the current vector parameter value from a Material Instance

GetMaterialPropertyInputNode
static UMaterialExpression MaterialEditing::GetMaterialPropertyInputNode(

UMaterial 	Material,
EMaterialProperty 	Property

)

Get the node providing the output for a given material property from an active material editor

GetMaterialSelectedNodes
static TSet<UObject> MaterialEditing::GetMaterialSelectedNodes(
UMaterial 	Material
	)

Get the set of selected nodes from an active material editor

GetNumMaterialExpressions
static int MaterialEditing::GetNumMaterialExpressions(
const 	UMaterial 	Material
	)

Returns number of material expressions in the supplied material

ClearAllMaterialInstanceParameters
static void MaterialEditing::ClearAllMaterialInstanceParameters(

UMaterialInstanceConstant 	Instance

)

Clears all material parameters set by this Material Instance

GetScalarParameterNames
static void MaterialEditing::GetScalarParameterNames(
UMaterialInterface 	Material,
TArray<FName>& 	ParameterNames
	)

Gets all scalar parameter names

GetScalarParameterSource
static bool MaterialEditing::GetScalarParameterSource(
	UMaterialInterface 	Material,
const 	FName 	ParameterName,
	FSoftObjectPath& 	ParameterSource
	)

Returns the path of the asset where the parameter originated, as well as true/false if it was found

**Parameters**

Material
UMaterialInterface

The material or material instance you want to look up a parameter from

ParameterName
const FName

The parameter name

ParameterSource
FSoftObjectPath&

The soft object path of the asset the parameter originates in

**Returns**

Whether or not the parameter was found in this material

GetStaticSwitchParameterNames
static void MaterialEditing::GetStaticSwitchParameterNames(
UMaterialInterface 	Material,
TArray<FName>& 	ParameterNames
	)

Gets all static switch parameter names

GetStaticSwitchParameterSource
static bool MaterialEditing::GetStaticSwitchParameterSource(

	UMaterialInterface 	Material,
const 	FName 	ParameterName,
	FSoftObjectPath& 	ParameterSource

)

Returns the path of the asset where the parameter originated, as well as true/false if it was found

**Parameters**

Material
UMaterialInterface

The material or material instance you want to look up a parameter from

ParameterName
const FName

The parameter name

ParameterSource
FSoftObjectPath&

The soft object path of the asset the parameter originates in

**Returns**

Whether or not the parameter was found in this material

GetStatistics
static FMaterialStatistics MaterialEditing::GetStatistics(
UMaterialInterface 	Material
	)

Returns statistics about the given material

GetTextureParameterNames
static void MaterialEditing::GetTextureParameterNames(
UMaterialInterface 	Material,
TArray<FName>& 	ParameterNames
	)

Gets all texture parameter names

GetTextureParameterSource
static bool MaterialEditing::GetTextureParameterSource(

	UMaterialInterface 	Material,
const 	FName 	ParameterName,
	FSoftObjectPath& 	ParameterSource

)

Returns the path of the asset where the parameter originated, as well as true/false if it was found

**Parameters**

Material
UMaterialInterface

The material or material instance you want to look up a parameter from

ParameterName
const FName

The parameter name

ParameterSource
FSoftObjectPath&

The soft object path of the asset the parameter originates in

**Returns**

Whether or not the parameter was found in this material

GetUsedTextures
static TArray<UTexture> MaterialEditing::GetUsedTextures(
UMaterial 	Material
	)

Get the list of textures used by a material

GetVectorParameterNames
static void MaterialEditing::GetVectorParameterNames(
UMaterialInterface 	Material,
TArray<FName>& 	ParameterNames
	)

Gets all vector parameter names

GetVectorParameterSource
static bool MaterialEditing::GetVectorParameterSource(
	UMaterialInterface 	Material,
const 	FName 	ParameterName,
	FSoftObjectPath& 	ParameterSource
	)

Returns the path of the asset where the parameter originated, as well as true/false if it was found

**Parameters**

Material
UMaterialInterface

The material or material instance you want to look up a parameter from

ParameterName
const FName

The parameter name

ParameterSource
FSoftObjectPath&

The soft object path of the asset the parameter originates in

**Returns**

Whether or not the parameter was found in this material

HasMaterialUsage
static bool MaterialEditing::HasMaterialUsage(
UMaterial 	Material,
EMaterialUsage 	Usage
	)

Check if a particular usage is enabled for the supplied material (e.g. SkeletalMesh, ParticleSprite etc)

**Parameters**

Material
UMaterial

Material to check usage for

Usage
EMaterialUsage

Usage type to check for this material

LayoutMaterialExpressions
static void MaterialEditing::LayoutMaterialExpressions(
UMaterial 	Material
	)

Layouts the expressions in a grid pattern

LayoutMaterialFunctionExpressions
static void MaterialEditing::LayoutMaterialFunctionExpressions(

UMaterialFunction 	MaterialFunction

)

Layouts the expressions in a grid pattern

RecompileMaterial
static void MaterialEditing::RecompileMaterial(
UMaterial 	Material
	)

Trigger a recompile of a material. Must be performed after making changes to the graph to have changes reflected.

SetMaterialInstanceParent
static void MaterialEditing::SetMaterialInstanceParent(
UMaterialInstanceConstant 	Instance,
UMaterialInterface 	NewParent
	)

Set the parent Material or Material Instance to use for this Material Instance

SetMaterialInstanceRuntimeVirtualTextureParameterValue
static bool MaterialEditing::SetMaterialInstanceRuntimeVirtualTextureParameterValue(

UMaterialInstanceConstant 	Instance,
FName 	ParameterName,
URuntimeVirtualTexture 	Value,
EMaterialParameterAssociation 	Association	 = 	EMaterialParameterAssociation :: GlobalParameter

)

Set the texture parameter value for a Material Instance

SetMaterialInstanceScalarParameterValue
static bool MaterialEditing::SetMaterialInstanceScalarParameterValue(

UMaterialInstanceConstant 	Instance,
FName 	ParameterName,
float32 	Value,
EMaterialParameterAssociation 	Association	 = 	EMaterialParameterAssociation :: GlobalParameter

)

Set the scalar (float) parameter value for a Material Instance

SetMaterialInstanceStaticSwitchParameterValue
static bool MaterialEditing::SetMaterialInstanceStaticSwitchParameterValue(

UMaterialInstanceConstant 	Instance,
FName 	ParameterName,
bool 	Value,
EMaterialParameterAssociation 	Association	 = 	EMaterialParameterAssociation :: GlobalParameter

)

Set the static switch parameter value for a Material Instance

SetMaterialInstanceTextureParameterValue
static bool MaterialEditing::SetMaterialInstanceTextureParameterValue(

UMaterialInstanceConstant 	Instance,
FName 	ParameterName,
UTexture 	Value,
EMaterialParameterAssociation 	Association	 = 	EMaterialParameterAssociation :: GlobalParameter

)

Set the texture parameter value for a Material Instance

SetMaterialInstanceVectorParameterValue
static bool MaterialEditing::SetMaterialInstanceVectorParameterValue(

UMaterialInstanceConstant 	Instance,
FName 	ParameterName,
FLinearColor 	Value,
EMaterialParameterAssociation 	Association	 = 	EMaterialParameterAssociation :: GlobalParameter

)

Set the vector parameter value for a Material Instance

SetMaterialUsage
static bool MaterialEditing::SetMaterialUsage(
UMaterial 	Material,
EMaterialUsage 	Usage,
bool& 	bNeedsRecompile
	)

Enable a particular usage for the supplied material (e.g. SkeletalMesh, ParticleSprite etc)

**Parameters**

Material
UMaterial

Material to change usage for

Usage
EMaterialUsage

New usage type to enable for this material

bNeedsRecompile
bool&

Returned to indicate if material needs recompiling after this change

UpdateMaterialFunction
static void MaterialEditing::UpdateMaterialFunction(

UMaterialFunctionInterface 	MaterialFunction,
UMaterial 	PreviewMaterial	 = 	nullptr

)

Update a Material Function after edits have been made.  Will recompile any Materials that use the supplied Material Function.

UpdateMaterialInstance
static void MaterialEditing::UpdateMaterialInstance(
UMaterialInstanceConstant 	Instance
	)

Called after making modifications to a Material Instance to recompile shaders etc.
