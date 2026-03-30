# UWorldPartitionStreamingSourceComponent

**Visibility:** public

## Inheritance

UActorComponent → UWorldPartitionStreamingSourceComponent → DEBUG → DefaultVisualizerLoadingRange

## Description

float32 DefaultVisualizerLoadingRange

Value used by debug visualizer when grid loading range is chosen.

## STREAMING

### DebugColor

```
FColor DebugColor
```

Color used for debugging.

### TargetHLODLayer

```
UHLODLayer TargetHLODLayer
```

Optional target HLODLayer affected by the streaming source.

### Shapes

```
TArray<FStreamingSourceShape> Shapes
```

Optional aggregated shape list used to build a custom shape for the streaming source. When empty, fallbacks sphere shape with a radius equal to grid's loading range.

### Priority

```
EStreamingSourcePriority Priority
```
### bStreamingSourceEnabled

```
bool bStreamingSourceEnabled
```

Whether this component is enabled or not

### TargetState

```
EStreamingSourceTargetState TargetState
```
### TargetGrid

```
FName TargetGrid
```

Optional target grid affected by streaming source.

---

## STREAMING

### EnableStreamingSource

```
void EnableStreamingSource()
```

Enable the component

### IsStreamingCompleted

```
bool IsStreamingCompleted()const
```

Returns true if streaming is completed for this streaming source component.

### IsStreamingSourceEnabled

```
bool IsStreamingSourceEnabled()const
```

Returns true if the component is active.

### DisableStreamingSource

```
void DisableStreamingSource()
```

Disable the component

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UWorldPartitionStreamingSourceComponent UWorldPartitionStreamingSourceComponent::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UWorldPartitionStreamingSourceComponent UWorldPartitionStreamingSourceComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UWorldPartitionStreamingSourceComponent UWorldPartitionStreamingSourceComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UWorldPartitionStreamingSourceComponent::StaticClass()
```
