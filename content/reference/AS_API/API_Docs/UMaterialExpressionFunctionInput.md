# UMaterialExpressionFunctionInput

**Visibility:** public

## Inheritance

UMaterialExpression → UMaterialExpressionFunctionInput → MATERIALEXPRESSION → SortPriority

## Description

int SortPriority

Controls where the input is displayed relative to the other inputs.

## MATERIALEXPRESSIONFUNCTIONINPUT

### InputType

```
EFunctionInputType InputType
```

Type of this input.  Input code chunks will be cast to this type, and a compiler error will be emitted if the cast fails.

### PreviewValue

```
FVector4 PreviewValue
```

Value used to preview this input when editing the material function.

### Description

```
FString Description
```

The input's description, which will be used as a tooltip on the connector in function call expressions that use this function.

### bUsePreviewValueAsDefault

```
bool bUsePreviewValueAsDefault
```

Whether to use the preview value or texture as the default value for this input.

### InputName

```
FName InputName
```

The input's name, which will be drawn on the connector in function call expressions that use this function.

---

## FUNCTIONS

### SetbUsePreviewValueAsDefault

```
void SetbUsePreviewValueAsDefault(bool Value)
```

GetbUsePreviewValueAsDefault

### bool GetbUsePreviewValueAsDefault

```
bool GetbUsePreviewValueAsDefault()const STATIC FUNCTIONS
```

StaticClass

### static UClass UMaterialExpressionFunctionInput::StaticClass

```
static UClass UMaterialExpressionFunctionInput::StaticClass()
```
