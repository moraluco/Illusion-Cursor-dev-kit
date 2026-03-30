# UPlatformGameInstance

**Visibility:** public

## Inheritance

UGameInstance → UPlatformGameInstance

## Description

UObject based class for handling mobile events. Having this object as an option gives the app lifetime access to these global delegates. The component UApplicationLifecycleComponent is destroyed at level loads

## VARIABLES

### ApplicationReceivedStartupArgumentsDelegate

```
FPlatformStartupArgumentsDelegate__PlatformGameInstance ApplicationReceivedStartupArgumentsDelegate
```

Called with arguments passed to the application on statup, perhaps meta data passed on by another application which launched this one.

### ApplicationHasReactivatedDelegate

```
FPlatformDelegate__PlatformGameInstance ApplicationHasReactivatedDelegate
```

Called when the application has been reactivated (reverse any processing done in the Deactivate delegate)

### ApplicationWillEnterBackgroundDelegate

```
FPlatformDelegate__PlatformGameInstance ApplicationWillEnterBackgroundDelegate
```

This is called when the application is being backgrounded (e.g., due to switching to another app or closing it via the home button) The game should release shared resources, save state, etc..., since it can be terminated from the background state without any further warning.

### ApplicationHasEnteredForegroundDelegate

```
FPlatformDelegate__PlatformGameInstance ApplicationHasEnteredForegroundDelegate
```

Called when the application is returning to the foreground (reverse any processing done in the EnterBackground delegate)

### ApplicationWillTerminateDelegate

```
FPlatformDelegate__PlatformGameInstance ApplicationWillTerminateDelegate
```

This may be called when the application is getting terminated by the OS.  There is no guarantee that this will ever be called on a mobile device, save state when ApplicationWillEnterBackgroundDelegate is called instead.

### ApplicationShouldUnloadResourcesDelegate

```
FPlatformDelegate__PlatformGameInstance ApplicationShouldUnloadResourcesDelegate
```

Called when the OS is running low on resources and asks the application to free up any cached resources, drop graphics quality etc.

### ApplicationWillDeactivateDelegate

```
FPlatformDelegate__PlatformGameInstance ApplicationWillDeactivateDelegate
```

This is called when the application is about to be deactivated (e.g., due to a phone call or SMS or the sleep button).  The game should be paused if possible, etc...

### ApplicationRegisteredForRemoteNotificationsDelegate

```
FPlatformRegisteredForRemoteNotificationsDelegate__PlatformGameInstance ApplicationRegisteredForRemoteNotificationsDelegate
```

called when the user grants permission to register for remote notifications

### ApplicationRegisteredForUserNotificationsDelegate

```
FPlatformRegisteredForUserNotificationsDelegate__PlatformGameInstance ApplicationRegisteredForUserNotificationsDelegate
```

called when the user grants permission to register for notifications

### ApplicationFailedToRegisterForRemoteNotificationsDelegate

```
FPlatformFailedToRegisterForRemoteNotificationsDelegate__PlatformGameInstance ApplicationFailedToRegisterForRemoteNotificationsDelegate
```

called when the application fails to register for remote notifications

### ApplicationReceivedRemoteNotificationDelegate

```
FPlatformReceivedRemoteNotificationDelegate__PlatformGameInstance ApplicationReceivedRemoteNotificationDelegate
```

called when the application receives a remote notification

### ApplicationReceivedLocalNotificationDelegate

```
FPlatformReceivedLocalNotificationDelegate__PlatformGameInstance ApplicationReceivedLocalNotificationDelegate
```

called when the application receives a local notification

### ApplicationReceivedScreenOrientationChangedNotificationDelegate

```
FPlatformScreenOrientationChangedDelegate__PlatformGameInstance ApplicationReceivedScreenOrientationChangedNotificationDelegate
```

called when the application receives a screen orientation change notification

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPlatformGameInstance::StaticClass()
```
