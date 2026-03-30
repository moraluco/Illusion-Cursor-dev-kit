# UInputRouter

**Visibility:** public

## Inheritance

UObject → UInputRouter

## Description

UInputRouter mediates between a higher-level input event source (eg like an FEdMode) and a set of InputBehaviors that respond to those events. Sets of InputBehaviors are registered, and then PostInputEvent() is called for each event.

Internally one of the active Behaviors may "capture" the event stream.  Separate "Left" and "Right" captures are supported, which means that (eg) an independent capture can be tracked for each VR controller.

If the input device supports "hover",  PostHoverInputEvent() will forward hover events to InputBehaviors that also support it.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInputRouter::StaticClass()
```
