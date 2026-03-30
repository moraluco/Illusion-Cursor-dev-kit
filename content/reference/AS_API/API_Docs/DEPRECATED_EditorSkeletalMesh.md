# DEPRECATED_EditorSkeletalMesh

## Inheritance

DEPRECATED_EditorSkeletalMesh

## Description

EDITOR SCRIPTING | SKELETALMESH RemoveLODs static bool DEPRECATED_EditorSkeletalMesh::RemoveLODs( USkeletalMesh 	SkeletalMesh, TArray<int> 	ToRemoveLODs 	)

Remove all the specified LODs. This function will remove all the valid LODs in the list.  Valid LOD is any LOD greater then 0 that exist in the skeletalmesh. We cannot remove the base LOD 0.

Parameters SkeletalMesh USkeletalMesh

The mesh inside which we are renaming a socket

ToRemoveLODs TArray<int>

The LODs we need to remove

Returns

true if the successfully remove all the LODs. False otherwise, but evedn if it return false it will have removed all valid LODs.

StripLODGeometry static bool DEPRECATED_EditorSkeletalMesh::StripLODGeometry( USkeletalMesh 	SkeletalMesh, int 	LODIndex, UTexture2D 	TextureMask, float32 	Threshold 	)

This function will strip all triangle in the specified LOD that don't have any UV area pointing on a black pixel in the TextureMask.  We use the UVChannel 0 to find the pixels in the texture.

CreatePhysicsAsset static UPhysicsAsset DEPRECATED_EditorSkeletalMesh::CreatePhysicsAsset( USkeletalMesh 	SkeletalMesh 	)

This function creates a PhysicsAsset for the given SkeletalMesh with the same settings as if it were created through FBX import
