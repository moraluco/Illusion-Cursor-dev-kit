# UInterchangeProjectSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UInterchangeProjectSettings → INTERCHANGE → DefaultPipelineStack

## Description

FName DefaultPipelineStack

This tell interchange which pipeline to select when importing assets.

PipelineConfigurationDialogClass TSoftClassPtr<UInterchangePipelineConfigurationBase> PipelineConfigurationDialogClass

This tell interchange which pipeline configuration dialog to popup when we need to configure the pipelines.

bShowPipelineStacksConfigurationDialog bool bShowPipelineStacksConfigurationDialog

If enabled, the pipeline stacks configuration dialog will show every time interchange must choose a pipeline to import or re-import. If disabled interchange will use the DefaultPipelineStack.

PipelineStacks TMap<FName,FInterchangePipelineStack> PipelineStacks

All the available pipeline stacks you want to use to import with interchange. The chosen pipeline stack execute all the pipelines from top to bottom order. You can order them by using the grip on the left of any pipelines.

INTERCHANGE (EXPERIMENTAL) DefaultScenePipelineStack FName DefaultScenePipelineStack

This tell interchange which pipeline to select when importing scenes.

bUseInterchangeWhenImportingIntoLevel bool bUseInterchangeWhenImportingIntoLevel

If checked, will use Interchange when importing into level.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangeProjectSettings::StaticClass()
```
