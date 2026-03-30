# ULayersSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → ULayersSubsystem → LAYERS → World

## Description

const UWorld World

Get the current UWorld object.

SelectedActors const TArray<AActor> SelectedActors

Find and return the selected actors.

## LAYERS

### IsActorValidForLayer

```
bool IsActorValidForLayer(AActor Actor)
```

Checks to see if the specified actor is in an appropriate state to interact with layers

**Parameters**

Actor
AActor

The actor to validate

AddActorsToLayers
bool AddActorsToLayers(
TArray<AActor> 	Actors,
TArray<FName> 	LayerNames
	)

Add the actors to the named layers

**Parameters**

Actors
TArray<AActor>

The actors to add to the named layers

LayerNames
TArray<FName>

A valid list of layer names.

**Returns**

true if at least one actor was added to at least one layer.  false is returned if all the actors already belonged to all specified layers.

AddActorToLayer
bool AddActorToLayer(
AActor 	Actor,
FName 	LayerName
	)

Adds the actor to the named layer.

**Parameters**

Actor
AActor

The actor to add to the named layer

LayerName
FName

The name of the layer to add the actor to

**Returns**

true if the actor was added.  false is returned if the actor already belongs to the layer.

AddActorToLayers
bool AddActorToLayers(
AActor 	Actor,
TArray<FName> 	LayerNames
	)

Adds the provided actor to the named layers.

**Parameters**

Actor
AActor

The actor to add to the provided layers

LayerNames
TArray<FName>

A valid list of layer names.

**Returns**

true if the actor was added to at least one of the provided layers.

AddAllLayerNamesTo
void AddAllLayerNamesTo(
TArray<FName>& 	OutLayerNames
	) const

Gets all known layers and appends their names to the provide array

AddAllLayersTo
void AddAllLayersTo(
TArray<ULayer>& 	OutLayers
	) const

Gets all known layers and appends them to the provided array

AddLevelLayerInformation
void AddLevelLayerInformation(
ULevel 	Level
	)

Aggregates any information regarding layers associated with the level and it contents

**Parameters**

Level
ULevel

The process

AddSelectedActorsToLayer
bool AddSelectedActorsToLayer(
FName 	LayerName
	)

Adds selected actors to the named layer.

**Parameters**

LayerName
FName

A layer name.

**Returns**

true if at least one actor was added.  false is returned if all selected actors already belong to the named layer.

AddSelectedActorsToLayers
bool AddSelectedActorsToLayers(
TArray<FName> 	LayerNames
	)

Adds selected actors to the named layers.

**Parameters**

LayerNames
TArray<FName>

A valid list of layer names.

**Returns**

true if at least one actor was added.  false is returned if all selected actors already belong to the named layers.

AppendActorsFromLayer
void AppendActorsFromLayer(
FName 	LayerName,
TArray<AActor>& 	InOutActors
	) const

Appends all the actors associated with the specified layer.

**Parameters**

LayerName
FName

The layer to find actors for.

InOutActors
TArray<AActor>&

The list to append the found actors to.

AppendActorsFromLayers
void AppendActorsFromLayers(
TArray<FName> 	LayerNames,
TArray<AActor>& 	InOutActors
	) const

Appends all the actors associated with ANY of the specified layers.

**Parameters**

LayerNames
TArray<FName>

The layers to find actors for.

InOutActors
TArray<AActor>&

The list to append the found actors to.

CreateLayer
ULayer CreateLayer(
FName 	LayerName
	)

Creates a ULayer Object for the named layer

**Parameters**

LayerName
FName

The name of the layer to create

**Returns**

The newly created ULayer Object for the named layer

DeleteLayer
void DeleteLayer(
FName 	LayerToDelete
	)

Deletes the provided layer, disassociating all actors from them

**Parameters**

LayerToDelete
FName

A valid layer name

DeleteLayers
void DeleteLayers(
TArray<FName> 	LayersToDelete
	)

Deletes all of the provided layers, disassociating all actors from them

**Parameters**

LayersToDelete
TArray<FName>

A valid list of layer names.

DisassociateActorFromLayers
bool DisassociateActorFromLayers(
AActor 	Actor
	)

Disassociates an Actor's layers from the layer system, general used before deleting the Actor

**Parameters**

Actor
AActor

The actor to disassociate from the layer system

DisassociateActorsFromLayers
bool DisassociateActorsFromLayers(
TArray<AActor> 	Actors
	)

Disassociates actors from the layer system, generally used before deleting the Actors

**Parameters**

Actors
TArray<AActor>

The actors to disassociate from the layer system

EditorMapChange
void EditorMapChange()

Delegate handler for FEditorDelegates::MapChange. It internally calls LayersChanged.Broadcast.

EditorRefreshLayerBrowser
void EditorRefreshLayerBrowser()

Delegate handler for FEditorDelegates::RefreshLayerBrowser. It internally calls UpdateAllActorsVisibility to refresh the actors of each layer.

GetActorsFromLayer
TArray<AActor> GetActorsFromLayer(
FName 	LayerName
	) const

Gets all the actors associated with the specified layer. Analog to AppendActorsFromLayer but it returns rather than appends the actors.

**Parameters**

LayerName
FName

The layer to find actors for.

**Returns**

The list to assign the found actors to.

GetActorsFromLayers
TArray<AActor> GetActorsFromLayers(
TArray<FName> 	LayerNames
	) const

Gets all the actors associated with ANY of the specified layers. Analog to AppendActorsFromLayers but it returns rather than appends the actors.

**Parameters**

LayerNames
TArray<FName>

The layers to find actors for.

**Returns**

The list to assign the found actors to.

GetLayer
ULayer GetLayer(
FName 	LayerName
	) const

Gets the ULayer Object of the named layer

**Parameters**

LayerName
FName

The name of the layer whose ULayer Object is returned

**Returns**

The ULayer Object of the provided layer name

GetSelectedActors
TArray<AActor> GetSelectedActors() const

Find and return the selected actors.

**Returns**

The selected AActor's as a TArray.

GetWorld
UWorld GetWorld() const

Get the current UWorld object.

**Returns**

The UWorld* object

InitializeNewActorLayers
bool InitializeNewActorLayers(
AActor 	Actor
	)

Synchronizes an newly created Actor's layers with the layer system

**Parameters**

Actor
AActor

The actor to initialize

AddActorsToLayer
bool AddActorsToLayer(
TArray<AActor> 	Actors,
FName 	LayerName
	)

Add the actors to the named layer

**Parameters**

Actors
TArray<AActor>

The actors to add to the named layer

LayerName
FName

The name of the layer to add to

**Returns**

true if at least one actor was added to the layer.  false is returned if all the actors already belonged to the layer.

IsLayer
bool IsLayer(
FName 	LayerName
	)

Checks whether the ULayer Object of the provided layer name exists.

**Parameters**

LayerName
FName

The name of the layer whose ULayer Object to retrieve

**Returns**

If true a valid ULayer Object was found; if false, a valid ULayer object was not found

MakeAllLayersVisible
void MakeAllLayersVisible()

Set the visibility of all layers to true

RemoveActorFromLayer
bool RemoveActorFromLayer(
AActor 	Actor,
FName 	LayerToRemove,
bool 	bUpdateStats	 = 	true
	)

Removes an actor from the specified layer.

**Parameters**

Actor
AActor

The actor to remove from the provided layer

LayerToRemove
FName

The name of the layer to remove the actor from

**Returns**

true if the actor was removed from the layer.  false is returned if the actor already belonged to the layer.

RemoveActorFromLayers
bool RemoveActorFromLayers(
AActor 	Actor,
TArray<FName> 	LayerNames,
bool 	bUpdateStats	 = 	true
	)

Removes the provided actor from the named layers.

**Parameters**

Actor
AActor

The actor to remove from the provided layers

LayerNames
TArray<FName>

A valid list of layer names.

**Returns**

true if the actor was removed from at least one of the provided layers.

RemoveActorsFromLayer
bool RemoveActorsFromLayer(
TArray<AActor> 	Actors,
FName 	LayerName,
bool 	bUpdateStats	 = 	true
	)

Removes the actors from the specified layer.

**Parameters**

Actors
TArray<AActor>

The actors to remove from the provided layer

**Returns**

true if at least one actor was removed from the layer.  false is returned if all the actors already belonged to the layer.

RemoveActorsFromLayers
bool RemoveActorsFromLayers(
TArray<AActor> 	Actors,
TArray<FName> 	LayerNames,
bool 	bUpdateStats	 = 	true
	)

Remove the actors to the named layers

**Parameters**

Actors
TArray<AActor>

The actors to remove to the named layers

LayerNames
TArray<FName>

A valid list of layer names.

**Returns**

true if at least one actor was removed from at least one layer.  false is returned if none of the actors belonged to any of the specified layers.

RemoveLevelLayerInformation
void RemoveLevelLayerInformation(
ULevel 	Level
	)

Purges any information regarding layers associated with the level and it contents

**Parameters**

Level
ULevel

The process

RemoveSelectedActorsFromLayer
bool RemoveSelectedActorsFromLayer(
FName 	LayerName
	)

Removes the selected actors from the named layer.

**Parameters**

LayerName
FName

A layer name.

**Returns**

true if at least one actor was added.  false is returned if all selected actors already belong to the named layer.

RemoveSelectedActorsFromLayers
bool RemoveSelectedActorsFromLayers(
TArray<FName> 	LayerNames
	)

Removes selected actors from the named layers.

**Parameters**

LayerNames
TArray<FName>

A valid list of layer names.

**Returns**

true if at least one actor was removed.

RenameLayer
bool RenameLayer(
FName 	OriginalLayerName,
FName 	NewLayerName
	)

Renames the provided originally named layer to the provided new name

**Parameters**

OriginalLayerName
FName

The name of the layer to be renamed

NewLayerName
FName

The new name for the layer to be renamed

SelectActorsInLayer
bool SelectActorsInLayer(
FName 	LayerName,
bool 	bSelect,
bool 	bNotify,
bool 	bSelectEvenIfHidden	 = 	false
	)

Selects/de-selects actors belonging to the named layer.

**Parameters**

LayerName
FName

A valid layer name.

bSelect
bool

If true actors are selected; if false, actors are deselected.

bNotify
bool

If true the Editor is notified of the selection change; if false, the Editor will not be notified.

bSelectEvenIfHidden
bool

[optional]  If true even hidden actors will be selected; if false, hidden actors won't be selected.

**Returns**

true if at least one actor was selected/deselected.

SelectActorsInLayers
bool SelectActorsInLayers(
TArray<FName> 	LayerNames,
bool 	bSelect,
bool 	bNotify,
bool 	bSelectEvenIfHidden	 = 	false
	)

Selects/de-selects actors belonging to the named layers.

**Parameters**

LayerNames
TArray<FName>

A valid list of layer names.

bSelect
bool

If true actors are selected; if false, actors are deselected.

bNotify
bool

If true the Editor is notified of the selection change; if false, the Editor will not be notified

bSelectEvenIfHidden
bool

[optional]  If true even hidden actors will be selected; if false, hidden actors won't be selected.

**Returns**

true if at least one actor was selected/deselected.

SetLayersVisibility
void SetLayersVisibility(
TArray<FName> 	LayerNames,
bool 	bIsVisible
	)

Changes visibility of the named layers to the provided state

**Parameters**

LayerNames
TArray<FName>

The names of the layers to affect

bIsVisible
bool

If true the layers will be visible; if false, the layers will not be visible

SetLayerVisibility
void SetLayerVisibility(
FName 	LayerName,
bool 	bIsVisible
	)

Changes the named layer's visibility to the provided state

**Parameters**

LayerName
FName

The name of the layer to affect.

bIsVisible
bool

If true the layer will be visible; if false, the layer will not be visible.

ToggleLayersVisibility
void ToggleLayersVisibility(
TArray<FName> 	LayerNames
	)

Toggles the visibility of all of the named layers

**Parameters**

LayerNames
TArray<FName>

The names of the layers to affect

ToggleLayerVisibility
void ToggleLayerVisibility(
FName 	LayerName
	)

Toggles the named layer's visibility

**Parameters**

LayerName
FName

The name of the layer to affect

TryGetLayer
bool TryGetLayer(
FName 	LayerName,
ULayer& 	OutLayer
	)

Attempts to get the ULayer Object of the provided layer name.

**Parameters**

LayerName
FName

The name of the layer whose ULayer Object to retrieve

**Returns**

If true a valid ULayer Object was found and set to OutLayer; if false, a valid ULayer object was not found and invalid set to OutLayer

UpdateActorAllViewsVisibility
void UpdateActorAllViewsVisibility(
AActor 	Actor
	)

Updates per-view visibility for the given actor for all views

**Parameters**

Actor
AActor

Actor to update

UpdateActorVisibility
bool UpdateActorVisibility(
AActor 	Actor,
bool& 	bOutSelectionChanged,
bool& 	bOutActorModified,
bool 	bNotifySelectionChange,
bool 	bRedrawViewports
	)

Updates the provided actors visibility in the viewports

**Parameters**

Actor
AActor

Actor to update

bOutSelectionChanged
bool&

[OUT]  Whether the Editors selection changed

bOutActorModified
bool&

[OUT]  Whether the actor was modified

bNotifySelectionChange
bool

If true the Editor is notified of the selection change; if false, the Editor will not be notified

bRedrawViewports
bool

If true the viewports will be redrawn; if false, they will not

UpdateAllActorsVisibility
bool UpdateAllActorsVisibility(
bool 	bNotifySelectionChange,
bool 	bRedrawViewports
	)

Updates the visibility of all actors in the viewports

**Parameters**

bNotifySelectionChange
bool

If true the Editor is notified of the selection change; if false, the Editor will not be notified

bRedrawViewports
bool

If true the viewports will be redrawn; if false, they will not

UpdateAllViewVisibility
void UpdateAllViewVisibility(
FName 	LayerThatChanged
	)

Updates the visibility for all actors for all views.

**Parameters**

LayerThatChanged
FName

If one layer was changed (toggled in view pop-up, etc), then we only need to modify actors that use that layer.

STATIC FUNCTIONS
Get
static ULayersSubsystem ULayersSubsystem::Get()
StaticClass
static UClass ULayersSubsystem::StaticClass()
