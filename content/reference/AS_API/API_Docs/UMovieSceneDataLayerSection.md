# UMovieSceneDataLayerSection

**Visibility:** public

## Inheritance

UMovieSceneSection → UMovieSceneDataLayerSection → DATALAYER → DataLayers

## Description

TArray<FActorDataLayer> DataLayers

A list of data layers that should be loaded or unloaded by this section

DesiredState EDataLayerRuntimeState DesiredState

The desired state for the data layers on this section when the section is actively evaluating.

PrerollState EDataLayerRuntimeState PrerollState

The desired state for the data layers on this section when the section is pre or post-rolling.

bFlushOnUnload bool bFlushOnUnload

Determine if we need to flush level streaming when the data layers unloads.

## SEQUENCER \| SECTION

### FlushOnUnload

```
bool FlushOnUnload SEQUENCER|SECTION SetDataLayers void SetDataLayers(TArray<FActorDataLayer> InDataLayers)
```

GetDesiredState

### EDataLayerRuntimeState GetDesiredState

```
EDataLayerRuntimeState GetDesiredState()const GetFlushOnUnload
```

bool GetFlushOnUnload() const

### GetPrerollState

```
EDataLayerRuntimeState GetPrerollState()const
```

GetDataLayers

### const TArray<FActorDataLayer>& GetDataLayers

```
const TArray<FActorDataLayer>& GetDataLayers()const SetDesiredState
```

void SetDesiredState(

### EDataLayerRuntimeState 	InDesiredState

```
EDataLayerRuntimeState 	InDesiredState 	)
```

SetFlushOnUnload

### void SetFlushOnUnload

```
void SetFlushOnUnload(bool bFlushOnUnload)
```

SetPrerollState

### void SetPrerollState

```
void SetPrerollState(EDataLayerRuntimeState InPrerollState)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneDataLayerSection::StaticClass()
```
