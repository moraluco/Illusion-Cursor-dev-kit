# UModelingToolsModeCustomizationSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UModelingToolsModeCustomizationSettings

## Description

MODELING MODE|TOOL ASSETS BrushAlphaSets TArray<FModelingModeAssetCollectionSet> BrushAlphaSets

A Brush Alpha Set is a named list of Content Browser Collections, which will be shown as a separate tab in the Texture Asset Picker used in various Modeling Mode Tools when selecting a Brush Alpha (eg in Sculpting)

MODELING MODE|UI CUSTOMIZATION SectionColors TArray<FModelingModeCustomSectionColor> SectionColors

Custom Section Header Colors for listed Sections in the Modeling Mode Tool Palette

ToolColors TArray<FModelingModeCustomToolColor> ToolColors

Custom Tool Colors for listed Tools in the Modeling Mode Tool Palette.

Format

SectionName  (Specifies a default color for all tools in the section.)  SectionName.ToolName  (Specifies an override color for a specific tool in the given section.)

ToolFavorites TArray<FString> ToolFavorites

Tool Names listed in the array below will appear in a Favorites section at the top of the Modeling Mode Tool Palette

ToolSectionOrder TArray<FString> ToolSectionOrder

Add the names of Modeling Mode Tool Palette Sections to have them appear at the top of the Tool Palette, in the order listed below.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UModelingToolsModeCustomizationSettings::StaticClass()
```
