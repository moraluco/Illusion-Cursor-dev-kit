# UEditorStyleSettings

**Visibility:** public

## Inheritance

UObject → UEditorStyleSettings

## Description

Implements the Editor style settings.

## ACCESSIBILITY

### bColorVisionDeficiencyCorrection

```
bool bColorVisionDeficiencyCorrection
```

Shifts the color spectrum to the visible range based on the current ColorVisionDeficiencyPreviewType

### ColorVisionDeficiencyPreviewType

```
EColorVisionDeficiency ColorVisionDeficiencyPreviewType
```

Applies a color vision deficiency filter to the entire editor

### ColorVisionDeficiencySeverity

```
int ColorVisionDeficiencySeverity
```
### bColorVisionDeficiencyCorrectionPreviewWithDeficiency

```
bool bColorVisionDeficiencyCorrectionPreviewWithDeficiency
```

If you're correcting the color deficiency, you can use this to visualize what the correction looks like with the deficiency.

---

## COLORS

### EditorWindowBackgroundColor

```
FLinearColor EditorWindowBackgroundColor
```

The color used to tint the editor window backgrounds

### SelectionColor

```
FLinearColor SelectionColor
```

The color used to represent selection

---

## GRAPHS

### RuleColor

```
FLinearColor RuleColor
```

The color used to represent ruler lines in the grid

### RegularColor

```
FLinearColor RegularColor
```

The color used to represent regular grid lines

### GraphBackgroundBrush

```
FSlateBrush GraphBackgroundBrush
```

Optional brush used for graph backgrounds

### CenterColor

```
FLinearColor CenterColor
```

The color used to represent the center lines in the grid

### GridSnapSize

```
uint GridSnapSize
```

The custom grid snap size to use

### LOG

```
OUTPUT LOG
```
### LogFontSize

```
int LogFontSize
```

The font size used in the output log

### CategoryColorizationMode

```
ELogCategoryColorizationMode CategoryColorizationMode
```

How should categories be colorized in the output log?

### LogTimestampMode

```
ELogTimes LogTimestampMode
```

The display mode for timestamps in the output log window

### bPromoteOutputLogWarningsDuringPIE

```
bool bPromoteOutputLogWarningsDuringPIE
```

Should warnings and errors in the Output Log during "Play in Editor" be promoted to the message log?

### bCycleToOutputLogDrawer

```
bool bCycleToOutputLogDrawer
```

If checked pressing the console command shortcut will cycle between focusing the status bar console, opening the output log drawer, and back to the previous focus target.  If unchecked, the console command shortcut will only focus the status bar console

---

## USERINTERFACE

### bEnableUserEditorLayoutManagement

```
bool bEnableUserEditorLayoutManagement
```

Whether to enable the Editor UI Layout configuration tools for the user.  If disabled, the "Save Layout As" and "Remove Layout" menus will be removed, as well as the "Import Layout..." sub-menu.

### AssetEditorOpenLocation

```
EAssetEditorOpenLocation AssetEditorOpenLocation
```

New asset editor tabs will open at the specified location.

### bEnableHighDPIAwareness

```
bool bEnableHighDPIAwareness
```

Enables high dpi support in the editor which will adjust the scale of elements in the UI to account for high DPI monitors The editor must be restarted for changes to take effect.

---

## FUNCTIONS

### SetbUseGrid

```
void SetbUseGrid(bool Value)
```

SetbShowFriendlyNames

### void SetbShowFriendlyNames

```
void SetbShowFriendlyNames(bool Value)
```

SetbShowNativeComponentNames

### void SetbShowNativeComponentNames

```
void SetbShowNativeComponentNames(bool Value)
```

SetbExpandConfigurationMenus

### void SetbExpandConfigurationMenus

```
void SetbExpandConfigurationMenus(bool Value)
```

SetbEnableColorizedEditorTabs

### void SetbEnableColorizedEditorTabs

```
void SetbEnableColorizedEditorTabs(bool Value)
```

SetbUseSmallToolBarIcons

### void SetbUseSmallToolBarIcons

```
void SetbUseSmallToolBarIcons(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorStyleSettings::StaticClass()
```
