# UEngine

**Visibility:** public

## Inheritance

UObject → UEngine → UEditorEngine → UGameEngine

## Description

Abstract base class of all Engine classes, responsible for management of systems critical to editor or game systems.  Also defines default classes for certain engine systems.

## BLUEPRINTS

### MaximumLoopIterationCount

```
int MaximumLoopIterationCount
```

Script maximum loop iteration count used as a threshold to warn users about script execution runaway

---

## DEFAULTCLASSES

### GameSingletonClassName

```
FSoftClassPath GameSingletonClassName
```

Sets the class for a global object spawned at startup to handle game-specific data. If empty, it will not spawn one

### AssetManagerClassName

```
FSoftClassPath AssetManagerClassName
```

Sets the class to spawn as the global AssetManager, configurable per game. If empty, it will not spawn one

### PhysicsCollisionHandlerClassName

```
FSoftClassPath PhysicsCollisionHandlerClassName
```

Sets the PhysicsCollisionHandler class to use by default, which can be overridden to change game-specific behavior when objects collide using physics.

### DefaultBlueprintBaseClassName

```
FSoftClassPath DefaultBlueprintBaseClassName
```

Sets the base class to use for new blueprints created in the editor, configurable on a per-game basis

### ConsoleClassName

```
FSoftClassPath ConsoleClassName
```

Sets the class to use for the game console summoned with

### GameViewportClientClassName

```
FSoftClassPath GameViewportClientClassName
```

Sets the class to use for the game viewport client, which can be overridden to change game-specific input and display behavior.

### LocalPlayerClassName

```
FSoftClassPath LocalPlayerClassName
```

Sets the class to use for local players, which can be overridden to store game-specific information for a local player.

### WorldSettingsClassName

```
FSoftClassPath WorldSettingsClassName
```

Sets the class to use for WorldSettings, which can be overridden to store game-specific information on map/world.

### LevelScriptActorClassName

```
FSoftClassPath LevelScriptActorClassName
```

Sets the Level Script Actor class, which can be overridden to allow game-specific behavior in per-map blueprint scripting

### GameUserSettingsClassName

```
FSoftClassPath GameUserSettingsClassName
```

Sets the GameUserSettings class, which can be overridden to support game-specific options for Graphics/Sound/Gameplay.

---

## DEFAULTMATERIALS

### DefaultDestructiblePhysMaterialName

```
FSoftObjectPath DefaultDestructiblePhysMaterialName
```

Path of the PhysicalMaterial to use if none is defined for a particular object.

### PreviewShadowsIndicatorMaterialName

```
FSoftObjectPath PreviewShadowsIndicatorMaterialName
```

Path of the material that renders a message about preview shadows being used.

---

## FONTS

### TinyFontName

```
FSoftObjectPath TinyFontName
```

Sets the font used for the smallest engine text

### LargeFontName

```
FSoftObjectPath LargeFontName
```

Sets the font used for large engine text

### AdditionalFontNames

```
TArray<FString> AdditionalFontNames
```

Sets additional fonts that will be loaded at startup and available using GetAdditionalFont.

### SubtitleFontName

```
FSoftObjectPath SubtitleFontName
```

Sets the font used by the default Subtitle Manager

### MediumFontName

```
FSoftObjectPath MediumFontName
```

Sets the font used for medium engine text

### SmallFontName

```
FSoftObjectPath SmallFontName
```

Sets the font used for small engine text, used for most debug displays

---

## FRAMERATE

### FixedFrameRate

```
float32 FixedFrameRate
```

The fixed framerate to use.

### CustomTimeStepClassName

```
FSoftClassPath CustomTimeStepClassName
```

Override how the Engine process the Framerate/Timestep.  This class will be responsible of updating the application Time and DeltaTime.  Can be used to synchronize the engine with another process (gen-lock).

### MinDesiredFrameRate

```
float32 MinDesiredFrameRate
```

Minimum desired framerate setting, below this frame rate visual detail may be lowered

---

## LEVELSTREAMING

### StreamingDistanceFactor

```
float32 StreamingDistanceFactor
```

Fudge factor for tweaking the distance based miplevel determination

---

## PERQUALITYLEVELPROPERTY

### UseStaticMeshMinLODPerQualityLevels

```
bool UseStaticMeshMinLODPerQualityLevels
```

---

## SETTINGS

### NearClipPlane

```
float32 NearClipPlane
```

The distance of the camera's near clipping plane.

---

## TIMECODE

### GenerateDefaultTimecodeFrameDelay

```
float32 GenerateDefaultTimecodeFrameDelay
```

Number of frames to subtract from generated default timecode.

### TimecodeProviderClassName

```
FSoftClassPath TimecodeProviderClassName
```

Set TimecodeProvider when the engine is started.

### bGenerateDefaultTimecode

```
bool bGenerateDefaultTimecode
```

Generate a default timecode from the computer clock when there is no timecode provider.  On desktop, the system time will be used and will behave as if a USystemTimecodeProvider was set.  On console, the high performance clock will be used. That may introduce drift over time.  If you wish to use the system time on console, set the timecode provider to USystemeTimecodeProvider.

---

## FUNCTIONS

### SetbSubtitlesForcedOff

```
void SetbSubtitlesForcedOff(bool Value)
```

SetbCanBlueprintsTickByDefault

### void SetbCanBlueprintsTickByDefault

```
void SetbCanBlueprintsTickByDefault(bool Value)
```

SetbOptimizeAnimBlueprintMemberVariableAccess

### void SetbOptimizeAnimBlueprintMemberVariableAccess

```
void SetbOptimizeAnimBlueprintMemberVariableAccess(bool Value)
```

SetbAllowMultiThreadedAnimationUpdate

### void SetbAllowMultiThreadedAnimationUpdate

```
void SetbAllowMultiThreadedAnimationUpdate(bool Value)
```

SetbSmoothFrameRate

### void SetbSmoothFrameRate

```
void SetbSmoothFrameRate(bool Value)
```

SetbUseFixedFrameRate

### void SetbUseFixedFrameRate

```
void SetbUseFixedFrameRate(bool Value)
```

SetbSubtitlesEnabled

### void SetbSubtitlesEnabled

```
void SetbSubtitlesEnabled(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEngine::StaticClass()
```
