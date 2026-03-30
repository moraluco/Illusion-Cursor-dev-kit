# UAudioCaptureComponent

**Visibility:** public

## Inheritance

USynthComponent → UAudioCaptureComponent → LATENCY → JitterLatencyFrames

## Description

int JitterLatencyFrames

Induced latency in audio frames to use to account for jitter between mic capture hardware and audio render hardware.  Increasing this number will increase latency but reduce potential for underruns.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UAudioCaptureComponent UAudioCaptureComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UAudioCaptureComponent UAudioCaptureComponent::GetOrCreate

```
static UAudioCaptureComponent UAudioCaptureComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UAudioCaptureComponent UAudioCaptureComponent::Create

```
static UAudioCaptureComponent UAudioCaptureComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UAudioCaptureComponent::StaticClass

```
static UClass UAudioCaptureComponent::StaticClass()
```
