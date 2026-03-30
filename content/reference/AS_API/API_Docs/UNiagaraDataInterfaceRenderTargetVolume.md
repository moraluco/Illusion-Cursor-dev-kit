# UNiagaraDataInterfaceRenderTargetVolume

**Visibility:** public

## Inheritance

UNiagaraDataInterfaceRWBase → UNiagaraDataInterfaceRenderTargetVolume

## Description

RENDER TARGET OverrideRenderTargetFormat ETextureRenderTargetFormat OverrideRenderTargetFormat

When enabled overrides the format of the render target, otherwise uses the project default setting.

RenderTargetUserParameter FNiagaraUserParameterBinding RenderTargetUserParameter

When valid the user parameter is used as the render target rather than creating one internal, note that the input render target will be adjusted by the Niagara simulation

Size FIntVector Size

## FUNCTIONS

### SetbOverrideFormat

```
void SetbOverrideFormat(bool Value)
```

SetbPreviewRenderTarget

### void SetbPreviewRenderTarget

```
void SetbPreviewRenderTarget(bool Value)
```

SetbInheritUserParameterSettings

### void SetbInheritUserParameterSettings

```
void SetbInheritUserParameterSettings(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceRenderTargetVolume::StaticClass()
```
