# UStreamingSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UStreamingSettings

## Description

Streaming settings.

## LEVELSTREAMING

### LevelStreamingActorsUpdateTimeLimit

```
float32 LevelStreamingActorsUpdateTimeLimit
```

Maximum allowed time to spend for actor registration steps during level streaming (ms per frame).

### PriorityLevelStreamingActorsUpdateExtraTime

```
float32 PriorityLevelStreamingActorsUpdateExtraTime
```

Additional time to spend on actor registration steps during a high priority load.

### AsyncLoadingTimeLimit

```
float32 AsyncLoadingTimeLimit
```

Maximum amount of time to spend doing asynchronous loading (ms per frame).

### PriorityAsyncLoadingExtraTime

```
float32 PriorityAsyncLoadingExtraTime
```

Additional time to spend asynchronous loading during a high priority load.

### LevelStreamingUnregisterComponentsTimeLimit

```
float32 LevelStreamingUnregisterComponentsTimeLimit
```

Maximum allowed time to spend while unregistering components during level streaming (ms per frame).

### LevelStreamingAddPrimitiveGranularity

```
int LevelStreamingAddPrimitiveGranularity
```

Batching granularity used to add primitives to scene in parallel when registering actor components during level streaming.

### LevelStreamingComponentsRegistrationGranularity

```
int LevelStreamingComponentsRegistrationGranularity
```

Batching granularity used to register actor components during level streaming.

### LevelStreamingComponentsUnregistrationGranularity

```
int LevelStreamingComponentsUnregistrationGranularity
```

Batching granularity used to unregister actor components during level streaming.

---

## PACKAGESTREAMING

### MinBulkDataSizeForAsyncLoading

```
int MinBulkDataSizeForAsyncLoading
```

Minimum time the time limit exceeded warning will be triggered by.

### TimeLimitExceededMultiplier

```
float32 TimeLimitExceededMultiplier
```

Multiplier for time limit exceeded warning time threshold.

### TimeLimitExceededMinTime

```
float32 TimeLimitExceededMinTime
```

Minimum time the time limit exceeded warning will be triggered by.

---

## FUNCTIONS

### SetWarnIfTimeLimitExceeded

```
void SetWarnIfTimeLimitExceeded(bool Value)
```

SetUseBackgroundLevelStreaming

### void SetUseBackgroundLevelStreaming

```
void SetUseBackgroundLevelStreaming(bool Value)
```

SetAsyncLoadingUseFullTimeLimit

### void SetAsyncLoadingUseFullTimeLimit

```
void SetAsyncLoadingUseFullTimeLimit(bool Value)
```

SetFlushStreamingOnExit

### void SetFlushStreamingOnExit

```
void SetFlushStreamingOnExit(bool Value)
```

SetEventDrivenLoaderEnabled

### void SetEventDrivenLoaderEnabled

```
void SetEventDrivenLoaderEnabled(bool Value)
```

SetAsyncLoadingThreadEnabled

### void SetAsyncLoadingThreadEnabled

```
void SetAsyncLoadingThreadEnabled(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UStreamingSettings::StaticClass()
```
