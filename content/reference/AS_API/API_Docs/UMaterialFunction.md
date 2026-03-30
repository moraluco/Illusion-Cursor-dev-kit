# UMaterialFunction

**Visibility:** public

## Inheritance

UMaterialFunctionInterface → UMaterialFunction → UMaterialFunctionMaterialLayer → UMaterialFunctionMaterialLayerBlend

## Description

A Material Function is a collection of material expressions that can be reused in different materials

## MATERIALFUNCTION

### LibraryCategoriesText

```
TArray<FText> LibraryCategoriesText
```

Categories that this function belongs to in the material function library.  Ideally categories should be chosen carefully so that there are not too many.

### Description

```
FString Description
```

Description of the function which will be displayed as a tooltip wherever the function is used.

---

## PREVIEW

### PreviewBlendMode

```
EBlendMode PreviewBlendMode
```

Determines the blend mode when previewing a material function.

---

## FUNCTIONS

### SetbPrefixParameterNames

```
void SetbPrefixParameterNames(bool Value)
```

SetbExposeToLibrary

### void SetbExposeToLibrary

```
void SetbExposeToLibrary(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialFunction::StaticClass()
```
