# UDataLayerEditorSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → UDataLayerEditorSubsystem → DATALAYERS → RemoveActorsFromAllDataLayers

## Description

bool RemoveActorsFromAllDataLayers( TArray<AActor> 	Actors 	)

Removes an actor from all DataLayers.

Returns

true if any actor was changed.

AddActorsToDataLayers bool AddActorsToDataLayers( TArray<AActor> 	Actors, TArray<UDataLayer> 	DataLayers 	)

Add the actors to the DataLayers

Parameters Actors TArray<AActor>

The actors to add to the DataLayers

DataLayers TArray<UDataLayer>

A valid list of DataLayers.

Returns

true if at least one actor was added to at least one DataLayer.  false is returned if all the actors already belonged to all specified DataLayers.

AddActorToDataLayer bool AddActorToDataLayer( AActor 	Actor, UDataLayer 	DataLayer 	)

Adds the actor to the DataLayer.

Parameters Actor AActor

The actor to add to the DataLayer

DataLayer UDataLayer

The DataLayer to add the actor to

Returns

true if the actor was added.  false is returned if the actor already belongs to the DataLayer.

AddActorToDataLayers bool AddActorToDataLayers( AActor 	Actor, TArray<UDataLayer> 	DataLayers 	)

Adds the provided actor to the DataLayers.

Parameters Actor AActor

The actor to add to the provided DataLayers

DataLayers TArray<UDataLayer>

A valid list of DataLayers.

Returns

true if the actor was added to at least one of the provided DataLayers.

AddSelectedActorsToDataLayer bool AddSelectedActorsToDataLayer( UDataLayer 	DataLayer 	)

Adds selected actors to the DataLayer.

Parameters DataLayer UDataLayer

A DataLayer.

Returns

true if at least one actor was added.  false is returned if all selected actors already belong to the DataLayer.

AddSelectedActorsToDataLayers bool AddSelectedActorsToDataLayers( TArray<UDataLayer> 	DataLayers 	)

Adds selected actors to the DataLayers.

Parameters DataLayers TArray<UDataLayer>

A valid list of DataLayers.

Returns

true if at least one actor was added.  false is returned if all selected actors already belong to the DataLayers.

AppendActorsFromDataLayer void AppendActorsFromDataLayer( UDataLayer 	DataLayer, TArray<AActor>& 	InOutActors 	) const

Appends all the actors associated with the specified DataLayer.

Parameters DataLayer UDataLayer

The DataLayer to find actors for.

InOutActors TArray<AActor>&

The list to append the found actors to.

AppendActorsFromDataLayers void AppendActorsFromDataLayers( TArray<UDataLayer> 	DataLayers, TArray<AActor>& 	InOutActors 	) const

Appends all the actors associated with ANY of the specified DataLayers.

Parameters DataLayers TArray<UDataLayer>

The DataLayers to find actors for.

InOutActors TArray<AActor>&

The list to append the found actors to.

CreateDataLayer UDataLayer CreateDataLayer()

Creates a UDataLayer Object

Returns

The newly created UDataLayer Object

DeleteDataLayer void DeleteDataLayer( UDataLayer 	DataLayerToDelete 	)

Deletes the provided DataLayer

Parameters DataLayerToDelete UDataLayer

A valid DataLayer

DeleteDataLayers void DeleteDataLayers( TArray<UDataLayer> 	DataLayersToDelete 	)

Deletes all of the provided DataLayers

Parameters DataLayersToDelete TArray<UDataLayer>

A valid list of DataLayer.

GetActorsFromDataLayer TArray<AActor> GetActorsFromDataLayer( UDataLayer 	DataLayer 	) const

Gets all the actors associated with the specified DataLayer. Analog to AppendActorsFromDataLayer but it returns rather than appends the actors.

Parameters DataLayer UDataLayer

The DataLayer to find actors for.

Returns

The list to assign the found actors to.

GetActorsFromDataLayers TArray<AActor> GetActorsFromDataLayers( TArray<UDataLayer> 	DataLayers 	) const

Gets all the actors associated with ANY of the specified DataLayers. Analog to AppendActorsFromDataLayers but it returns rather than appends the actors.

Parameters DataLayers TArray<UDataLayer>

The DataLayers to find actors for.

Returns

The list to assign the found actors to.

GetDataLayer UDataLayer GetDataLayer( FActorDataLayer 	ActorDataLayer 	) const

Gets the UDataLayer Object of the ActorDataLayer

Parameters ActorDataLayer FActorDataLayer

The ActorDataLayer whose UDataLayer Object is returned

Returns

The UDataLayer Object of the provided ActorDataLayer

GetDataLayerFromLabel UDataLayer GetDataLayerFromLabel( FName 	DataLayerLabel 	) const

Gets the UDataLayer Object of the DataLayer label

Parameters DataLayerLabel FName

The label of the DataLayer whose UDataLayer Object is returned

Returns

The UDataLayer Object of the provided DataLayer label

IsActorValidForDataLayer bool IsActorValidForDataLayer( AActor 	Actor 	)

Checks to see if the specified actor is in an appropriate state to interact with DataLayers

Parameters Actor AActor

The actor to validate

MakeAllDataLayersVisible void MakeAllDataLayersVisible()

Set the visibility of all DataLayers to true

RemoveActorFromAllDataLayers bool RemoveActorFromAllDataLayers( AActor 	Actor 	)

Removes an actor from all DataLayers.

Parameters Actor AActor

The actor to modify

Returns

true if the actor was changed.

RemoveActorFromDataLayer bool RemoveActorFromDataLayer( AActor 	Actor, UDataLayer 	DataLayerToRemove 	)

Removes an actor from the specified DataLayer.

Parameters Actor AActor

The actor to remove from the provided DataLayer

DataLayerToRemove UDataLayer

The DataLayer to remove the actor from

Returns

true if the actor was removed from the DataLayer.  false is returned if the actor already belonged to the DataLayer.

RemoveActorFromDataLayers bool RemoveActorFromDataLayers( AActor 	Actor, TArray<UDataLayer> 	DataLayers 	)

Removes the provided actor from the DataLayers.

Parameters Actor AActor

The actor to remove from the provided DataLayers

DataLayers TArray<UDataLayer>

A valid list of DataLayers.

Returns

true if the actor was removed from at least one of the provided DataLayers.

AddActorsToDataLayer bool AddActorsToDataLayer( TArray<AActor> 	Actors, UDataLayer 	DataLayer 	)

Add the actors to the DataLayer

Parameters Actors TArray<AActor>

The actors to add to the DataLayer

DataLayer UDataLayer

The DataLayer to add to

Returns

true if at least one actor was added to the DataLayer.  false is returned if all the actors already belonged to the DataLayer.

RemoveActorsFromDataLayer bool RemoveActorsFromDataLayer( TArray<AActor> 	Actors, UDataLayer 	DataLayer 	)

Removes the actors from the specified DataLayer.

Parameters Actors TArray<AActor>

The actors to remove from the provided DataLayer

Returns

true if at least one actor was removed from the DataLayer.  false is returned if all the actors already belonged to the DataLayer.

RemoveActorsFromDataLayers bool RemoveActorsFromDataLayers( TArray<AActor> 	Actors, TArray<UDataLayer> 	DataLayers 	)

Remove the actors to the DataLayers

Parameters Actors TArray<AActor>

The actors to remove to the DataLayers

DataLayers TArray<UDataLayer>

A valid list of DataLayers.

Returns

true if at least one actor was removed from at least one DataLayer.  false is returned if none of the actors belonged to any of the specified DataLayers.

RemoveSelectedActorsFromDataLayer bool RemoveSelectedActorsFromDataLayer( UDataLayer 	DataLayer 	)

Removes the selected actors from the DataLayer.

Parameters DataLayer UDataLayer

A DataLayer.

Returns

true if at least one actor was added.  false is returned if all selected actors already belong to the DataLayer.

RemoveSelectedActorsFromDataLayers bool RemoveSelectedActorsFromDataLayers( TArray<UDataLayer> 	DataLayers 	)

Removes selected actors from the DataLayers.

Parameters DataLayers TArray<UDataLayer>

A valid list of DataLayers.

Returns

true if at least one actor was removed.

RenameDataLayer bool RenameDataLayer( UDataLayer 	DataLayer, FName 	NewDataLayerLabel 	)

Renames the provided DataLayer to the provided new label

Parameters DataLayer UDataLayer

The DataLayer to be renamed

NewDataLayerLabel FName

The new label for the DataLayer to be renamed

SelectActorsInDataLayer bool SelectActorsInDataLayer( UDataLayer 	DataLayer, bool 	bSelect, bool 	bNotify, bool 	bSelectEvenIfHidden	 = 	false 	)

Selects/de-selects actors belonging to the DataLayer.

Parameters DataLayer UDataLayer

A valid DataLayer.

bSelect bool

If true actors are selected; if false, actors are deselected.

bNotify bool

If true the Editor is notified of the selection change; if false, the Editor will not be notified.

bSelectEvenIfHidden bool

[optional]  If true even hidden actors will be selected; if false, hidden actors won't be selected.

Returns

true if at least one actor was selected/deselected.

SelectActorsInDataLayers bool SelectActorsInDataLayers( TArray<UDataLayer> 	DataLayers, bool 	bSelect, bool 	bNotify, bool 	bSelectEvenIfHidden	 = 	false 	)

Selects/de-selects actors belonging to the DataLayers.

Parameters DataLayers TArray<UDataLayer>

A valid list of DataLayers.

bSelect bool

If true actors are selected; if false, actors are deselected.

bNotify bool

If true the Editor is notified of the selection change; if false, the Editor will not be notified

bSelectEvenIfHidden bool

[optional]  If true even hidden actors will be selected; if false, hidden actors won't be selected.

Returns

true if at least one actor was selected/deselected.

SetDataLayerIsLoadedInEditor bool SetDataLayerIsLoadedInEditor( UDataLayer 	DataLayer, bool 	bIsLoadedInEditor, bool 	bIsFromUserChange 	)

Changes the DataLayer's IsLoadedInEditor flag to the provided state

Parameters DataLayer UDataLayer

The DataLayer to affect.

bIsLoadedInEditor bool

The new value of the flag IsLoadedInEditor. If True, the Editor loading will consider this DataLayer to load or not an Actor part of this DataLayer. An Actor will not be loaded in the Editor if all its DataLayers are not LoadedInEditor.

bIsFromUserChange bool

If this change originates from a user change or not.

SetDataLayersIsLoadedInEditor bool SetDataLayersIsLoadedInEditor( TArray<UDataLayer> 	DataLayers, bool 	bIsLoadedInEditor, bool 	bIsFromUserChange 	)

Changes the IsLoadedInEditor flag of the DataLayers to the provided state

Parameters DataLayers TArray<UDataLayer>

The DataLayers to affect

bIsLoadedInEditor bool

The new value of the flag IsLoadedInEditor. If True, the Editor loading will consider this DataLayer to load or not an Actor part of this DataLayer. An Actor will not be loaded in the Editor if all its DataLayers are not LoadedInEditor.

bIsFromUserChange bool

If this change originates from a user change or not.

SetDataLayersVisibility void SetDataLayersVisibility( TArray<UDataLayer> 	DataLayers, bool 	bIsVisible 	)

Changes visibility of the DataLayers to the provided state

Parameters DataLayers TArray<UDataLayer>

The DataLayers to affect

bIsVisible bool

If true the DataLayers will be visible; if false, the DataLayers will not be visible

SetDataLayerVisibility void SetDataLayerVisibility( UDataLayer 	DataLayer, bool 	bIsVisible 	)

Changes the DataLayer's visibility to the provided state

Parameters DataLayer UDataLayer

The DataLayer to affect.

bIsVisible bool

If true the DataLayer will be visible; if false, the DataLayer will not be visible.

SetParentDataLayer bool SetParentDataLayer( UDataLayer 	DataLayer, UDataLayer 	ParentDataLayer 	)

Sets a Parent DataLayer for a specified DataLayer

Parameters DataLayer UDataLayer

The child DataLayer.

ParentDataLayer UDataLayer

The parent DataLayer.

Returns

true if succeeded, false if failed.

ToggleDataLayerIsLoadedInEditor bool ToggleDataLayerIsLoadedInEditor( UDataLayer 	DataLayer, bool 	bIsFromUserChange 	)

Toggles the DataLayer's IsLoadedInEditor flag

Parameters DataLayer UDataLayer

The DataLayer to affect

bIsFromUserChange bool

If this change originates from a user change or not.

ToggleDataLayersIsLoadedInEditor bool ToggleDataLayersIsLoadedInEditor( TArray<UDataLayer> 	DataLayers, bool 	bIsFromUserChange 	)

Toggles the IsLoadedInEditor flag of all of the DataLayers

Parameters DataLayers TArray<UDataLayer>

The DataLayers to affect

bIsFromUserChange bool

If this change originates from a user change or not.

ToggleDataLayersVisibility void ToggleDataLayersVisibility( TArray<UDataLayer> 	DataLayers 	)

Toggles the visibility of all of the DataLayers

Parameters DataLayers TArray<UDataLayer>

The DataLayers to affect

ToggleDataLayerVisibility void ToggleDataLayerVisibility( UDataLayer 	DataLayer 	)

Toggles the DataLayer's visibility

Parameters DataLayer UDataLayer

The DataLayer to affect

UpdateActorVisibility bool UpdateActorVisibility( AActor 	Actor, bool& 	bOutSelectionChanged, bool& 	bOutActorModified, bool 	bNotifySelectionChange, bool 	bRedrawViewports 	)

Updates the provided actors visibility in the viewports

Parameters Actor AActor

Actor to update

bOutSelectionChanged bool&

[OUT]  Whether the Editors selection changed

bOutActorModified bool&

[OUT]  Whether the actor was modified

bNotifySelectionChange bool

If true the Editor is notified of the selection change; if false, the Editor will not be notified

bRedrawViewports bool

If true the viewports will be redrawn; if false, they will not

UpdateAllActorsVisibility bool UpdateAllActorsVisibility( bool 	bNotifySelectionChange, bool 	bRedrawViewports 	)

Updates the visibility of all actors in the viewports

Parameters bNotifySelectionChange bool

If true the Editor is notified of the selection change; if false, the Editor will not be notified

bRedrawViewports bool

If true the viewports will be redrawn; if false, they will not

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UDataLayerEditorSubsystem UDataLayerEditorSubsystem::Get()
```

StaticClass

### static UClass UDataLayerEditorSubsystem::StaticClass

```
static UClass UDataLayerEditorSubsystem::StaticClass()
```
