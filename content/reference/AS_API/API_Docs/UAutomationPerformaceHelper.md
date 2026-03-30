# UAutomationPerformaceHelper

**Visibility:** public

## Inheritance

UObject → UAutomationPerformaceHelper

## Description

Class for use with functional tests which provides various performance measuring features.  Recording of basic, unintrusive performance stats.  Automatic captures using external CPU and GPU profilers.  Triggering and ending of writing full stats to a file.

## PERF

### IsRecording

```
bool IsRecording()const
```

Returns true if this stats tracker is currently recording performance stats.

### BeginRecordingBaseline

```
void BeginRecordingBaseline(FString RecordName)
```

Begins recording a new named performance stats record. We start by recording the baseline

### BeginStatsFile

```
void BeginStatsFile(FString RecordName)
```

Begins recording stats to a file.

### EndRecording

```
void EndRecording()
```

Stops recording performance stats.

### EndRecordingBaseline

```
void EndRecordingBaseline()
```

Stops recording the baseline and moves to the main record.

### EndStatsFile

```
void EndStatsFile()
```

Ends recording stats to a file.

### IsCurrentRecordWithinGameThreadBudget

```
bool IsCurrentRecordWithinGameThreadBudget()const
```

IsCurrentRecordWithinGPUBudget

### bool IsCurrentRecordWithinGPUBudget

```
bool IsCurrentRecordWithinGPUBudget()const IsCurrentRecordWithinRenderThreadBudget
```

bool IsCurrentRecordWithinRenderThreadBudget() const

### BeginRecording

```
void BeginRecording(FString RecordName, float32 InGPUBudget, float32 InRenderThreadBudget, float32 InGameThreadBudget)
```

Begins recording a new named performance stats record. We start by recording the baseline.

### OnAllTestsComplete

```
void OnAllTestsComplete()
```

Does any final work needed as all tests are complete.

### OnBeginTests

```
void OnBeginTests()
```

Does any init work across all tests..

### Sample

```
void Sample(float32 DeltaSeconds)
```

Adds a sample to the stats counters for the current performance stats record.

### StartCPUProfiling

```
void StartCPUProfiling()
```

Communicates with external profiler to being a CPU capture.

### StopCPUProfiling

```
void StopCPUProfiling()
```

Communicates with external profiler to end a CPU capture.

### Tick

```
void Tick(float32 DeltaSeconds)
```

Begin basic stat recording

### TriggerGPUTraceIfRecordFallsBelowBudget

```
void TriggerGPUTraceIfRecordFallsBelowBudget()
```

Will trigger a GPU trace next time the current test falls below GPU budget.

### WriteLogFile

```
void WriteLogFile(FString CaptureDir, FString CaptureExtension)
```

Writes the current set of performance stats records to a csv file in the profiling directory. An additional directory and an extension override can also be used.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAutomationPerformaceHelper::StaticClass()
```
