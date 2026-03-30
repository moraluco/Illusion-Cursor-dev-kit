# UActorGroupingUtils

**Visibility:** public

## Inheritance

UObject → UActorGroupingUtils

## Description

Helper class for grouping actors in the level editor

EDITOR SCRIPTING | ACTOR GROUPING UngroupSelected void UngroupSelected()

Disbands any groups in the current selection, does not attempt to maintain any hierarchy

GroupActors AGroupActor GroupActors( TArray<AActor> 	ActorsToGroup 	)

Creates a new group from the provided list of actors removing the actors from any existing groups they are already in

GroupSelected AGroupActor GroupSelected()

Creates a new group from the current selection removing the actors from any existing groups they are already in

LockSelectedGroups void LockSelectedGroups()

Locks any groups in the current selection

RemoveSelectedFromGroup void RemoveSelectedFromGroup()

Removes any groups or actors in the current selection from their immediate parent.  If all actors/subgroups are removed, the parent group will be destroyed.

UngroupActors void UngroupActors( TArray<AActor> 	ActorsToUngroup 	)

Disbands any groups that the provided actors belong to, does not attempt to maintain any hierarchy

AddSelectedToGroup void AddSelectedToGroup()

Activates "Add to Group" mode which allows the user to select a group to append current selection

UnlockSelectedGroups void UnlockSelectedGroups()

Unlocks any groups in the current selection

Get static UActorGroupingUtils UActorGroupingUtils::Get()

Convenience method for accessing grouping utils in a blueprint or script

IsGroupingActive static bool UActorGroupingUtils::IsGroupingActive() SetGroupingActive static void UActorGroupingUtils::SetGroupingActive( bool 	bInGroupingActive 	) STATIC FUNCTIONS StaticClass static UClass UActorGroupingUtils::StaticClass()
