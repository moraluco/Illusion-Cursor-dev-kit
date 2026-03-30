# ULevelEditorPlaySettings

**Visibility:** public

## Inheritance

UObject → ULevelEditorPlaySettings

## Description

Implements the Editor's play settings.

## GAMEVIEWPORTSETTINGS

### NewWindowHeight

```
int NewWindowHeight
```

The height of the new view port window in pixels (0 = use the desktop's screen resolution).

### NewWindowPosition

```
FIntPoint NewWindowPosition
```

The position of the new view port window on the screen in pixels.

### NewWindowWidth

```
int NewWindowWidth
```

The width of the new view port window in pixels (0 = use the desktop's screen resolution).

### OPTIONS

```
MULTIPLAYER OPTIONS
```
### bShowServerDebugDrawingByDefault

```
bool bShowServerDebugDrawingByDefault
```

Controls the default value of the show flag ServerDrawDebug

### PlayNetMode

```
EPlayNetMode PlayNetMode
```

NetMode to use for Play In Editor.

### NetworkEmulationSettings

```
FLevelEditorPlayNetworkEmulationSettings NetworkEmulationSettings
```

Customizable settings allowing to emulate latency and packetloss for game network transmissions

### ServerDebugDrawingColorTintStrength

```
float32 ServerDebugDrawingColorTintStrength
```

How strongly debug drawing originating from the server will be biased towards the tint color

### RunUnderOneProcess

```
bool RunUnderOneProcess
```

Spawn multiple player windows in a single instance of UE. This will load much faster, but has potential to have more issues.

### ServerDebugDrawingColorTint

```
FLinearColor ServerDebugDrawingColorTint
```

Debug drawing originating from the server will be biased towards this color

### bLaunchSeparateServer

```
bool bLaunchSeparateServer
```

This is a rarely used option that will launch a separate server (possibly hidden in-process depending on RunUnderOneProcess) even if the net mode does not require a server (such as Standalone). If the net mode requires a server (such as Client) a server will be launched for you (regardless of this setting). This allows you to test offline -> server workflows by connecting ("open 127.0.0.1:<ServerPort>") from the offline game.

MULTIPLAYER OPTIONS|CLIENT

### ClientWindowWidth

```
int ClientWindowWidth
```

Width to use when spawning additional windows.

### CreateAudioDeviceForEveryPlayer

```
bool CreateAudioDeviceForEveryPlayer
```

If checked, a separate audio device is created for every player.

If unchecked, a separate audio device is created for only the first two players and uses the main audio device for more than 2 players.

Enabling this will allow rendering accurate audio from every player's perspective but will use more CPU. Keep this disabled on lower-perf machines.

### ClientWindowHeight

```
int ClientWindowHeight
```

Height to use when spawning additional windows.

### ClientFixedFPS

```
TArray<int> ClientFixedFPS
```

If > 0, Tick clients at a fixed frame rate. Each client instance will map to an element in the list, wrapping around if num clients exceeds size of list. Includes Listen Server. This is the target frame rate, e.g, "20" for 20fps, which will result in 1/20 second tick steps.

### PlayNumberOfClients

```
int PlayNumberOfClients
```

The number of client windows to open. The first one to open will respect the Play In Editor "Modes" option (PIE, PINW), additional clients respect the RunUnderOneProcess setting.

### RouteGamepadToSecondWindow

```
bool RouteGamepadToSecondWindow
```

When running multiple player windows in a single process, this option determines how the game pad input gets routed.

### If unchecked

```
If unchecked(default)then the 1st game pad is attached to the 1st window, 2nd to the 2nd window, and so on.
```

If it is checked, the 1st game pad goes the 2nd window. The 1st window can then be controlled by keyboard/mouse, which is convenient if two people are testing on the same computer.

MULTIPLAYER OPTIONS|SERVER

### AdditionalServerLaunchParameters

```
FString AdditionalServerLaunchParameters
```

Additional options that will be passed to the server as arguments, for example -debug. Only works with separate process servers.

### ServerFixedFPS

```
int ServerFixedFPS
```

If > 0, Tick dedicated server at a fixed frame rate. Does not impact Listen Server (use ClientFixedFPS setting). This is the target frame rate, e.g, "20" for 20fps, which will result in 1/20 second tick steps.

### ServerPort

```
uint16 ServerPort
```

What port used by the server for simple networking

### AdditionalServerGameOptions

```
FString AdditionalServerGameOptions
```

Additional options that will be passed to the server as URL parameters, in the format ?bIsLanMatch=1?listen

### any additional command line switches should be passed in the Additional Server Launch Parameters field below.

```
any additional command line switches should be passed in the Additional Server Launch Parameters field below.
```

ServerMapNameOverride

### FString ServerMapNameOverride

```
FString ServerMapNameOverride
```

Override the map launched by the dedicated server (currently only used when in PIE_StandaloneWithServer net mode)

---

## PLAYINEDITOR

### EnableGameSound

```
bool EnableGameSound
```

Whether to play sounds when in a Play In Editor session

### ShowMouseControlLabel

```
bool ShowMouseControlLabel
```

Whether to show a label for mouse control gestures in the PIE view.

### EnablePIEEnterAndExitSounds

```
bool EnablePIEEnterAndExitSounds
```

Whether to play a sound when entering and exiting PIE

### ViewportGetsHMDControl

```
bool ViewportGetsHMDControl
```

Whether or not HMD orientation should be used when playing in viewport

### MouseControlLabelPosition

```
ELabelAnchorMode MouseControlLabelPosition
```

Location on screen to anchor the mouse control label when in PIE mode.

### AutoRecompileBlueprints

```
bool AutoRecompileBlueprints
```

Automatically recompile blueprints used by the current level when initiating a Play In Editor session

### SoloAudioInFirstPIEClient

```
bool SoloAudioInFirstPIEClient
```

Whether to automatically solo audio in first PIE client

### PlayInEditorSoundQualityLevel

```
int PlayInEditorSoundQualityLevel
```

Which quality level to use when playing in editor

### ShouldMinimizeEditorOnVRPIE

```
bool ShouldMinimizeEditorOnVRPIE
```

Whether or not the editor is minimized on VR PIE

### UseMouseForTouch

```
bool UseMouseForTouch
```

While using the game viewport, it sends mouse movement and clicks as touch events, instead of as mouse events.

### GameGetsMouseControl

```
bool GameGetsMouseControl
```

Give the game mouse control when PIE starts or require a click in the viewport first

---

## PLAYINSTANDALONEGAME

### AdditionalLaunchParameters

```
FString AdditionalLaunchParameters
```

Extra parameters to be include as part of the command line for the standalone game.

---

## PLAYONDEVICE

### BuildGameBeforeLaunch

```
EPlayOnBuildMode BuildGameBeforeLaunch
```

Whether to build the game before launching on device.

### LaunchConfiguration

```
EPlayOnLaunchConfiguration LaunchConfiguration
```

Which build configuration to use when launching on device.

### bAutoCompileBlueprintsOnLaunch

```
bool bAutoCompileBlueprintsOnLaunch
```

Whether to automatically recompile dirty Blueprints before launching

---

## FUNCTIONS

### SetCenterNewWindow

```
void SetCenterNewWindow(bool Value)
```

SetPIEAlwaysOnTop

### void SetPIEAlwaysOnTop

```
void SetPIEAlwaysOnTop(bool Value)
```

SetDisableStandaloneSound

### void SetDisableStandaloneSound

```
void SetDisableStandaloneSound(bool Value)
```

SetbPreferToStreamLevelsInPIE

### void SetbPreferToStreamLevelsInPIE

```
void SetbPreferToStreamLevelsInPIE(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULevelEditorPlaySettings::StaticClass()
```
