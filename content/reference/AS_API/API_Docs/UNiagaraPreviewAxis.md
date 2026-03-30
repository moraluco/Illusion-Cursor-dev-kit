# UNiagaraPreviewAxis

**Visibility:** public

## Inheritance

UObject → UNiagaraPreviewAxis → UNiagaraPreviewAxis_InterpParamBase

## Description

Base class for all preview axis types.  NiagaraPreviewGrid uses these to control how many systems to spawn in each axis and how each system varies on that axis.  C++ Examples are show below. You can also create these as Blueprint classes as show in the Plugin content folder.

## FUNCTIONS

### Num

```
int Num()
```

Returns the number of previews for this axis.

### ApplyToPreview

```
void ApplyToPreview(UNiagaraComponent PreviewComponent, int PreviewIndex, bool bIsXAxis, FString& OutLabelText)
```

Applies this axis for the preview at PreviewIndex on this axis.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraPreviewAxis::StaticClass()
```
