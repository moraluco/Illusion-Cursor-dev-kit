# UApplicationLifecycleComponent

**Visibility:** public

## Inheritance

UActorComponent → UApplicationLifecycleComponent

## Description

Component to handle receiving notifications from the OS about application state (activated, suspended, termination, etc).

## VARIABLES

### ApplicationWillTerminateDelegate

```
FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationWillTerminateDelegate
```

This may be called when the application is getting terminated by the OS.  There is no guarantee that this will ever be called on a mobile device, save state when ApplicationWillEnterBackgroundDelegate is called instead.

### ApplicationHasReactivatedDelegate

```
FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationHasReactivatedDelegate
```

Called when the application has been reactivated (reverse any processing done in the Deactivate delegate)

### ApplicationWillEnterBackgroundDelegate

```
FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationWillEnterBackgroundDelegate
```

This is called when the application is being backgrounded (e.g., due to switching to another app or closing it via the home button) The game should release shared resources, save state, etc..., since it can be terminated from the background state without any further warning.

### ApplicationHasEnteredForegroundDelegate

```
FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationHasEnteredForegroundDelegate
```

Called when the application is returning to the foreground (reverse any processing done in the EnterBackground delegate)

### ApplicationWillDeactivateDelegate

```
FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationWillDeactivateDelegate
```

This is called when the application is about to be deactivated (e.g., due to a phone call or SMS or the sleep button).  The game should be paused if possible, etc...

### ApplicationShouldUnloadResourcesDelegate

```
FApplicationLifetimeDelegate__ApplicationLifecycleComponent ApplicationShouldUnloadResourcesDelegate
```

Called when the OS is running low on resources and asks the application to free up any cached resources, drop graphics quality etc.

### ApplicationReceivedStartupArgumentsDelegate

```
FApplicationStartupArgumentsDelegate__ApplicationLifecycleComponent ApplicationReceivedStartupArgumentsDelegate
```

Called with arguments passed to the application on statup, perhaps meta data passed on by another application which launched this one.

### OnTemperatureChangeDelegate

```
FOnTemperatureChangeDelegate__ApplicationLifecycleComponent OnTemperatureChangeDelegate
```

Called when temperature level has changed, and receives the severity

### OnLowPowerModeDelegate

```
FOnLowPowerModeDelegate__ApplicationLifecycleComponent OnLowPowerModeDelegate
```

Called when we are in low power mode

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UApplicationLifecycleComponent UApplicationLifecycleComponent::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UApplicationLifecycleComponent UApplicationLifecycleComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UApplicationLifecycleComponent UApplicationLifecycleComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UApplicationLifecycleComponent::StaticClass()
```
