# UARPin

**Visibility:** public

## Inheritance

UObject → UARPin

## Description

AR AUGMENTEDREALITY|PIN OnARTransformUpdated FOnARTransformUpdated OnARTransformUpdated DebugName const FName DebugName LocalToWorldTransform const FTransform LocalToWorldTransform

Convenience function. Same as LocalToTrackingTransform, but appends the TrackingToWorld Transform.

OnARTrackingStateChanged FOnARTrackingStateChanged OnARTrackingStateChanged

## VARIABLES

### PinnedComponent

```
const USceneComponent PinnedComponent
```
### TrackedGeometry

```
const UARTrackedGeometry TrackedGeometry TrackingState const EARTrackingState TrackingState LocalToTrackingTransform const FTransform LocalToTrackingTransform AR AUGMENTEDREALITY|PIN GetLocalToTrackingTransform FTransform GetLocalToTrackingTransform()const
```

Maps from a Pin's Local Space to the Tracking Space.  Mapping the origin from the Pin's Local Space to Tracking Space yield the Pin's position in Tracking Space.

### GetLocalToWorldTransform

```
FTransform GetLocalToWorldTransform()const
```

Convenience function. Same as LocalToTrackingTransform, but appends the TrackingToWorld Transform.

### GetPinnedComponent

```
USceneComponent GetPinnedComponent()const
```

**Returns**

the PinnedComponent that this UARPin is pinning to the TrackedGeometry

GetTrackedGeometry
UARTrackedGeometry GetTrackedGeometry() const

The TrackedGeometry (if any) that this this pin is being "stuck" into.

GetTrackingState
EARTrackingState GetTrackingState() const

Return the current tracking state of this Pin.

GetDebugName
FName GetDebugName() const
STATIC FUNCTIONS
StaticClass
static UClass UARPin::StaticClass()
