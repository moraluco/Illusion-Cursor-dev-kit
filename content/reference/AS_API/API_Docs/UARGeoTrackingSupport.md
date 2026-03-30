# UARGeoTrackingSupport

**Visibility:** public

## Inheritance

UObject → UARGeoTrackingSupport

## Description

Interface class for Geo tracking related features.

AR AUGMENTEDREALITY|GEO TRACKING GeoTrackingState const EARGeoTrackingState GeoTrackingState GeoTrackingStateReason const EARGeoTrackingStateReason GeoTrackingStateReason GeoTrackingAccuracy const EARGeoTrackingAccuracy GeoTrackingAccuracy STATIC VARIABLES GeoTrackingSupport static const UARGeoTrackingSupport UARGeoTrackingSupport::GeoTrackingSupport AR AUGMENTEDREALITY|GEO TRACKING AddGeoAnchorAtLocationWithAltitude bool AddGeoAnchorAtLocationWithAltitude( float32 	Longitude, float32 	Latitude, float32 	AltitudeMeters, FString 	OptionalAnchorName 	) Returns

add an Geo anchor at a specific location with an altitude (in meters).

GetGeoTrackingAccuracy EARGeoTrackingAccuracy GetGeoTrackingAccuracy() const Returns

the current session's Geo tracking state accuracy.

GetGeoTrackingState EARGeoTrackingState GetGeoTrackingState() const Returns

the current session's Geo tracking state.

GetGeoTrackingStateReason EARGeoTrackingStateReason GetGeoTrackingStateReason() const Returns

the current session's Geo tracking state reason.

GetGeoTrackingSupport static UARGeoTrackingSupport UARGeoTrackingSupport::GetGeoTrackingSupport() Returns

the interface object to support Geo tracking, return null on platforms don't support the feature.

AddGeoAnchorAtLocation bool AddGeoAnchorAtLocation( float32 	Longitude, float32 	Latitude, FString 	OptionalAnchorName 	) Returns

add an Geo anchor at a specific location.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UARGeoTrackingSupport::StaticClass()
```
