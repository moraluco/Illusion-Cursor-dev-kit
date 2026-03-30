# UInterchangeGraphInspectorPipeline

**Visibility:** public

## Inheritance

UInterchangePipelineBase → UInterchangeGraphInspectorPipeline

## Description

This pipeline is the generic pipeline option for all meshes type and should be call before specialized Mesh pipeline (like generic static mesh or skeletal mesh pipelines) All shared import options between mesh type should be added here.

UPROPERTY possible meta values: @meta ImportOnly - Boolean, the property is use only when we import not when we re-import. Cannot be mix with ReimportOnly!  @meta ReimportOnly - Boolean, the property is use only when we re-import not when we import. Cannot be mix with ImportOnly!  @meta MeshType - String, the property is for static or skeletal or both (static | skeletal) mesh type. If not specified it will apply to all mesh type.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangeGraphInspectorPipeline::StaticClass()
```
