# UBlueprintEditorSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UBlueprintEditorSettings → COMPILER → SaveOnCompile

## Description

ESaveOnCompile SaveOnCompile

Determines when to save Blueprints post-compile

bJumpToNodeErrors bool bJumpToNodeErrors

When enabled, if a blueprint has compiler errors, then the graph will jump and focus on the first node generating an error

## DEVELOPERTOOLS

### bBlueprintNodeUniqueNames

```
bool bBlueprintNodeUniqueNames
```

If enabled, blueprint nodes in the event graph will display with unique names rather than their display name.

### bShowActionMenuItemSignatures

```
bool bShowActionMenuItemSignatures
```

If enabled, tooltips on action menu items will show the associated action's signature id (can be used to setup custom favorites menus).

---

## EXPERIMENTAL

### bAllowExplicitImpureNodeDisabling

```
bool bAllowExplicitImpureNodeDisabling
```

If enabled, nodes can be explicitly disabled via context menu when right-clicking on impure nodes in the Blueprint editor. Disabled nodes will not be compiled, but also will not break existing connections.

### NamespacesToAlwaysInclude

```
TArray<FString> NamespacesToAlwaysInclude
```

The list of namespaces to always expose in any Blueprint (local per-user)

### bFavorPureCastNodes

```
bool bFavorPureCastNodes
```

If enabled, then placed cast nodes will default to their "pure" form (meaning: without execution pins).

### bEnableNamespaceEditorFeatures

```
bool bEnableNamespaceEditorFeatures
```

Whether to enable namespace importing and filtering features in the Blueprint editor

---

## PERFORMANCE

### CompileEventDisplayThresholdMs

```
int CompileEventDisplayThresholdMs
```

Minimum event time threshold used as a filter when additional details are enabled for display in the Compiler Results tab. A value of zero means that all events will be included in the final summary.

### bShowDetailedCompileResults

```
bool bShowDetailedCompileResults
```

If enabled, additional details will be displayed in the Compiler Results tab after compiling a blueprint.

### NodeTemplateCacheCapMB

```
float32 NodeTemplateCacheCapMB
```

The node template cache is used to speed up blueprint menuing. This determines the peak data size for that cache.

---

## PLAY

### BaseClassesToAllowRecompilingDuringPlayInEditor

```
TArray<TSoftClassPtr<UObject>> BaseClassesToAllowRecompilingDuringPlayInEditor
```

Any blueprint deriving from one of these base classes will be allowed to recompile during Play-in-Editor (This setting exists both as an editor preference and project setting, and will be allowed if listed in either place)

---

## VISUALSTYLE

### bShowGraphInstructionText

```
bool bShowGraphInstructionText
```

Determines if lightweight tutorial text shows up at the top of empty blueprint graphs

### bShowShortTooltips

```
bool bShowShortTooltips
```

If true, use short tooltips whenever possible

### bHideUnrelatedNodes

```
bool bHideUnrelatedNodes
```

If true, fade nodes which are not connected to the selected nodes

### bDrawMidpointArrowsInBlueprints

```
bool bDrawMidpointArrowsInBlueprints
```

Should arrows indicating data/execution flow be drawn halfway along wires?

---

## WORKFLOW

### bSpawnDefaultBlueprintNodes

```
bool bSpawnDefaultBlueprintNodes
```

If set will spawn default "ghost" event nodes in new Blueprints, modifiable in the [DefaultEventNodes] section of EditorPerProjectUserSettings

### TypePromotionPinDenyList

```
TSet<FName> TypePromotionPinDenyList
```

If a pin type is within this list, then it will never be marked as a possible promotable function.

### bNavigateToNativeFunctionsFromCallNodes

```
bool bNavigateToNativeFunctionsFromCallNodes
```

If set, double clicking on a call function node will attempt to navigate an open C++ editor to the native source definition

### BreakpointReloadMethod

```
EBlueprintBreakpointReloadMethod BreakpointReloadMethod
```

How to handle previously-set breakpoints on reload.

### bSplitContextTargetSettings

```
bool bSplitContextTargetSettings
```

If enabled, we'll save off your chosen target setting based off of the context (allowing you to have different preferences based off what you're operating on).

### bCompactCallOnMemberNodes

```
bool bCompactCallOnMemberNodes
```

If enabled, then call-on-member actions will be spawned as a single node (instead of a GetMember + FunctionCall node).

### bExposeDeprecatedFunctions

```
bool bExposeDeprecatedFunctions
```

If enabled, deprecated functions will be visible in the context menu and will be available for override implementation. By default, functions marked as deprecated are not exposed in either case.

### bShowContextualFavorites

```
bool bShowContextualFavorites
```

If enabled, then a separate section with your Blueprint favorites will be pined to the top of the context menu.

### bExposeAllMemberComponentFunctions

```
bool bExposeAllMemberComponentFunctions
```

If enabled, then ALL component functions are exposed to the context menu (when the contextual target is a component owner). Ignores "ExposeFunctionCategories" metadata for components.

### bEnablePinValueInspectionTooltips

```
bool bEnablePinValueInspectionTooltips
```

If enabled, pin tooltips during PIE will be interactive

### bShowViewportOnSimulate

```
bool bShowViewportOnSimulate
```

If true will show the viewport tab when simulate is clicked.

### bHideConstructionScriptComponentsInDetailsView

```
bool bHideConstructionScriptComponentsInDetailsView
```

If set will exclude components added in a Blueprint class Construction Script from the component details view

### bAutoCastObjectConnections

```
bool bAutoCastObjectConnections
```

If enabled, then you'll be able to directly connect arbitrary object pins together (a pure cast node will be injected automatically).

### bFlattenFavoritesMenus

```
bool bFlattenFavoritesMenus
```

If enabled, then your Blueprint favorites will be uncategorized, leaving you with less nested categories to sort through.

### bDoubleClickNavigatesToParent

```
bool bDoubleClickNavigatesToParent
```

Double click to navigate up to the parent graph

### bEnableTypePromotion

```
bool bEnableTypePromotion
```

Allows for pin types to be promoted to others, i.e. float to double

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBlueprintEditorSettings::StaticClass()
```
