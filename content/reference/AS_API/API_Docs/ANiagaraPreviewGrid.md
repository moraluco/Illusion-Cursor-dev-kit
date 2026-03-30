# ANiagaraPreviewGrid

**Visibility:** public

## Inheritance

AActor → ANiagaraPreviewGrid → PREVIEW → ResetMode

## Description

ENiagaraPreviewGridResetMode ResetMode PreviewAxisX UNiagaraPreviewAxis PreviewAxisX

Object controlling behavior varying on the X axis.

PreviewAxisY UNiagaraPreviewAxis PreviewAxisY

Object controlling behavior varying on the Y axis.

PreviewClass TSubclassOf<ANiagaraPreviewBase> PreviewClass

Class used to for previews in this grid.

SpacingX float32 SpacingX

The default spacing between previews in X if the axis does not override it.

SpacingY float32 SpacingY

The default spacing between previews if the axis does not override it.

System UNiagaraSystem System

## PREVIEW

### DeactivatePreviews

```
void DeactivatePreviews()
```

GetPreviews

### void GetPreviews

```
void GetPreviews(TArray<UNiagaraComponent>& OutPreviews)
```

SetPaused

### void SetPaused

```
void SetPaused(bool bPaused)
```

ActivatePreviews

### void ActivatePreviews

```
void ActivatePreviews(bool bReset)
```

### End

```
AActor Interface End
```
### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ANiagaraPreviewGrid ANiagaraPreviewGrid::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ANiagaraPreviewGrid::StaticClass

```
static UClass ANiagaraPreviewGrid::StaticClass()
```
