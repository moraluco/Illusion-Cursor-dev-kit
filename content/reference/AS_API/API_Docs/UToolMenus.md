# UToolMenus

**Visibility:** public

## Inheritance

UObject → UToolMenus → MISC → MenuSubstitutionsDuringGenerate

## Description

TMap<FName,FName> MenuSubstitutionsDuringGenerate

Allow substituting one menu for another during generate but not during find or extend

### TOOL MENUS

```
TOOL MENUS RemoveSection void RemoveSection(const FName MenuName, const FName Section)
```

Removes a section from a given menu

### FindMenu

```
UToolMenu FindMenu(const FName Name)
```

Finds an existing menu that has been registered or extended.

**Parameters**

Name
const FName

Name of the menu to find.

**Returns**

ToolMenu  Menu object. Returns null if not found.

IsMenuRegistered
bool IsMenuRegistered(
const 	FName 	Name
	) const

Determines if a menu has already been registered.

**Parameters**

Name
const FName

Name of the menu to find.

**Returns**

bool  True if menu has already been registered.

RefreshAllWidgets
void RefreshAllWidgets()

Rebuilds all currently generated widgets next tick.

RefreshMenuWidget
bool RefreshMenuWidget(
const 	FName 	Name
	)

Rebuilds all widgets generated from a specific menu.

RegisterMenu
UToolMenu RegisterMenu(
	FName 	Name,
const 	FName 	Parent	 = 	NAME_None,
	EMultiBoxType 	Type	 = 	EMultiBoxType :: Menu,
	bool 	bWarnIfAlreadyRegistered	 = 	true
	)

Registers a menu by name

**Parameters**

Parent
const FName

Optional name of a menu to layer on top of.

Type
EMultiBoxType

Type of menu that will be generated such as: ToolBar, VerticalToolBar, etc..

bWarnIfAlreadyRegistered
bool

Display warning if already registered

**Returns**

ToolMenu  Menu object

RemoveEntry
void RemoveEntry(
const 	FName 	MenuName,
const 	FName 	Section,
const 	FName 	Name
	)

Removes a menu entry from a given menu and section

RemoveMenu
void RemoveMenu(
const 	FName 	MenuName
	)

Unregisters a menu by name

ExtendMenu
UToolMenu ExtendMenu(
const 	FName 	Name
	)

Extends a menu without registering the menu or claiming ownership of it. Ok to call even if menu does not exist yet.

**Parameters**

Name
const FName

Name of the menu to extend

**Returns**

ToolMenu  Menu object

SetSectionLabel
void SetSectionLabel(
const 	FName 	MenuName,
const 	FName 	SectionName,
const 	FText 	Label
	)

Sets a section's displayed label text.

SetSectionPosition
void SetSectionPosition(
const 	FName 	MenuName,
const 	FName 	SectionName,
const 	FName 	OtherSectionName,
	EToolMenuInsertType 	PositionType
	)

Sets where to insert a section into a menu when generating relative to other section names.

UnregisterOwnerByName
void UnregisterOwnerByName(
FName 	InOwnerName
	)

Removes all entries that were registered under a specific owner name

AddMenuEntryObject
static bool UToolMenus::AddMenuEntryObject(
UToolMenuEntryScript 	MenuEntryObject
	)

Registers menu entry object from blueprint/script

FindContext
static UObject UToolMenus::FindContext(
FToolMenuContext 	InContext,
UClass 	InClass
	)

Finds a context object of a given class if it exists

Get
static UToolMenus UToolMenus::Get()
STATIC FUNCTIONS
StaticClass
static UClass UToolMenus::StaticClass()
