# UGameUserSettings

**Visibility:** public

## Inheritance

UObject → UGameUserSettings

## Description

Stores user settings for a game (for example graphics and sound settings), with the ability to save and load to and from a file.

## SETTINGS

### RecommendedResolutionScale

```
const float32 RecommendedResolutionScale
```

Gets the recommended resolution quality based on LastRecommendedScreenWidth/Height and the current screen resolution

### AntiAliasingQuality

```
int AntiAliasingQuality
```

Returns the anti-aliasing quality (0..4, higher is better)

### ReflectionQuality

```
int ReflectionQuality
```

Returns the reflection quality (0..4, higher is better)

CurrentHDRDisplayNits

### CurrentHDRDisplayNits

```
const int CurrentHDRDisplayNits
```

Returns 0 if HDR isn't supported or is turned off

DefaultResolutionScale

### DefaultResolutionScale

```
const float32 DefaultResolutionScale
```

Gets the desired resolution quality based on DesiredScreenWidth/Height and the current screen resolution

### DesktopResolution

```
const FIntPoint DesktopResolution
```

Returns user's desktop resolution, in pixels.

### FoliageQuality

```
int FoliageQuality
```

Returns the foliage quality (0..4, higher is better)

### ScreenResolution

```
FIntPoint ScreenResolution
```

Returns the user setting for game screen resolution, in pixels.

### ShadingQuality

```
int ShadingQuality
```

Returns the shading quality (0..4, higher is better)

### GlobalIlluminationQuality

```
int GlobalIlluminationQuality
```

Returns the global illumination quality (0..4, higher is better)

### ShadowQuality

```
int ShadowQuality
```

Returns the shadow quality (0..4, higher is better)

### LastConfirmedScreenResolution

```
const FIntPoint LastConfirmedScreenResolution
```

Returns the last confirmed user setting for game screen resolution, in pixels.

### OverallScalabilityLevel

```
int OverallScalabilityLevel
```

Returns the overall scalability level (can return -1 if the settings are custom)

### PostProcessingQuality

```
int PostProcessingQuality
```

Returns the post-processing quality (0..4, higher is better)

### ViewDistanceQuality

```
int ViewDistanceQuality
```

Returns the view distance quality (0..4, higher is better)

### ResolutionScaleNormalized

```
float32 ResolutionScaleNormalized
```

Gets the current resolution scale as a normalized 0..1 value between MinScaleValue and MaxScaleValue

### VisualEffectQuality

```
int VisualEffectQuality
```

Returns the visual effects quality (0..4, higher is better)

### TextureQuality

```
int TextureQuality
```

Returns the texture quality (0..4, higher is better)

---

## VARIABLES

### FrameRateLimit

```
float32 FrameRateLimit
```

Frame rate cap

### AudioQualityLevel

```
int AudioQualityLevel
```
### FullscreenMode

```
EWindowMode FullscreenMode
```

Game window fullscreen mode 0 = Fullscreen 1 = Windowed fullscreen 2 = Windowed

### PreferredFullscreenMode

```
const EWindowMode PreferredFullscreenMode
```

Fullscreen mode to use when toggling between windowed and fullscreen. Same values as r.FullScreenMode.

### LastConfirmedFullscreenMode

```
const EWindowMode LastConfirmedFullscreenMode
```

Last user confirmed fullscreen mode setting.

### OnGameUserSettingsUINeedsUpdate

```
FOnGameUserSettingsUINeedsUpdate OnGameUserSettingsUINeedsUpdate
```
### VARIABLES

```
STATIC VARIABLES
```

DefaultResolution static const FIntPoint UGameUserSettings::DefaultResolution DefaultWindowMode static const EWindowMode UGameUserSettings::DefaultWindowMode DefaultWindowPosition static const FIntPoint UGameUserSettings::DefaultWindowPosition FramePace static const int UGameUserSettings::FramePace GameUserSettings static const UGameUserSettings UGameUserSettings::GameUserSettings SyncInterval static const int UGameUserSettings::SyncInterval

---

## SETTINGS

### IsVSyncDirty

```
bool IsVSyncDirty()const
```

Checks if the vsync user setting is different from current system setting

### ApplyNonResolutionSettings

```
void ApplyNonResolutionSettings()
```

ApplyResolutionSettings

### void ApplyResolutionSettings

```
void ApplyResolutionSettings(bool bCheckForCommandLineOverrides)
```

ApplySettings

### void ApplySettings

```
void ApplySettings(bool bCheckForCommandLineOverrides)
```

Applies all current user settings to the game and saves to permanent storage (e.g. file), optionally checking for command line overrides.

### ConfirmVideoMode

```
void ConfirmVideoMode()
```

Mark current video mode settings (fullscreenmode/resolution) as being confirmed by the user

### EnableHDRDisplayOutput

```
void EnableHDRDisplayOutput(bool bEnable, int DisplayNits = 1000)
```

Enables or disables HDR display output. Can be called again to change the desired nit level

### GetAntiAliasingQuality

```
int GetAntiAliasingQuality()const
```

Returns the anti-aliasing quality (0..4, higher is better)

### GetAudioQualityLevel

```
int GetAudioQualityLevel()const
```

Returns the user's audio quality level setting

### GetCurrentHDRDisplayNits

```
int GetCurrentHDRDisplayNits()const
```

Returns 0 if HDR isn't supported or is turned off

### GetDefaultResolutionScale

```
float32 GetDefaultResolutionScale()
```

Gets the desired resolution quality based on DesiredScreenWidth/Height and the current screen resolution

### GetDesktopResolution

```
FIntPoint GetDesktopResolution()const
```

Returns user's desktop resolution, in pixels.

### GetFoliageQuality

```
int GetFoliageQuality()const
```

Returns the foliage quality (0..4, higher is better)

### GetFrameRateLimit

```
float32 GetFrameRateLimit()const
```

Gets the user's frame rate limit (0 indiciates the frame rate limit is disabled)

### GetFullscreenMode

```
EWindowMode GetFullscreenMode()const
```

Returns the user setting for game window fullscreen mode.

### GetGlobalIlluminationQuality

```
int GetGlobalIlluminationQuality()const
```

Returns the global illumination quality (0..4, higher is better)

### GetLastConfirmedFullscreenMode

```
EWindowMode GetLastConfirmedFullscreenMode()const
```

Returns the last confirmed user setting for game window fullscreen mode.

### GetLastConfirmedScreenResolution

```
FIntPoint GetLastConfirmedScreenResolution()const
```

Returns the last confirmed user setting for game screen resolution, in pixels.

### GetOverallScalabilityLevel

```
int GetOverallScalabilityLevel()const
```

Returns the overall scalability level (can return -1 if the settings are custom)

### GetPostProcessingQuality

```
int GetPostProcessingQuality()const
```

Returns the post-processing quality (0..4, higher is better)

### GetPreferredFullscreenMode

```
EWindowMode GetPreferredFullscreenMode()const
```

Returns the user setting for game window fullscreen mode.

### GetRecommendedResolutionScale

```
float32 GetRecommendedResolutionScale()
```

Gets the recommended resolution quality based on LastRecommendedScreenWidth/Height and the current screen resolution

### GetReflectionQuality

```
int GetReflectionQuality()const
```

Returns the reflection quality (0..4, higher is better)

### GetResolutionScaleInformationEx

```
void GetResolutionScaleInformationEx(float32& CurrentScaleNormalized, float32& CurrentScaleValue, float32& MinScaleValue, float32& MaxScaleValue)const
```

Returns the current resolution scale and the range

### GetResolutionScaleNormalized

```
float32 GetResolutionScaleNormalized()const
```

Gets the current resolution scale as a normalized 0..1 value between MinScaleValue and MaxScaleValue

### GetScreenResolution

```
FIntPoint GetScreenResolution()const
```

Returns the user setting for game screen resolution, in pixels.

### GetShadingQuality

```
int GetShadingQuality()const
```

Returns the shading quality (0..4, higher is better)

### GetShadowQuality

```
int GetShadowQuality()const
```

Returns the shadow quality (0..4, higher is better)

### GetTextureQuality

```
int GetTextureQuality()const
```

Returns the texture quality (0..4, higher is better)

### GetViewDistanceQuality

```
int GetViewDistanceQuality()const
```

Returns the view distance quality (0..4, higher is better)

### GetVisualEffectQuality

```
int GetVisualEffectQuality()const
```

Returns the visual effects quality (0..4, higher is better)

### IsDirty

```
bool IsDirty()const
```

Checks if any user settings is different from current

### IsDynamicResolutionDirty

```
bool IsDynamicResolutionDirty()const
```

Checks if the dynamic resolution user setting is different from current system setting

### IsDynamicResolutionEnabled

```
bool IsDynamicResolutionEnabled()const
```

Returns the user setting for dynamic resolution.

### IsFullscreenModeDirty

```
bool IsFullscreenModeDirty()const
```

Checks if the FullscreenMode user setting is different from current

### IsHDREnabled

```
bool IsHDREnabled()const
```

IsScreenResolutionDirty

### bool IsScreenResolutionDirty

```
bool IsScreenResolutionDirty()const
```

Checks if the Screen Resolution user setting is different from current

### ApplyHardwareBenchmarkResults

```
void ApplyHardwareBenchmarkResults()
```

Applies the settings stored in ScalabilityQuality and saves settings

### IsVSyncEnabled

```
bool IsVSyncEnabled()const
```

Returns the user setting for vsync.

### LoadSettings

```
void LoadSettings(bool bForceReload = false)
```

Loads the user settings from persistent storage

### ResetToCurrentSettings

```
void ResetToCurrentSettings()
```

This function resets all settings to the current system settings

### RevertVideoMode

```
void RevertVideoMode()
```

Revert video mode (fullscreenmode/resolution) back to the last user confirmed values

### RunHardwareBenchmark

```
void RunHardwareBenchmark(int WorkScale = 10, float32 CPUMultiplier = 1.000000, float32 GPUMultiplier = 1.000000)
```

Runs the hardware benchmark and populates ScalabilityQuality as well as the last benchmark results config members, but does not apply the settings it determines. Designed to be called in conjunction with ApplyHardwareBenchmarkResults

### SaveSettings

```
void SaveSettings()
```

Save the user settings to persistent storage (automatically happens as part of ApplySettings)

### SetAntiAliasingQuality

```
void SetAntiAliasingQuality(int Value)
```

Sets the anti-aliasing quality (0..4, higher is better)

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)

SetAudioQualityLevel
void SetAudioQualityLevel(
int 	QualityLevel
	)

Sets the user's audio quality level setting

SetBenchmarkFallbackValues
void SetBenchmarkFallbackValues()

Set scalability settings to sensible fallback values, for use when the benchmark fails or potentially causes a crash

SetDynamicResolutionEnabled
void SetDynamicResolutionEnabled(
bool 	bEnable
	)

Sets the user setting for dynamic resolution. See UGameUserSettings::bUseDynamicResolution.

SetFoliageQuality
void SetFoliageQuality(
int 	Value
	)

Sets the foliage quality (0..4, higher is better)

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)

SetFrameRateLimit
void SetFrameRateLimit(
float32 	NewLimit
	)

Sets the user's frame rate limit (0 will disable frame rate limiting)

SetFullscreenMode
void SetFullscreenMode(
EWindowMode 	InFullscreenMode
	)

Sets the user setting for the game window fullscreen mode. See UGameUserSettings::FullscreenMode.

SetGlobalIlluminationQuality
void SetGlobalIlluminationQuality(
int 	Value
	)

Sets the global illumination quality (0..4, higher is better)

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)

SetOverallScalabilityLevel
void SetOverallScalabilityLevel(
int 	Value
	)

Changes all scalability settings at once based on a single overall quality level

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic

SetPostProcessingQuality
void SetPostProcessingQuality(
int 	Value
	)

Sets the post-processing quality (0..4, higher is better)

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)

SetReflectionQuality
void SetReflectionQuality(
int 	Value
	)

Sets the reflection quality (0..4, higher is better)

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)

SetResolutionScaleNormalized
void SetResolutionScaleNormalized(
float32 	NewScaleNormalized
	)

Sets the current resolution scale as a normalized 0..1 value between MinScaleValue and MaxScaleValue

SetResolutionScaleValueEx
void SetResolutionScaleValueEx(
float32 	NewScaleValue
	)

Sets the current resolution scale

SetScreenResolution
void SetScreenResolution(
FIntPoint 	Resolution
	)

Sets the user setting for game screen resolution, in pixels.

SetShadingQuality
void SetShadingQuality(
int 	Value
	)

Sets the shading quality (0..4, higher is better)

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)

SetShadowQuality
void SetShadowQuality(
int 	Value
	)

Sets the shadow quality (0..4, higher is better)

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)

SetTextureQuality
void SetTextureQuality(
int 	Value
	)

Sets the texture quality (0..4, higher is better)

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic  (gets clamped if needed)

SetToDefaults
void SetToDefaults()
SetViewDistanceQuality
void SetViewDistanceQuality(
int 	Value
	)

Sets the view distance quality (0..4, higher is better)

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)

SetVisualEffectQuality
void SetVisualEffectQuality(
int 	Value
	)

Sets the visual effects quality (0..4, higher is better)

**Parameters**

Value
int

0:low, 1:medium, 2:high, 3:epic, 4:cinematic (gets clamped if needed)

SetVSyncEnabled
void SetVSyncEnabled(
bool 	bEnable
	)

Sets the user setting for vsync. See UGameUserSettings::bUseVSync.

SupportsHDRDisplayOutput
bool SupportsHDRDisplayOutput() const

Whether the curently running system supports HDR display output

ValidateSettings
void ValidateSettings()

Validates and resets bad user settings to default. Deletes stale user settings file if necessary.

GetDefaultResolution
static FIntPoint UGameUserSettings::GetDefaultResolution()

Returns the default resolution when no resolution is set

GetDefaultWindowMode
static EWindowMode UGameUserSettings::GetDefaultWindowMode()

Returns the default window mode when no mode is set

GetDefaultWindowPosition
static FIntPoint UGameUserSettings::GetDefaultWindowPosition()

Returns the default window position when no position is set

GetFramePace
static int UGameUserSettings::GetFramePace()

Gets the current frame pacing frame rate in fps, or 0 if none

GetGameUserSettings
static UGameUserSettings UGameUserSettings::GetGameUserSettings()

Returns the game local machine settings (resolution, windowing mode, scalability settings, etc...)

GetSyncInterval
static int UGameUserSettings::GetSyncInterval()
STATIC FUNCTIONS
StaticClass
static UClass UGameUserSettings::StaticClass()
