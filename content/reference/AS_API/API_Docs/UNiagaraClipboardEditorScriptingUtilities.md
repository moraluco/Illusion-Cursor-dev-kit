# UNiagaraClipboardEditorScriptingUtilities

**Visibility:** public

## Inheritance

UObject → UNiagaraClipboardEditorScriptingUtilities → INPUT → CreateStructLocalValueInput

## Description

static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateStructLocalValueInput(

UObject 	InOuter, FName 	InInputName, bool 	bInHasEditCondition, bool 	bInEditConditionValue, UUserDefinedStruct 	InStructValue

) CreateDataValueInput static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateDataValueInput(

UObject 	InOuter, FName 	InInputName, bool 	bInHasEditCondition, bool 	bInEditConditionValue, UNiagaraDataInterface 	InDataValue

) CreateDynamicValueInput static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateDynamicValueInput(

UObject 	InOuter, FName 	InInputName, FName 	InInputTypeName, bool 	bInHasEditCondition, bool 	bInEditConditionValue, FString 	InDynamicValueName, UNiagaraScript 	InDynamicValue

) CreateEnumLocalValueInput static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateEnumLocalValueInput(

UObject 	InOuter, FName 	InInputName, bool 	bInHasEditCondition, bool 	bInEditCoditionValue, UUserDefinedEnum 	InEnumType, int 	InEnumValue

) CreateExpressionValueInput static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateExpressionValueInput(

UObject 	InOuter, FName 	InInputName, FName 	InInputTypeName, bool 	bInHasEditCondition, bool 	bInEditConditionValue, FString 	InExpressionValue

) CreateFloatLocalValueInput static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateFloatLocalValueInput(

UObject 	InOuter, FName 	InInputName, bool 	bInHasEditCondition, bool 	bInEditConditionValue, float32 	InLocalValue

) CreateIntLocalValueInput static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateIntLocalValueInput(

UObject 	InOuter, FName 	InInputName, bool 	bInHasEditCondition, bool 	bInEditConditionValue, int 	InLocalValue

) CreateLinkedValueInput static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateLinkedValueInput(

UObject 	InOuter, FName 	InInputName, FName 	InInputTypeName, bool 	bInHasEditCondition, bool 	bInEditConditionValue, FName 	InLinkedValue

) CreateBoolLocalValueInput static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateBoolLocalValueInput(

UObject 	InOuter, FName 	InInputName, bool 	bInHasEditCondition, bool 	bInEditConditionValue, bool 	InBoolValue

) CreateVec2LocalValueInput static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateVec2LocalValueInput(

UObject 	InOuter, FName 	InInputName, bool 	bInHasEditCondition, bool 	bInEditConditionValue, FVector2D 	InVec2Value

) CreateVec3LocalValueInput static UNiagaraClipboardFunctionInput UNiagaraClipboardEditorScriptingUtilities::CreateVec3LocalValueInput(

UObject 	InOuter, FName 	InInputName, bool 	bInHasEditCondition, bool 	bInEditConditionValue, FVector 	InVec3Value

) GetTypeName static FName UNiagaraClipboardEditorScriptingUtilities::GetTypeName(

## Members

### InInput

```
const 	UNiagaraClipboardFunctionInput InInput
```

) TryGetInputByName static void UNiagaraClipboardEditorScriptingUtilities::TryGetInputByName(

TArray<UNiagaraClipboardFunctionInput> 	InInputs,

FName 	InInputName,

bool& 	bOutSucceeded,

UNiagaraClipboardFunctionInput& 	OutInput

### )

```
) TryGetLocalValueAsFloat
```

static void UNiagaraClipboardEditorScriptingUtilities::TryGetLocalValueAsFloat(

const 	UNiagaraClipboardFunctionInput 	InInput,

	bool& 	bOutSucceeded,

	float32& 	OutValue

### )

```
) TryGetLocalValueAsInt
```

static void UNiagaraClipboardEditorScriptingUtilities::TryGetLocalValueAsInt(

const 	UNiagaraClipboardFunctionInput 	InInput,

	bool& 	bOutSucceeded,

	int& 	OutValue

)

### TrySetLocalValueAsInt

```
static void UNiagaraClipboardEditorScriptingUtilities::TrySetLocalValueAsInt(
```

UNiagaraClipboardFunctionInput 	InInput,

### bool& 	bOutSucceeded,

```
bool& 	bOutSucceeded, int 	InValue, bool 	bLooseTyping	 = 	true
```

)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraClipboardEditorScriptingUtilities::StaticClass()
```
