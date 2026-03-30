# UFractureModeCustomizationSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UFractureModeCustomizationSettings

## Description

FRACTURE MODE|UI CUSTOMIZATION ToolFavorites TArray<FString> ToolFavorites

Tool Names listed in the array below will appear in a Favorites section at the top of the Fracture Mode Tool Palette

SectionColors TArray<FFractureModeCustomSectionColor> SectionColors

Custom Section Header Colors for listed Sections in the Fracture Mode Tool Palette

ToolColors TArray<FFractureModeCustomToolColor> ToolColors

Custom Tool Colors for listed Tools in the Fracture Mode Tool Palette.

Format

SectionName  (Specifies a default color for all tools in the section.)  SectionName.ToolName  (Specifies an override color for a specific tool in the given section.)

ToolSectionOrder TArray<FString> ToolSectionOrder

Add the names of Fracture Mode Tool Palette Sections to have them appear at the top of the Tool Palette, in the order listed below.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureModeCustomizationSettings::StaticClass()
```
