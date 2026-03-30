# UAISenseConfig_Sight

**Visibility:** public

## Inheritance

UAISenseConfig → UAISenseConfig_Sight → SENSE → SightRadius

## Description

float32 SightRadius

Maximum sight distance to notice a target.

LoseSightRadius float32 LoseSightRadius

Maximum sight distance to see target that has been already seen.

PeripheralVisionAngleDegrees float32 PeripheralVisionAngleDegrees

How far to the side AI can see, in degrees. Use SetPeripheralVisionAngle to change the value at runtime.  The value represents the angle measured in relation to the forward vector, not the whole range.

DetectionByAffiliation FAISenseAffiliationFilter DetectionByAffiliation AutoSuccessRangeFromLastSeenLocation float32 AutoSuccessRangeFromLastSeenLocation

If not an InvalidRange (which is the default), we will always be able to see the target that has already been seen if they are within this range of their last seen location.

PointOfViewBackwardOffset float32 PointOfViewBackwardOffset

Point of view move back distance for cone calculation. In conjunction with near clipping distance, this will act as a close by awareness and peripheral vision.

NearClippingRadius float32 NearClippingRadius

Near clipping distance, to be used with point of view backward offset. Will act as a close by awareness and peripheral vision

Implementation TSubclassOf<UAISense_Sight> Implementation STATIC FUNCTIONS StaticClass static UClass UAISenseConfig_Sight::StaticClass()
