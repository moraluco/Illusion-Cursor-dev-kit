# UWindowsTargetSettings

**Visibility:** public

## Inheritance

UObject → UWindowsTargetSettings

## Description

Implements the settings for the Windows target platform. The first instance of this class is initialized in WindowsTargetPlatform, really early during the startup sequence before the CDO has been constructed, so its config settings are read manually from there.

## AUDIO

### OcclusionPlugin

```
FString OcclusionPlugin
```

Which of the currently enabled occlusion plugins to use.

### CompressionOverrides

```
FPlatformRuntimeAudioCompressionOverrides CompressionOverrides
```

Various overrides for how this platform should handle compression and decompression

### AudioSampleRate

```
int AudioSampleRate
```

Sample rate to run the audio mixer with.

### AudioCallbackBufferFrameSize

```
int AudioCallbackBufferFrameSize
```

The amount of audio to compute each callback block. Lower values decrease latency but may increase CPU cost.

### AudioNumBuffersToEnqueue

```
int AudioNumBuffersToEnqueue
```

The number of buffers to keep enqueued. More buffers increases latency, but can compensate for variable compute availability in audio callbacks on some platforms.

### AudioMaxChannels

```
int AudioMaxChannels
```

The max number of channels (voices) to limit for this platform. The max channels used will be the minimum of this value and the global audio quality settings. A value of 0 will not apply a platform channel count max.

### AudioNumSourceWorkers

```
int AudioNumSourceWorkers
```

The number of workers to use to compute source audio. Will only use up to the max number of sources. Will evenly divide sources to each source worker.

### SpatializationPlugin

```
FString SpatializationPlugin
```

Which of the currently enabled spatialization plugins to use.

### SourceDataOverridePlugin

```
FString SourceDataOverridePlugin
```

Which of the currently enabled source data override plugins to use.

### ReverbPlugin

```
FString ReverbPlugin
```

Which of the currently enabled reverb plugins to use.

---

## AUDIO \| COOKOVERRIDES

### SoundCueCookQualityIndex

```
int SoundCueCookQualityIndex
```

Quality Level to COOK SoundCues at (if set, all other levels will be stripped by the cooker).

### bResampleForDevice

```
bool bResampleForDevice
```
### CompressionQualityModifier

```
float32 CompressionQualityModifier
```

Scales all compression qualities when cooking to this platform. For example, 0.5 will halve all compression qualities, and 1.0 will leave them unchanged.

---

## AUDIO \| COOKOVERRIDES \| RESAMPLINGQUALITY

### MedSampleRate

```
float32 MedSampleRate
```
### MinSampleRate

```
float32 MinSampleRate
```
### MaxSampleRate

```
float32 MaxSampleRate
```

Mapping of which sample rates are used for each sample rate quality for a specific platform.

### HighSampleRate

```
float32 HighSampleRate LowSampleRate float32 LowSampleRate AUDIO|COOKOVERRIDES|STREAM CACHING MaxChunkSizeOverrideKB int MaxChunkSizeOverrideKB
```

This overrides the default max chunk size used when chunking audio for stream caching (ignored if < 0)

### CacheSizeKB

```
int CacheSizeKB
```

This determines the max amount of memory that should be used for the cache at any given time. If set low (<= 8 MB), it lowers the size of individual chunks of audio during cook.

---

## RENDERING

### TargetedRHIs

```
TArray<FString> TargetedRHIs
```

The collection of RHI's we want to support on this platform.  This is not always the full list of RHI we can support.

### RHIS

```
TARGETED RHIS
```
### DefaultGraphicsRHI

```
EDefaultGraphicsRHI DefaultGraphicsRHI
```

Select which RHI to use. Make sure its also selected as a Targeted RHI. Requires Editor restart.

---

## TOOLCHAIN

### Compiler

```
ECompilerVersion Compiler
```

The compiler version to use for this project. May be different to the chosen IDE.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UWindowsTargetSettings::StaticClass()
```
