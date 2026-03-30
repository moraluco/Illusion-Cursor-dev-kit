# UInputSettings

**Visibility:** public

## Inheritance

UObject → UInputSettings

## Description

Project wide settings for input handling

### See also

- https://​docs​.unrealengine​.com​/latest​/INT​/Gameplay​/Input​/index​.html

## BINDINGS

### SpeechMappings

```
TArray<FInputActionSpeechMapping> SpeechMappings
```

List of Speech Mappings

### AxisMappings

```
TArray<FInputAxisKeyMapping> AxisMappings
```

List of Axis Mappings

### ActionMappings

```
TArray<FInputActionKeyMapping> ActionMappings
```

List of Action Mappings

### AxisConfig

```
TArray<FInputAxisConfigEntry> AxisConfig
```

List of Axis Properties

---

## CONSOLE

### ConsoleKeys

```
TArray<FKey> ConsoleKeys
```

The keys which open the console.

---

## DEFAULTCLASSES

### DefaultPlayerInputClass

```
TSoftClassPtr<UPlayerInput> DefaultPlayerInputClass
```

Default class type for player input object. May be overridden by player controller.

### DefaultInputComponentClass

```
TSoftClassPtr<UInputComponent> DefaultInputComponentClass
```

Default class type for pawn input components.

---

## MOBILE

### DefaultTouchInterface

```
FSoftObjectPath DefaultTouchInterface
```

The default on-screen touch input interface for the game (can be null to disable the onscreen interface)

---

## MOUSEPROPERTIES

### DoubleClickTime

```
float32 DoubleClickTime
```

If a key is pressed twice in this amount of time it is considered a "double click"

### FOVScale

```
float32 FOVScale
```

The scaling value to multiply the field of view by

---

## VIEWPORTPROPERTIES

### DefaultViewportMouseLockMode

```
EMouseLockMode DefaultViewportMouseLockMode
```

The default mouse lock state behavior when the viewport acquires capture

### DefaultViewportMouseCaptureMode

```
EMouseCaptureMode DefaultViewportMouseCaptureMode
```

The default mouse capture mode for the game viewport

### VIRTUAL KEYBOARD

```
VIRTUAL KEYBOARD(MOBILE)
```

ExcludedAutocorrectCultures

### TArray<FString> ExcludedAutocorrectCultures

```
TArray<FString> ExcludedAutocorrectCultures
```

Disables autocorrect for these cultures, even if autocorrect is turned on. These should be ISO-compliant language and country codes, such as "en" or "en-US".

### ExcludedAutocorrectOS

```
TArray<FString> ExcludedAutocorrectOS
```

Disables autocorrect for these operating systems, even if autocorrect is enabled. Use the format "[platform] [osversion]" (e.g., "iOS 11.2" or "Android 6"). More specific versions will disable autocorrect for fewer devices ("iOS 11" will disable autocorrect for all devices running iOS 11, but "iOS 11.2.2" will not disable autocorrect for devices running 11.2.1).

### ExcludedAutocorrectDeviceModels

```
TArray<FString> ExcludedAutocorrectDeviceModels
```

Disables autocorrect for these device models, even if autocorrect is turned in. Model IDs listed here will match against the start of the device's model (e.g., "SM-" will match all device model IDs that start with "SM-"). This is currently only supported on Android devices.

### STATIC VARIABLES

```
STATIC VARIABLES InputSettings static const UInputSettings UInputSettings::InputSettings SETTINGS SaveKeyMappings void SaveKeyMappings()
```

Flush the current mapping values to the config file

### RemoveAxisMapping

```
void RemoveAxisMapping(FInputAxisKeyMapping KeyMapping, bool bForceRebuildKeymaps = true)
```

Programmatically remove an axis mapping to the project defaults

### AddAxisMapping

```
void AddAxisMapping(FInputAxisKeyMapping KeyMapping, bool bForceRebuildKeymaps = true)
```

Programmatically add an axis mapping to the project defaults

### GetInputSettings

```
static UInputSettings UInputSettings::GetInputSettings()
```

Returns the game local input settings (action mappings, axis mappings, etc...)

### ForceRebuildKeymaps

```
void ForceRebuildKeymaps()
```

When changes are made to the default mappings, push those changes out to PlayerInput key maps

### GetActionNames

```
void GetActionNames(TArray<FName>& ActionNames)const
```

Populate a list of all defined action names

### GetAxisNames

```
void GetAxisNames(TArray<FName>& AxisNames)const
```

Populate a list of all defined axis names

### AddActionMapping

```
void AddActionMapping(FInputActionKeyMapping KeyMapping, bool bForceRebuildKeymaps = true)
```

Programmatically add an action mapping to the project defaults

### GetAxisMappingByName

```
void GetAxisMappingByName(const FName InAxisName, TArray<FInputAxisKeyMapping>& OutMappings)const
```

Retrieve all axis mappings by a certain name.

### RemoveActionMapping

```
void RemoveActionMapping(FInputActionKeyMapping KeyMapping, bool bForceRebuildKeymaps = true)
```

Programmatically remove an action mapping to the project defaults

### GetActionMappingByName

```
void GetActionMappingByName(const FName InActionName, TArray<FInputActionKeyMapping>& OutMappings)const
```

---

## FUNCTIONS

### GetAxisMappings

```
const TArray<FInputAxisKeyMapping>& GetAxisMappings()const
```

DoesAxisExist

### bool DoesAxisExist

```
bool DoesAxisExist(const FName InAxisName)
```

GetSpeechMappings

### const TArray<FInputActionSpeechMapping>& GetSpeechMappings

```
const TArray<FInputActionSpeechMapping>& GetSpeechMappings()const DoesSpeechExist
```

bool DoesSpeechExist(

### const 	FName 	InSpeechName

```
const 	FName 	InSpeechName 	)
```

DoesActionExist

### bool DoesActionExist

```
bool DoesActionExist(const FName InActionName)
```

GetUniqueAxisName

### FName GetUniqueAxisName

```
FName GetUniqueAxisName(const FName BaseAxisMappingName)
```

GetActionMappings

### const TArray<FInputActionKeyMapping>& GetActionMappings

```
const TArray<FInputActionKeyMapping>& GetActionMappings()const SetbAltEnterTogglesFullscreen
```

void SetbAltEnterTogglesFullscreen(

### bool 	Value

```
bool 	Value 	)
```

SetbF11TogglesFullscreen

### void SetbF11TogglesFullscreen

```
void SetbF11TogglesFullscreen(bool Value)
```

SetbUseMouseForTouch

### void SetbUseMouseForTouch

```
void SetbUseMouseForTouch(bool Value)
```

SetbEnableMouseSmoothing

### void SetbEnableMouseSmoothing

```
void SetbEnableMouseSmoothing(bool Value)
```

SetbEnableFOVScaling

### void SetbEnableFOVScaling

```
void SetbEnableFOVScaling(bool Value)
```

SetbCaptureMouseOnLaunch

### void SetbCaptureMouseOnLaunch

```
void SetbCaptureMouseOnLaunch(bool Value)
```

SetbEnableLegacyInputScales

### void SetbEnableLegacyInputScales

```
void SetbEnableLegacyInputScales(bool Value)
```

SetbAlwaysShowTouchInterface

### void SetbAlwaysShowTouchInterface

```
void SetbAlwaysShowTouchInterface(bool Value)
```

SetbShowConsoleOnFourFingerTap

### void SetbShowConsoleOnFourFingerTap

```
void SetbShowConsoleOnFourFingerTap(bool Value)
```

SetbEnableGestureRecognizer

### void SetbEnableGestureRecognizer

```
void SetbEnableGestureRecognizer(bool Value)
```

SetbUseAutocorrect

### void SetbUseAutocorrect

```
void SetbUseAutocorrect(bool Value)
```

SetActionMappings

### void SetActionMappings

```
void SetActionMappings(TArray<FInputActionKeyMapping> Value)
```

SetAxisMappings

### void SetAxisMappings

```
void SetAxisMappings(TArray<FInputAxisKeyMapping> Value)
```

SetSpeechMappings

### void SetSpeechMappings

```
void SetSpeechMappings(TArray<FInputActionSpeechMapping> Value)
```

GetUniqueActionName

### FName GetUniqueActionName

```
FName GetUniqueActionName(const FName BaseActionMappingName)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInputSettings::StaticClass()
```
