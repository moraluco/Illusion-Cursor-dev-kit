# UBlueprintAsyncActionBase

**Visibility:** public

## Inheritance

UObject → UBlueprintAsyncActionBase → UARBaseAsyncTaskBlueprintProxy → UAsyncActionHandleSaveGame → UAsyncActionLoadPrimaryAssetBase → UAsyncCaptureScene

## Description

and 10 other children

BlueprintCallable factory functions for classes which inherit from UBlueprintAsyncActionBase will have a special blueprint node created for it: UK2Node_AsyncAction You can stop this node spawning and create a more specific one by adding the UCLASS metadata "HasDedicatedAsyncNode"

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBlueprintAsyncActionBase::StaticClass()
```
