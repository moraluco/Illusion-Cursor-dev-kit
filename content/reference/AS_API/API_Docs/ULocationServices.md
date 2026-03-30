# ULocationServices

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → ULocationServices

## Description

STATIC VARIABLES LocationServicesImpl static const ULocationServicesImpl ULocationServices::LocationServicesImpl LastKnownLocation static const FLocationServicesData ULocationServices::LastKnownLocation

## SERVICES \| MOBILE \| LOCATION

### GetLastKnownLocation

```
static FLocationServicesData ULocationServices::GetLastKnownLocation()
```

Returns the last location information returned by the location service. If no location update has been made, will return a default-value-filled struct.

**Returns**

the last known location from updates

GetLocationServicesImpl
static ULocationServicesImpl ULocationServices::GetLocationServicesImpl()

Returns the Location Services implementation object. Intended to be used to set up the FLocationServicesData_OnLocationChanged

delegate in Blueprints.  *

**Returns**

the Android or IOS impl object

InitLocationServices
static bool ULocationServices::InitLocationServices(
ELocationAccuracy 	Accuracy,
float32 	UpdateFrequency,
float32 	MinDistanceFilter
	)

Called to set up the Location Service before use

**Parameters**

Accuracy
ELocationAccuracy

as seen in the enum above

UpdateFrequency
float32

in milliseconds. (Android only)

**Returns**

true if Initialization was succesful

IsLocationAccuracyAvailable
static bool ULocationServices::IsLocationAccuracyAvailable(
ELocationAccuracy 	Accuracy
	)

Checks if the supplied Accuracy is available on the current device.

**Parameters**

Accuracy
ELocationAccuracy

the accuracy to check

**Returns**

true if the mobile device can support the Accuracy, false if it will use a different accuracy

StartLocationServices
static bool ULocationServices::StartLocationServices()

Starts requesting location updates from the appropriate Location Service

**Returns**

true if startup successful

StopLocationServices
static bool ULocationServices::StopLocationServices()

Stops the updates of location from the Location Service that was started with StartLocationService

**Returns**

true if stop is successful

AreLocationServicesEnabled
static bool ULocationServices::AreLocationServicesEnabled()

Checks if the Location Services on the mobile device are enabled for this application

**Returns**

true if the mobile device has enabled the appropriate service for the app

STATIC FUNCTIONS
StaticClass
static UClass ULocationServices::StaticClass()
