# Platform

## Inheritance

Platform

## Description

STATIC VARIABLES DeviceOrientation static const EScreenOrientation Platform::DeviceOrientation

## PLATFORM \| LOCALNOTIFICATION

### GetLaunchNotification

```
static void Platform::GetLaunchNotification(bool& NotificationLaunchedApp, FString& ActivationEvent, int& FireDate)
```

Get the local notification that was used to launch the app

**Parameters**

NotificationLaunchedApp
bool&

Return true if a notification was used to launch the app

ActivationEvent
FString&

Returns the name of the ActivationEvent if a notification was used to launch the app

FireDate
int&

Returns the time the notification was activated

CancelLocalNotificationById
static void Platform::CancelLocalNotificationById(
int 	NotificationId
	)

Cancel a local notification given the ActivationEvent

**Parameters**

NotificationId
int

The Id returned from one of the ScheduleLocalNotification* functions

ClearAllLocalNotifications
static void Platform::ClearAllLocalNotifications()

Clear all pending local notifications. Typically this will be done before scheduling new notifications when going into the background

GetDeviceOrientation
static EScreenOrientation Platform::GetDeviceOrientation()

**Returns**

the current device orientation

CancelLocalNotification
static void Platform::CancelLocalNotification(
FString 	ActivationEvent
	)

Cancel a local notification given the ActivationEvent

**Parameters**

ActivationEvent
FString

The string passed into the Schedule call for the notification to be cancelled

ScheduleLocalNotificationAtTime
static int Platform::ScheduleLocalNotificationAtTime(
FDateTime 	FireDateTime,
bool 	LocalTime,
FText 	Title,
FText 	Body,
FText 	Action,
FString 	ActivationEvent
	)

Schedule a local notification at a specific time, inLocalTime specifies the current local time or if UTC time should be used

**Parameters**

FireDateTime
FDateTime

The time at which to fire the local notification

LocalTime
bool

If true the provided time is in the local timezone, if false it is in UTC

Title
FText

The title of the notification

Body
FText

The more detailed description of the notification

Action
FText

The text to be displayed on the slider controller

ActivationEvent
FString

A string that is passed in the delegate callback when the app is brought into the foreground from the user activating the notification

ScheduleLocalNotificationBadgeAtTime
static int Platform::ScheduleLocalNotificationBadgeAtTime(
FDateTime 	FireDateTime,
bool 	LocalTime,
FString 	ActivationEvent
	)

Schedule a local notification badge at a specific time, inLocalTime specifies the current local time or if UTC time should be used

**Parameters**

FireDateTime
FDateTime

The time at which to fire the local notification

LocalTime
bool

If true the provided time is in the local timezone, if false it is in UTC

ActivationEvent
FString

A string that is passed in the delegate callback when the app is brought into the foreground from the user activating the notification

ScheduleLocalNotificationBadgeFromNow
static void Platform::ScheduleLocalNotificationBadgeFromNow(
int 	inSecondsFromNow,
FString 	ActivationEvent
	)

Schedule a local notification badge to fire inSecondsFromNow from now

**Parameters**

inSecondsFromNow
int

The seconds until the notification should fire

ActivationEvent
FString

A string that is passed in the delegate callback when the app is brought into the foreground from the user activating the notification

ScheduleLocalNotificationFromNow
static int Platform::ScheduleLocalNotificationFromNow(
int 	inSecondsFromNow,
FText 	Title,
FText 	Body,
FText 	Action,
FString 	ActivationEvent
	)

Schedule a local notification to fire inSecondsFromNow from now

**Parameters**

inSecondsFromNow
int

The seconds until the notification should fire

Title
FText

The title of the notification

Body
FText

The more detailed description of the notification

Action
FText

The text to be displayed on the slider controller

ActivationEvent
FString

A string that is passed in the delegate callback when the app is brought into the foreground from the user activating the notification
