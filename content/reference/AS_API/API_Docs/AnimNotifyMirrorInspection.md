# AnimNotifyMirrorInspection

## Inheritance

AnimNotifyMirrorInspection

## UTILITIES \| ANIMATION \| NOTIFIES

### IsTriggeredByMirroredAnimation

```
static bool AnimNotifyMirrorInspection::IsTriggeredByMirroredAnimation(
```

### EventReference

```
FAnimNotifyEventReference EventReference
```

)

Get whether the animation which triggered this notify was mirrored.

**Parameters**

EventReference
FAnimNotifyEventReference

The event to inspect

GetMirrorDataTable
static const UMirrorDataTable AnimNotifyMirrorInspection::GetMirrorDataTable(

FAnimNotifyEventReference 	EventReference

)

If the notify is mirrored, return the mirror data table that was active.

**Parameters**

EventReference
FAnimNotifyEventReference

The event to inspect
