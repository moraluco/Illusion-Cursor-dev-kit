# UBTDecorator_Loop

**Visibility:** public

## Inheritance

UBTDecorator → UBTDecorator_Loop

## Description

Loop decorator node.  A decorator node that bases its condition on whether its loop counter has been exceeded.

## DECORATOR

### bInfiniteLoop

```
bool bInfiniteLoop
```

### infinite loop

```
infinite loop
```

InfiniteLoopTimeoutTime

### float32 InfiniteLoopTimeoutTime

```
float32 InfiniteLoopTimeoutTime
```

timeout (when looping infinitely, when we finish a loop we will check whether we have spent this time looping, if we have we will stop looping). A negative value means loop forever.

### NumLoops

```
int NumLoops
```

number of executions

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTDecorator_Loop::StaticClass()
```
