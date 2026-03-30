# USoundSourceBus

**Visibility:** public

## Inheritance

USoundWave → USoundSourceBus

## Description

A source bus is a type of USoundBase and can be "played" like any sound.

## BUSPROPERTIES

### SourceBusDuration

```
float32 SourceBusDuration
```

The duration (in seconds) to use for the source bus. A duration of 0.0 indicates to play the source bus indefinitely.

### AudioBus

```
UAudioBus AudioBus
```

Audio bus to use as audio for this source bus. This source bus will sonify the audio from the audio bus.

### SourceBusChannels

```
ESourceBusChannels SourceBusChannels
```

How many channels to use for the source bus if the audio bus is not specified, otherwise it will use the audio bus object's channel count.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundSourceBus::StaticClass()
```
