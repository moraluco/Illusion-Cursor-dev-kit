# UPlatformEventsComponent

**Visibility:** public

## Inheritance

UActorComponent → UPlatformEventsComponent

## Description

Component to handle receiving notifications from the OS about platform events.

## VARIABLES

### PlatformChangedToTabletModeDelegate

```
FPlatformEventDelegate__PlatformEventsComponent PlatformChangedToTabletModeDelegate
```

This is called when a convertible laptop changed into tablet mode.

### PlatformChangedToLaptopModeDelegate

```
FPlatformEventDelegate__PlatformEventsComponent PlatformChangedToLaptopModeDelegate
```

This is called when a convertible laptop changed into laptop mode.

---

## COMPONENTS \| ACTIVATION

### IsInTabletMode

```
bool IsInTabletMode()
```

Check whether a convertible laptop is laptop mode.

**Returns**

true if in tablet mode, false otherwise or if not a convertible laptop.

SupportsConvertibleLaptops
bool SupportsConvertibleLaptops()

Check whether the platform supports convertible laptops.

Note: This does not necessarily mean that the platform is a convertible laptop.  For example, convertible laptops running Windows 7 or older will return false, and regular laptops running Windows 8 or newer will return true.

**Returns**

true for convertible laptop platforms, false otherwise.

IsInLaptopMode
bool IsInLaptopMode()

Check whether a convertible laptop is laptop mode.

**Returns**

true if in laptop mode, false otherwise or if not a convertible laptop.

STATIC FUNCTIONS
Get
static UPlatformEventsComponent UPlatformEventsComponent::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UPlatformEventsComponent UPlatformEventsComponent::GetOrCreate(

AActor 	Actor,
FName 	WithName	 = 	NAME_None

)
Create
static UPlatformEventsComponent UPlatformEventsComponent::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UPlatformEventsComponent::StaticClass()
