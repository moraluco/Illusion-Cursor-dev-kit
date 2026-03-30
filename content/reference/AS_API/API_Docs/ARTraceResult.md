# ARTraceResult

## Inheritance

ARTraceResult

## Description

AR AUGMENTEDREALITY|TRACE RESULT GetLocalToTrackingTransform static FTransform ARTraceResult::GetLocalToTrackingTransform( FARTraceResult 	TraceResult 	) Returns

The transform of the trace result in tracking space (after it is modified by the \c AlignmentTransform). \see SetAlignmentTransform()

GetLocalToWorldTransform static FTransform ARTraceResult::GetLocalToWorldTransform( FARTraceResult 	TraceResult 	) Returns

Get the transform of the trace result in Unreal World Space.

GetLocalTransform static FTransform ARTraceResult::GetLocalTransform( FARTraceResult 	TraceResult 	) Returns

Get the transform of the trace result in the AR system's local space.

GetTraceChannel static EARLineTraceChannels ARTraceResult::GetTraceChannel( FARTraceResult 	TraceResult 	) Returns

Get the type of the tracked object (if any) that effected this trace result.

GetTrackedGeometry static UARTrackedGeometry ARTraceResult::GetTrackedGeometry( FARTraceResult 	TraceResult 	) Returns

Get the real-world object (as observed by the Augmented Reality system) that was intersected by the line trace.

GetDistanceFromCamera static float32 ARTraceResult::GetDistanceFromCamera( FARTraceResult 	TraceResult 	) Returns

the distance from the camera to the traced location in Unreal Units.
