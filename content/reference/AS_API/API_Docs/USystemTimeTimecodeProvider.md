# USystemTimeTimecodeProvider

**Visibility:** public

## Inheritance

UTimecodeProvider → USystemTimeTimecodeProvider

## Description

Converts the current system time to timecode, relative to a provided frame rate.

## TIMECODE

### bUseHighPerformanceClock

```
bool bUseHighPerformanceClock
```

Use the high performance clock instead of the system time to generate the timecode value.  Using the high performance clock is faster but will make the value drift over time.

### bGenerateFullFrame

```
bool bGenerateFullFrame
```

When generating frame time, should we generate full frame without subframe value.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USystemTimeTimecodeProvider::StaticClass()
```
