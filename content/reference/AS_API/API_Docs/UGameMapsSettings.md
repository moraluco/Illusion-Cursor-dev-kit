# UGameMapsSettings

**Visibility:** public

## Inheritance

UObject → UGameMapsSettings → DEFAULTMAPS → EditorTemplateMapOverrides

## Description

TArray<FTemplateMapInfoOverride> EditorTemplateMapOverrides

Map templates that should show up in the new level dialog. This will completely override the default maps chosen by the default editor

LocalMapOptions FString LocalMapOptions

The default options that will be appended to a map being loaded.

TransitionMap FSoftObjectPath TransitionMap

The map loaded when transition from one map to another.

EditorStartupMap FSoftObjectPath EditorStartupMap

If set, this map will be loaded when the Editor starts up.

GameDefaultMap FSoftObjectPath GameDefaultMap

The map that will be loaded by default when no other map is loaded.

ServerDefaultMap FSoftObjectPath ServerDefaultMap

The map that will be loaded by default when no other map is loaded (DEDICATED SERVER).

## DEFAULTMODES

### GlobalDefaultGameMode

```
FSoftClassPath GlobalDefaultGameMode
```

GameMode to use if not specified in any other way. (e.g. per-map DefaultGameMode or on the URL).

### GlobalDefaultServerGameMode

```
FSoftClassPath GlobalDefaultServerGameMode
```

GameMode to use if not specified in any other way. (e.g. per-map DefaultGameMode or on the URL) (DEDICATED SERVERS) If not set, the GlobalDefaultGameMode value will be used.

### GameModeClassAliases

```
TArray<FGameModeName> GameModeClassAliases
```

List of GameModes to load when game= is specified in the URL (e.g. "DM" could be an alias for "MyProject.MyGameModeMP_DM")

### GameModeMapPrefixes

```
TArray<FGameModeName> GameModeMapPrefixes
```

Overrides the GameMode to use when loading a map that starts with a specific prefix

---

## GAMEINSTANCE

### GameInstanceClass

```
FSoftClassPath GameInstanceClass
```

The class to use when instantiating the transient GameInstance class

---

## LOCALMULTIPLAYER

### FourPlayerSplitscreenLayout

```
EFourPlayerSplitScreenType FourPlayerSplitscreenLayout
```

The viewport layout to use if the screen should be split and there are three local players

### ThreePlayerSplitscreenLayout

```
EThreePlayerSplitScreenType ThreePlayerSplitscreenLayout
```

The viewport layout to use if the screen should be split and there are three local players

### TwoPlayerSplitscreenLayout

```
ETwoPlayerSplitScreenType TwoPlayerSplitscreenLayout
```

The viewport layout to use if the screen should be split and there are two local players

### bUseSplitscreen

```
bool bUseSplitscreen
```

Whether the screen should be split or not when multiple local players are present

### bOffsetPlayerGamepadIds

```
bool bOffsetPlayerGamepadIds
```

If enabled, this will make so that gamepads start being assigned to the second controller ID in local multiplayer games.  In PIE sessions with multiple windows, this has the same effect as enabling "Route 1st Gamepad to 2nd Client"

---

## UTILITIES

### SkipAssigningGamepadToPlayer1

```
bool SkipAssigningGamepadToPlayer1 STATIC VARIABLES GameMapsSettings static const UGameMapsSettings UGameMapsSettings::GameMapsSettings SETTINGS GetGameMapsSettings static UGameMapsSettings UGameMapsSettings::GetGameMapsSettings()
```

Returns the game local maps settings

---

## UTILITIES

### SetSkipAssigningGamepadToPlayer1

```
void SetSkipAssigningGamepadToPlayer1(bool bSkipFirstPlayer = true)
```

Modify "Skip Assigning Gamepad to Player 1" GameMapsSettings option

**Parameters**

bSkipFirstPlayer
bool

If set connected game pads will only be assigned to the second and subsequent players

GetSkipAssigningGamepadToPlayer1
bool GetSkipAssigningGamepadToPlayer1() const
STATIC FUNCTIONS
StaticClass
static UClass UGameMapsSettings::StaticClass()
