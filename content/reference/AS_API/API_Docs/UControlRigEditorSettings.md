# UControlRigEditorSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UControlRigEditorSettings

## Description

Customize Control Rig Editor.

## COMPILATION

### bResetControlTransformsOnCompile

```
bool bResetControlTransformsOnCompile
```

When checked controls will be reset during a manual compilation (when pressing the Compile button)

---

## INTERACTION

### bResetControlsOnPinValueInteraction

```
bool bResetControlsOnPinValueInteraction
```

When this is checked all controls will return to their initial value as the user interacts with a pin value

### bEnableUndoForPoseInteraction

```
bool bEnableUndoForPoseInteraction
```

When this is checked any hierarchy interaction within the Control Rig Editor will be stored on the undo stack

### bResetControlsOnCompile

```
bool bResetControlsOnCompile
```

When this is checked all controls will return to their initial value as the user hits the Compile button.

### bAutoLinkMutableNodes

```
bool bAutoLinkMutableNodes
```

When this is checked mutable nodes (nodes with an execute pin) will be hooked up automatically.

---

## NODEGRAPH

### RigUnitPinExpansion

```
TMap<FString,FControlRigSettingsPerPinBool> RigUnitPinExpansion
```

A map which remembers the expansion setting for each rig unit pin.

---

## SNIPPETS

### NodeSnippet_1

```
FString NodeSnippet_1
```

The default node snippet to create when pressing 1 + Left Mouse Button

### NodeSnippet_4

```
FString NodeSnippet_4
```

The default node snippet to create when pressing 4 + Left Mouse Button

### NodeSnippet_5

```
FString NodeSnippet_5
```

The default node snippet to create when pressing 5 + Left Mouse Button

### NodeSnippet_8

```
FString NodeSnippet_8
```

The default node snippet to create when pressing 8 + Left Mouse Button

### NodeSnippet_2

```
FString NodeSnippet_2
```

The default node snippet to create when pressing 2 + Left Mouse Button

### NodeSnippet_3

```
FString NodeSnippet_3
```

The default node snippet to create when pressing 3 + Left Mouse Button

### NodeSnippet_9

```
FString NodeSnippet_9
```

The default node snippet to create when pressing 9 + Left Mouse Button

### NodeSnippet_0

```
FString NodeSnippet_0
```

The default node snippet to create when pressing 0 + Left Mouse Button

### NodeSnippet_6

```
FString NodeSnippet_6
```

The default node snippet to create when pressing 6 + Left Mouse Button

### NodeSnippet_7

```
FString NodeSnippet_7
```

The default node snippet to create when pressing 7 + Left Mouse Button

---

## VIEWPORT

### BackwardsSolveBorderColor

```
FLinearColor BackwardsSolveBorderColor
```

The border color of the viewport when entering "Backwards Solve" mode

### SetupEventBorderColor

```
FLinearColor SetupEventBorderColor
```

The border color of the viewport when entering "Setup Event" mode

### DynamicHierarchyBorderColor

```
FLinearColor DynamicHierarchyBorderColor
```

The border color of the hierarchy tree in dynamic hierarchy mode

### BackwardsAndForwardsBorderColor

```
FLinearColor BackwardsAndForwardsBorderColor
```

The border color of the viewport when entering "Backwards And Forwards" mode

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UControlRigEditorSettings::StaticClass()
```
