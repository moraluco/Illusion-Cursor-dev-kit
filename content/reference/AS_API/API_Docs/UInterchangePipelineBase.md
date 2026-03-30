# UInterchangePipelineBase

**Visibility:** public

## Inheritance

UObject → UInterchangePipelineBase → UInterchangeGenericAssetsPipeline → UInterchangeGenericLevelPipeline → UInterchangeGraphInspectorPipeline

## Description

INTERCHANGE | PIPELINE ScriptedExecuteExportPipeline bool ScriptedExecuteExportPipeline( UInterchangeBaseNodeContainer 	BaseNodeContainer 	)

Non virtual helper to allow blueprint to implement event base function let the interchange know if it can run asynchronously.  the Interchange manager is calling this function not the virtual one that is call by the default implementation.

ScriptedExecutePostImportPipeline bool ScriptedExecutePostImportPipeline( const 	UInterchangeBaseNodeContainer 	BaseNodeContainer, 	FString 	NodeKey, 	UObject 	CreatedAsset, 	bool 	bIsAReimport 	)

Non virtual helper to allow blueprint to implement event base function to implement a post import pipeline, It is call after we completely import an asset. PostEditChange is already called. Some assets uses asynchronous build.  This can be useful if you need build data of an asset to finish the setup of another asset.  @example - PhysicsAsset need skeletal mesh render data to be build properly.  Note: - the Interchange manager is calling this function not the virtual one that is call by the default implementation.

ScriptedExecutePreImportPipeline bool ScriptedExecutePreImportPipeline( UInterchangeBaseNodeContainer 	BaseNodeContainer, TArray<UInterchangeSourceData> 	SourceDatas 	)

Non virtual helper to allow blueprint to implement event base function to implement a pre import pipeline, It is call after the translation and before we parse the graph to call the factory. This is where factory node should be created by the pipeline. Each factory node should be send to a a interchange factory to create an unreal asset.  Note: - the Interchange manager is calling this function not the virtual one that is call by the default implementation.

ScriptedCanExecuteOnAnyThread bool ScriptedCanExecuteOnAnyThread( EInterchangePipelineTask 	PipelineTask 	)

Non virtual helper to allow blueprint to implement event base function let the interchange know if it can run asynchronously.  the Interchange manager is calling this function not the virtual one that is call by the default implementation.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangePipelineBase::StaticClass()
```
