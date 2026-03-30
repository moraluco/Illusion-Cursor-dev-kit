# UAudioParameterControllerInterface

**Visibility:** public

## Inheritance

UInterface → UAudioParameterControllerInterface → USoundParameterControllerInterface

## AUDIO \| PARAMETER

### SetObjectArrayParameter

```
void SetObjectArrayParameter(FName InName, TArray<UObject> InValue)
```

Sets a named UObject Array

### SetBoolArrayParameter

```
void SetBoolArrayParameter(FName InName, TArray<bool> InValue)
```

Sets a named Boolean Array

### SetBoolParameter

```
void SetBoolParameter(FName InName, bool InBool)
```

Sets a named Boolean

### SetFloatArrayParameter

```
void SetFloatArrayParameter(FName InName, TArray<float32> InValue)
```

Sets a named Float Array

### SetFloatParameter

```
void SetFloatParameter(FName InName, float32 InFloat)
```

Sets a named Float

### SetIntArrayParameter

```
void SetIntArrayParameter(FName InName, TArray<int> InValue)
```

Sets a named Int32 Array

### SetIntParameter

```
void SetIntParameter(FName InName, int InInt)
```

Sets a named Int32

### ResetParameters

```
void ResetParameters()
```

Resets all parameters to their original values.

### SetObjectParameter

```
void SetObjectParameter(FName InName, UObject InValue)
```

Sets a named UObject

### SetParameters_Blueprint

```
void SetParameters_Blueprint(TArray<FAudioParameter> InParameters)
```

Sets an array of parameters as a batch

### SetStringArrayParameter

```
void SetStringArrayParameter(FName InName, TArray<FString> InValue)
```

Sets a named String Array

### SetStringParameter

```
void SetStringParameter(FName InName, FString InValue)
```

Sets a named String

### SetTriggerParameter

```
void SetTriggerParameter(FName InName)
```

Executes a named trigger.  Does not cache trigger value, so only executes if the sound is already playing.  If the intent is for the trigger to execute immediately (if playing) and be called on initialization for all future instances, call 'SetBoolParameter' with the intended initial trigger behavior (true if trigger desired on initialization, false if not).

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAudioParameterControllerInterface::StaticClass()
```
