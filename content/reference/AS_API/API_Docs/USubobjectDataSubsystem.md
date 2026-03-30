# USubobjectDataSubsystem

**Visibility:** public

## Inheritance

UEngineSubsystem → USubobjectDataSubsystem

## Description

The Subobject Data Subsystem will produce the reflected subobject data based on a given root object. A root object can be anything, an actor instance clicked on via the level editor, a UBlueprint* by opening an asset, or something piped in from python or other scripting languages.

## SUBOBJECTDATASUBSYSTEM

### DeleteSubobjectsFromInstance

```
int DeleteSubobjectsFromInstance(FSubobjectDataHandle ContextHandle, TArray<FSubobjectDataHandle> SubobjectsToDelete)
```

Attempts to delete the given array of subobjects from their context

**Parameters**

ContextHandle
FSubobjectDataHandle

The owning context of the subobjects that should be removed

SubobjectsToDelete
TArray<FSubobjectDataHandle>

Array of subobject handles that should be deleted

**Returns**

The number of subobjects successfully deleted

AttachSubobject
bool AttachSubobject(
FSubobjectDataHandle 	OwnerHandle,
FSubobjectDataHandle 	ChildToAddHandle
	)

Add the given subobject to a new owner. This will remove the subobject from its previous owner if necessary.

**Parameters**

OwnerHandle
FSubobjectDataHandle

The new owner to attach to

ChildToAddHandle
FSubobjectDataHandle

Handle to the subobject that will become a child of the owner

**Returns**

true if the child was added successfully

CanCopySubobjects
bool CanCopySubobjects(
TArray<FSubobjectDataHandle> 	Handles
	) const

Returns true if the given array of handles represents subobjects that can be copied.

CanPasteSubobjects
bool CanPasteSubobjects(
FSubobjectDataHandle 	RootHandle,
UBlueprint 	BPContext	 = 	nullptr
	) const
ChangeSubobjectClass
bool ChangeSubobjectClass(
	FSubobjectDataHandle 	Handle,
const 	UClass 	NewClass
	)

Attempts to change the subclass of a native component

**Parameters**

Handle
FSubobjectDataHandle

Handle to the subobject to change class of

NewClass
const UClass

The new class that is desired for the given subobject

**Returns**

True if the class change was successful, false otherwise.

CopySubobjects
void CopySubobjects(
TArray<FSubobjectDataHandle> 	Handles,
UBlueprint 	BpContext
	)
DeleteSubobject
int DeleteSubobject(
FSubobjectDataHandle 	ContextHandle,
FSubobjectDataHandle 	SubobjectToDelete,
UBlueprint 	BPContext	 = 	nullptr
	)

Attempts to delete the given subobject from its blueprint context

**Parameters**

ContextHandle
FSubobjectDataHandle

The owning context of the subobjects that should be removed

SubobjectToDelete
FSubobjectDataHandle

The subobject handles that should be deleted

BPContext
UBlueprint

The blueprint context for the given

**Returns**

The number of subobjects successfully deleted

DeleteSubobjects
int DeleteSubobjects(
FSubobjectDataHandle 	ContextHandle,
TArray<FSubobjectDataHandle> 	SubobjectsToDelete,
UBlueprint 	BPContext	 = 	nullptr
	)

Attempts to delete the given array of subobjects from their context

**Parameters**

ContextHandle
FSubobjectDataHandle

The owning context of the subobjects that should be removed

SubobjectsToDelete
TArray<FSubobjectDataHandle>

Array of subobject handles that should be deleted

BPContext
UBlueprint

The blueprint context for the given

**Returns**

The number of subobjects successfully deleted

DetachSubobject
bool DetachSubobject(
FSubobjectDataHandle 	OwnerHandle,
FSubobjectDataHandle 	ChildToRemove
	)

Remove the child subobject from the owner

**Returns**

True if the child was successfully removed.

FindHandleForObject
FSubobjectDataHandle FindHandleForObject(
	FSubobjectDataHandle 	Context,
const 	UObject 	ObjectToFind,
	UBlueprint 	BPContext	 = 	nullptr
	) const

Attempt to find an existing handle for the given object.

**Parameters**

Context
FSubobjectDataHandle

The context that the object to find is within

ObjectToFind
const UObject

The object that you want to find the handle for within the context

**Returns**

FSubobjectDataHandle  The subobject handle for the object, Invalid handle if not found.

IsValidRename
bool IsValidRename(
FSubobjectDataHandle 	Handle,
FText 	InNewText,
FText& 	OutErrorMessage
	) const

Returns true if the given new text is a valid option to rename the subobject with the given handle. Populates the OutErrorMessage if it is not valid.

**Parameters**

Handle
FSubobjectDataHandle

Handle to the subobject that is being checked

InNewText
FText

The new name that is desired

OutErrorMessage
FText&

The reasoning for an invalid name

**Returns**

True if the rename is valid

DeleteSubobjectFromInstance
int DeleteSubobjectFromInstance(
FSubobjectDataHandle 	ContextHandle,
FSubobjectDataHandle 	SubobjectToDelete
	)

Attempts to delete the given subobject from its context

**Parameters**

ContextHandle
FSubobjectDataHandle

The owning context of the subobjects that should be removed

SubobjectToDelete
FSubobjectDataHandle

The subobject handles that should be deleted

**Returns**

The number of subobjects successfully deleted

AddNewSubobject
FSubobjectDataHandle AddNewSubobject(
FAddNewSubobjectParams 	Params,
FText& 	FailReason
	)

Add a new subobject as a child to the given parent object

**Parameters**

Params
FAddNewSubobjectParams

Options to consider when adding this subobject

**Returns**

FSubobjectDataHandle  Handle to the newly created subobject, Invalid handle if creation failed

FindSubobjectDataFromHandle
bool FindSubobjectDataFromHandle(
FSubobjectDataHandle 	Handle,
FSubobjectData& 	OutData
	) const

Attempt to find the subobject data for a given handle. OutData will only be valid if the function returns true.

**Parameters**

Handle
FSubobjectDataHandle

Handle of the subobject data you want to acquire

OutData
FSubobjectData&

Reference to the subobject data to populate

**Returns**

bool  true if the data was found

GatherSubobjectDataForBlueprint
void GatherSubobjectDataForBlueprint(
UBlueprint 	Context,
TArray<FSubobjectDataHandle>& 	OutArray
	)

Gather all subobjects that the given Blueprint context has. Populates an array of handles that will have the given context and all it's subobjects.

**Parameters**

Context
UBlueprint

Object to gather subobjects for

OutArray
TArray<FSubobjectDataHandle>&

Array to populate (will be emptied first)

GatherSubobjectDataForInstance
void GatherSubobjectDataForInstance(
AActor 	Context,
TArray<FSubobjectDataHandle>& 	OutArray
	)

Gather all subobjects that the given actor instance has. Populates an array of handles that will have the given context and all it's subobjects.

**Parameters**

Context
AActor

Object to gather subobjects for

OutArray
TArray<FSubobjectDataHandle>&

Array to populate (will be emptied first)

MakeNewSceneRoot
bool MakeNewSceneRoot(
FSubobjectDataHandle 	Context,
FSubobjectDataHandle 	NewSceneRoot,
UBlueprint 	BPContext
	)
RenameSubobject
bool RenameSubobject(
FSubobjectDataHandle 	Handle,
FText 	InNewName
	)

Attempts to rename the given subobject to the new name.

**Parameters**

Handle
FSubobjectDataHandle

Handle to the subobject to rename

InNewName
FText

The new name that is desired for the given subobject

**Returns**

True if the rename was successful, false otherwise.

ReparentSubobject
bool ReparentSubobject(
FReparentSubobjectParams 	Params,
FSubobjectDataHandle 	ToReparentHandle
	)

Attempts to reparent the given subobject to the new parent

**Parameters**

ToReparentHandle
FSubobjectDataHandle

The handle of the subobject that will get moved

**Returns**

True if the reparent was successful, false otherwise.

ReparentSubobjects
bool ReparentSubobjects(
FReparentSubobjectParams 	Params,
TArray<FSubobjectDataHandle> 	HandlesToMove
	)

Attempts to reparent all subobjects in the HandlesToMove array to the new parent handle.

CreateNewBPComponent
static UClass USubobjectDataSubsystem::CreateNewBPComponent(

TSubclassOf<UActorComponent> 	ComponentClass,
FString 	NewClassPath,
FString 	NewClassName

)

Creates a new Blueprint component from the specified class type The user will be prompted to pick a new subclass name and a blueprint asset will be created

**Returns**

The new class that was created

CreateNewCPPComponent
static UClass USubobjectDataSubsystem::CreateNewCPPComponent(

TSubclassOf<UActorComponent> 	ComponentClass,
FString 	NewClassPath,
FString 	NewClassName

)

Creates a new C++ component from the specified class type The user will be prompted to pick a new subclass name and code will be recompiled

**Returns**

The new class that was created

RenameSubobjectMemberVariable
static void USubobjectDataSubsystem::RenameSubobjectMemberVariable(

	UBlueprint 	BPContext,
	FSubobjectDataHandle 	InHandle,
const 	FName 	NewName

)
STATIC FUNCTIONS
Get
static USubobjectDataSubsystem USubobjectDataSubsystem::Get()
StaticClass
static UClass USubobjectDataSubsystem::StaticClass()
