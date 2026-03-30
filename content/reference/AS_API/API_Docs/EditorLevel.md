# EditorLevel

## Inheritance

EditorLevel

## Description

EDITOR SCRIPTING | LEVEL UTILITY GetPIEWorlds static TArray<UWorld> EditorLevel::GetPIEWorlds( bool 	bIncludeDedicatedServer 	) ReplaceSelectedActors static void EditorLevel::ReplaceSelectedActors( FString 	InAssetPath 	)

Replaces the selected Actors with the same number of a different kind of Actor using the specified factory to spawn the new Actors note that only Location, Rotation, Drawscale, Drawscale3D, Tag, and Group are copied from the old Actors

SpawnActorFromClass static AActor EditorLevel::SpawnActorFromClass( TSubclassOf<AActor> 	ActorClass, FVector 	Location, FRotator 	Rotation	 = 	FRotator ( ), bool 	bTransient	 = 	false 	) SpawnActorFromObject static AActor EditorLevel::SpawnActorFromObject( UObject 	ObjectToUse, FVector 	Location, FRotator 	Rotation	 = 	FRotator ( ), bool 	bTransient	 = 	false 	) EditorEndPlay static void EditorLevel::EditorEndPlay()
