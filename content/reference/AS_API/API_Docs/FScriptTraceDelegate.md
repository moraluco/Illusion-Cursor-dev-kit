# FScriptTraceDelegate

## Inheritance

FScriptTraceDelegate → VARIABLES → FunctionName

## Description

const FName FunctionName UObject const UObject UObject

## FUNCTIONS

### IsBound

```
bool IsBound()const
```

GetUObject

### UObject GetUObject

```
UObject GetUObject()const GetFunctionName
```

FName GetFunctionName() const

### Clear

```
void Clear()
```

BindUFunction

### void BindUFunction

```
void BindUFunction(UObject Object, FName FunctionName)
```

Execute

### void Execute

```
void Execute(uint64 TraceHandle, TArray<FHitResult> OutHits, uint UserData)const
```

ExecuteIfBound

### void ExecuteIfBound

```
void ExecuteIfBound(uint64 TraceHandle, TArray<FHitResult> OutHits, uint UserData)const
```

opAssign

### FScriptTraceDelegate& opAssign

```
FScriptTraceDelegate& opAssign(FScriptTraceDelegate Other)
```
