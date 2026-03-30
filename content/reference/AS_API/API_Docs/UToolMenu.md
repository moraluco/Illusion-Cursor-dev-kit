# UToolMenu

**Visibility:** public

## Inheritance

UToolMenuBase → UToolMenu

## Description

TOOL MENUS bCloseSelfOnly bool bCloseSelfOnly MenuParent FName MenuParent StyleName FName StyleName TutorialHighlightName FName TutorialHighlightName MenuType EMultiBoxType MenuType bShouldCloseWindowAfterMenuSelection bool bShouldCloseWindowAfterMenuSelection MenuName FName MenuName bSearchable bool bSearchable MenuOwner FToolMenuOwner MenuOwner

## TOOLBAR

### bPreventCustomization

```
bool bPreventCustomization
```

Prevent menu from being customized

### bToolBarForceSmallIcons

```
bool bToolBarForceSmallIcons
```
### bToolBarIsFocusable

```
bool bToolBarIsFocusable TOOL MENUS AddMenuEntry void AddMenuEntry(const FName SectionName, FToolMenuEntry Args)
```

AddMenuEntryObject

### void AddMenuEntryObject

```
void AddMenuEntryObject(UToolMenuEntryScript InObject)
```

AddSection

### void AddSection

```
void AddSection(const FName SectionName, FText Label, const FName InsertName = NAME_None, EToolMenuInsertType InsertType = EToolMenuInsertType :: Default)
```

AddSubMenu

### UToolMenu AddSubMenu

```
UToolMenu AddSubMenu(const FName Owner, const FName SectionName, const FName Name, FText Label, FText ToolTip)
```

InitMenu

### void InitMenu

```
void InitMenu(const FToolMenuOwner Owner, FName Name, FName Parent = NAME_None, EMultiBoxType Type = EMultiBoxType :: Menu)
```

AddDynamicSection

### void AddDynamicSection

```
void AddDynamicSection(const FName SectionName, UToolMenuSectionDynamic Object)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UToolMenu::StaticClass()
```
